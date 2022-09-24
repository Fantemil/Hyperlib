local getService = game.GetService;
local players = getService(game, "Players");
local workspace = getService(game, "Workspace");
local guiService = getService(game, "GuiService");
local replicatedStorage = getService(game, "ReplicatedStorage");

local camera = workspace.CurrentCamera;
local mouse = players.LocalPlayer:GetMouse();
local worldToViewportPoint = camera.worldToViewportPoint
local findFirstChild = workspace.FindFirstChild;

-- Functions
local getClosestToCursor = function()
    local target = nil
    local maxDistance = mathhuge

    for _,v in next, plrs:GetPlayers() do
        if v ~= plr and v.Character and findFirstChild(v.Character, "Humanoid") and v.Character.Humanoid.Health ~= 0 and findFirstChild(v.Character, "HumanoidRootPart") and findFirstChild(v.Character, "Head") then
            local pos, onScreen = worldToViewportPoint(camera, v.Character.HumanoidRootPart.Position)
            if onScreen then
                local dist = (Vector2.new(pos.X, pos.Y - guiService.GetGuiInset(guiService).Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                if dist <= maxDistance then
                    maxDistance = dist;
                    target = v;
                end;
            end;
        end;
    end;
    return target;
end;

-- Hooks
local oldNamecall; oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    if tostring(self) == "VisualizeBullet" and getnamecallmethod() == "FireServer" then
        local v1 = getClosestToCursor().Character;
        local v2 = getClosestToCursor().Character.Head;
        local v3 = getClosestToCursor().Character.Head.CFrame;
       
        replicatedStorage.Remotes.Hit:FireServer(v1, v2, v3, args[4])       
    end;
    return oldNamecall(self, ...);
end);