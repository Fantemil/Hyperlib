-- Services
local RunService = game:GetService("RunService");
local PlayersService = game:GetService("Players");

-- Variables
local Camera = workspace.CurrentCamera;
local Lines = {};
local Quads = {};

-- Functions
local function HasCharacter(Player)
    return Player.Character and Player.Character:FindFirstChild("HumanoidRootPart");
end;

local function GetPlayerColor(Player)
    local Character = Player.Character
    local Backpack = Player:FindFirstChild("Backpack")
    
    if (Backpack and Backpack:FindFirstChild("Knife")) or (Character and Character:FindFirstChild("Knife")) then
        return Color3.fromRGB(255, 0, 0)  -- Red for players with a Knife
    elseif (Backpack and Backpack:FindFirstChild("Gun")) or (Character and Character:FindFirstChild("Gun")) then
        return Color3.fromRGB(0, 0, 255)  -- Blue for players with a Gun
    else
        return Color3.fromRGB(0, 255, 0)  -- Green for all other players
    end
end

local function DrawLine(From, To, color)
    local FromScreen, FromVisible = Camera:WorldToViewportPoint(From);
    local ToScreen, ToVisible = Camera:WorldToViewportPoint(To);

    if (not FromVisible and not ToVisible) then return; end;

    local FromPos = Vector2.new(FromScreen.X, FromScreen.Y);
    local ToPos = Vector2.new(ToScreen.X, ToScreen.Y);

    local Line = Drawing.new("Line");
        Line.Thickness = 1;
        Line.From = FromPos
        Line.To = ToPos
        Line.Color = color or Color3.fromRGB(255, 255, 255);
        Line.Transparency = 1;
        Line.ZIndex = 1;
        Line.Visible = true;

    table.insert(Lines, Line)
end

local function GetCorners(Part)
    local CF, Size, Corners = Part.CFrame, Part.Size / 2, {};
    for X = -1, 1, 2 do for Y = -1, 1, 2 do for Z = -1, 1, 2 do
        Corners[#Corners+1] = (CF * CFrame.new(Size * Vector3.new(X, Y, Z))).Position;      
    end; end; end;
    return Corners;
end;

local function DrawEsp(Player)
    local HRP = Player.Character.HumanoidRootPart
    local CubeVertices = GetCorners({CFrame = HRP.CFrame * CFrame.new(0, -0.5, 0), Size = Vector3.new(3, 5, 3)})

    -- Get player's color based on their tools
    local playerColor = GetPlayerColor(Player)

    -- Drawing the 3D box using DrawLine function
    local connections = {
        {1, 2}, {2, 6}, {6, 5}, {5, 1}, 
        {1, 3}, {2, 4}, {6, 8}, {5, 7},
        {3, 4}, {4, 8}, {8, 7}, {7, 3}
    }
    
    for _, pair in pairs(connections) do
        DrawLine(CubeVertices[pair[1]], CubeVertices[pair[2]], playerColor)
    end
end;

local function BoxEsp()
    local Players = PlayersService:GetPlayers();

    for i = 1, #Lines do
        local Line = rawget(Lines, i);
        if (Line) then Line:Remove(); end;
    end;

    Lines = {};

    for i = 1, #Players do
        local Player = rawget(Players, i);
        if HasCharacter(Player) then
            DrawEsp(Player);
        end;
    end;
end;

-- Main
RunService.RenderStepped:Connect(BoxEsp);
