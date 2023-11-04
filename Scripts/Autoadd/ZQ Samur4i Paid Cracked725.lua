-- Configuration (you can customize these values)
local setspeed = 55 -- You can change the walkspeed here
local highlightColor = Color3.fromRGB(0, 255, 0) -- Green color
local highlightTransparency = 0.5 -- Highlight transparency
local rotationSpeed = 75 -- Desired rotation speed (in degrees per second)

-- WalkSpeed Spoof Script
local WalkSpeedSpoof = getgenv().WalkSpeedSpoof
local Disable = WalkSpeedSpoof and WalkSpeedSpoof.Disable

if Disable then
    Disable()
end

local cloneref = cloneref or function(...)
    return ...
end

local WalkSpeedSpoof = {}

local Players = cloneref(game:GetService("Players"))

if not Players.LocalPlayer then
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
end

local lp = cloneref(Players.LocalPlayer)

local split = string.split

local GetDebugIdHandler = Instance.new("BindableFunction")
local TempHumanoid = Instance.new("Humanoid")

local cachedhumanoids = {}

local CurrentHumanoid
local newindexhook
local indexhook

function GetDebugIdHandler.OnInvoke(obj: Instance): string
    return obj:GetDebugId()
end

local function GetDebugId(obj: Instance): string
    return GetDebugIdHandler:Invoke(obj)
end

local function GetWalkSpeed(obj: any): number
    TempHumanoid.WalkSpeed = obj
    return TempHumanoid.WalkSpeed
end

function cachedhumanoids:cacheHumanoid(DebugId: string, Humanoid: Humanoid)
    cachedhumanoids[DebugId] = {
        currentindex = indexhook(Humanoid, "WalkSpeed"),
        lastnewindex = nil
    }
    return self[DebugId]
end

indexhook = hookmetamethod(game, "__index", function(self, index)
    if not checkcaller() and typeof(self) == "Instance" then
        if self:IsA("Humanoid") then
            local DebugId = GetDebugId(self)
            local cached = cachedhumanoids[DebugId]

            if self:IsDescendantOf(lp.Character) or cached then
                if type(index) == "string" then
                    local cleanindex = split(index, "\0")[1]

                    if cleanindex == "WalkSpeed" then
                        if not cached then
                            cached = cachedhumanoids:cacheHumanoid(DebugId, self)
                        end

                        if not (CurrentHumanoid and CurrentHumanoid:IsDescendantOf(game)) then
                            CurrentHumanoid = cloneref(self)
                        end

                        return cached.lastnewindex or cached.currentindex
                    end
                end
            end
        end
    end

    return indexhook(self, index)
end)

newindexhook = hookmetamethod(game, "__newindex", function(self, index, newindex)
    if not checkcaller() and typeof(self) == "Instance" then
        if self:IsA("Humanoid") then
            local DebugId = GetDebugId(self)
            local cached = cachedhumanoids[DebugId]

            if self:IsDescendantOf(lp.Character) or cached then
                if type(index) == "string" then
                    local cleanindex = split(index, "\0")[1]

                    if cleanindex == "WalkSpeed" then
                        if not cached then
                            cached = cachedhumanoids:cacheHumanoid(DebugId, self)
                        end

                        if not (CurrentHumanoid and CurrentHumanoid:IsDescendantOf(game)) then
                            CurrentHumanoid = cloneref(self)
                        end
                        cached.lastnewindex = GetWalkSpeed(newindex)
                        return CurrentHumanoid.WalkSpeed
                    end
                end
            end
        end
    end

    return newindexhook(self, index, newindex)
end)

function WalkSpeedSpoof:Disable()
    WalkSpeedSpoof:RestoreWalkSpeed()
    hookmetamethod(game, "__index", indexhook)
    hookmetamethod(game, "__newindex", newindexhook)
    GetDebugIdHandler:Destroy()
    TempHumanoid:Destroy()
    table.clear(WalkSpeedSpoof)
    getgenv().WalkSpeedSpoof = nil
end

function WalkSpeedSpoof:GetHumanoid()
    return CurrentHumanoid or (function()
        local char = lp.Character
        local Humanoid = char and char:FindFirstChildWhichIsA("Humanoid") or nil

        if Humanoid then
            cachedhumanoids:cacheHumanoid(Humanoid:GetDebugId(), Humanoid)
            return cloneref(Humanoid)
        end
    end)()
end

function WalkSpeedSpoof:SetWalkSpeed(speed)
    local Humanoid = WalkSpeedSpoof:GetHumanoid()

    if Humanoid then
        local connections = {}

        local function AddConnectionsFromSignal(Signal)
            for i, v in getconnections(Signal) do
                if v.State then
                    v:Disable()
                    table.insert(connections, v)
                end
            end
        end

        AddConnectionsFromSignal(Humanoid.Changed)
        AddConnectionsFromSignal(Humanoid:GetPropertyChangedSignal("WalkSpeed"))
        Humanoid.WalkSpeed = speed

        for i, v in connections do
            v:Enable()
        end
    end
end

function WalkSpeedSpoof:RestoreWalkSpeed()
    local Humanoid = WalkSpeedSpoof:GetHumanoid()

    if Humanoid then
        local cached = cachedhumanoids[Humanoid:GetDebugId()]

        if cached then
            WalkSpeedSpoof:SetWalkSpeed(cached.lastnewindex or cached.currentindex)
        end
    end
end

getgenv().WalkSpeedSpoof = WalkSpeedSpoof

if setspeed then
    WalkSpeedSpoof:SetWalkSpeed(setspeed)
end



-- settings
local settings = {
   defaultcolor = Color3.fromRGB(255,0,0),
   teamcheck = false,
   teamcolor = false
};
 
-- services
local runService = game:GetService("RunService");
local players = game:GetService("Players");
 
-- variables
local localPlayer = players.LocalPlayer;
local camera = workspace.CurrentCamera;
 
-- functions
local newVector2, newColor3, newDrawing = Vector2.new, Color3.new, Drawing.new;
local tan, rad = math.tan, math.rad;
local round = function(...) local a = {}; for i,v in next, table.pack(...) do a[i] = math.round(v); end return unpack(a); end;
local wtvp = function(...) local a, b = camera.WorldToViewportPoint(camera, ...) return newVector2(a.X, a.Y), b, a.Z end;
 
local espCache = {};
local function createEsp(player)
   local drawings = {};
 
   drawings.box = newDrawing("Square");
   drawings.box.Thickness = 1;
   drawings.box.Filled = false;
   drawings.box.Color = settings.defaultcolor;
   drawings.box.Visible = false;
   drawings.box.ZIndex = 2;
 
   drawings.boxoutline = newDrawing("Square");
   drawings.boxoutline.Thickness = 3;
   drawings.boxoutline.Filled = false;
   drawings.boxoutline.Color = newColor3();
   drawings.boxoutline.Visible = false;
   drawings.boxoutline.ZIndex = 1;
 
   espCache[player] = drawings;
end
 
local function removeEsp(player)
   if rawget(espCache, player) then
       for _, drawing in next, espCache[player] do
           drawing:Remove();
       end
       espCache[player] = nil;
   end
end
 
local function updateEsp(player, esp)
   local character = player and player.Character;
   if character then
       local cframe = character:GetModelCFrame();
       local position, visible, depth = wtvp(cframe.Position);
       esp.box.Visible = visible;
       esp.boxoutline.Visible = visible;
 
       if cframe and visible then
           local scaleFactor = 1 / (depth * tan(rad(camera.FieldOfView / 2)) * 2) * 1000;
           local width, height = round(4 * scaleFactor, 5 * scaleFactor);
           local x, y = round(position.X, position.Y);
 
           esp.box.Size = newVector2(width, height);
           esp.box.Position = newVector2(round(x - width / 2, y - height / 2));
           esp.box.Color = settings.teamcolor and player.TeamColor.Color or settings.defaultcolor;
 
           esp.boxoutline.Size = esp.box.Size;
           esp.boxoutline.Position = esp.box.Position;
       end
   else
       esp.box.Visible = false;
       esp.boxoutline.Visible = false;
   end
end
 
-- main
for _, player in next, players:GetPlayers() do
   if player ~= localPlayer then
       createEsp(player);
   end
end
 
players.PlayerAdded:Connect(function(player)
   createEsp(player);
end);
 
players.PlayerRemoving:Connect(function(player)
   removeEsp(player);
end)
 
runService:BindToRenderStep("esp", Enum.RenderPriority.Camera.Value, function()
   for player, drawings in next, espCache do
       if settings.teamcheck and player.Team == localPlayer.Team then
           continue;
       end
 
       if drawings and player ~= localPlayer then
           updateEsp(player, drawings);
       end
   end
end)
-------------
--Esp Players
--------------
-- Function to create the menu
local function createMenu()
    -- Create a ScreenGui for the menu
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "WalkSpeedMenu"
    screenGui.Parent = game.Players.LocalPlayer.PlayerGui

    -- Create a Frame for the menu
    local menuFrame = Instance.new("Frame")
    menuFrame.Size = UDim2.new(0, 200, 0, 200)
    menuFrame.Position = UDim2.new(1, -210, 0, 10) -- Position on the right side
    menuFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    menuFrame.BorderSizePixel = 0
    menuFrame.Parent = screenGui

    -- Create a TextButton for activating WalkSpeed
    local walkSpeedButton = Instance.new("TextButton")
    walkSpeedButton.Size = UDim2.new(0, 180, 0, 50)
    walkSpeedButton.Position = UDim2.new(0, 10, 0, 10)
    walkSpeedButton.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
    walkSpeedButton.BorderSizePixel = 0
    walkSpeedButton.Text = "WalkSpeed"
    walkSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    walkSpeedButton.TextSize = 14
    walkSpeedButton.Parent = menuFrame

    -- Create a TextButton for teleporting to a location
    local teleportButton = Instance.new("TextButton")
    teleportButton.Size = UDim2.new(0, 180, 0, 50)
    teleportButton.Position = UDim2.new(0, 10, 0, 70)
    teleportButton.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
    teleportButton.BorderSizePixel = 0
    teleportButton.Text = "Teleport"
    teleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    teleportButton.TextSize = 14
    teleportButton.Parent = menuFrame

    -- Create a TextButton for the new option (Rotate Character)
    local rotateCharacterButton = Instance.new("TextButton")
    rotateCharacterButton.Size = UDim2.new(0, 180, 0, 50)
    rotateCharacterButton.Position = UDim2.new(0, 10, 0, 130)
    rotateCharacterButton.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
    rotateCharacterButton.BorderSizePixel = 0
    rotateCharacterButton.Text = "Rotate Character"
    rotateCharacterButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    rotateCharacterButton.TextSize = 14
    rotateCharacterButton.Parent = menuFrame

    -- Function to execute when the WalkSpeed TextButton is clicked
    local function onWalkSpeedButtonClick()
        if setspeed then
            WalkSpeedSpoof:SetWalkSpeed(setspeed)
            walkSpeedButton.Text = "WalkSpeed"
        end
    end

    -- Function to execute when the Teleport TextButton is clicked
    local function onTeleportButtonClick()
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = CFrame.new(258.0343627929, 1.7026300430297852, 287.22637939453125)
        local humanoid = game.Players.LocalPlayer.Character.Humanoid
        humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
        wait(0.1)
        pl.CFrame = location
    end

    -- Function to execute when the Rotate Character TextButton is clicked
    local function onRotateCharacterButtonClick()
        local character = game.Players.LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                local rootPart = character:FindFirstChild("HumanoidRootPart")
                if rootPart then
                    while true do
                        rootPart.CFrame = rootPart.CFrame * CFrame.Angles(0, math.rad(rotationSpeed), 0)
                        wait()
                    end
                end
            end
        end
    end

    -- Connect the TextButton's Click events to their respective functions
    walkSpeedButton.MouseButton1Click:Connect(onWalkSpeedButtonClick)
    teleportButton.MouseButton1Click:Connect(onTeleportButtonClick)
    rotateCharacterButton.MouseButton1Click:Connect(onRotateCharacterButtonClick)
end

-- Create the menu when the script runs
createMenu()

-- Create the menu when the player's character is added
game.Players.LocalPlayer.CharacterAdded:Connect(createMenu)