setclipboard('https://discord.gg/abF85cPA')

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt"))();
_G.closeBind = Enum.KeyCode.P

local win = lib:Window("Trench War", "Made by: exploitns", Color3.fromRGB(255, 110, 48), _G.closeBind);

local settingsTab = win:Tab("Settings", "http://www.roblox.com/asset/?id=6023426915");
local teleportTab = win:Tab("Teleports", "http://www.roblox.com/asset/?id=6023426915");
local opTab = win:Tab("OP", "http://www.roblox.com/asset/?id=6023426915");
local visualTab = win:Tab("Visuals", "http://www.roblox.com/asset/?id=6023426915");
local playerTab = win:Tab("Client Player", "http://www.roblox.com/asset/?id=6023426915");

_G.HeadSize = 10
_G.Disabled = false
_G.Transparency = 1

local espEnabled = false
local espColor = Color3.fromRGB(255, 0, 0)
local originalHitboxSize

settingsTab:Label("Hitbox Settings")

settingsTab:Toggle("Hitbox Enabled", "Enable or Disable Hitbox Expansion", _G.Disabled, function(t)
    _G.Disabled = not t
end)

settingsTab:Slider("Hitbox Size", "Change the size of the hitbox", 1, 50, _G.HeadSize, function(t)
    _G.HeadSize = t
end)

settingsTab:Slider("Hitbox Transparency", "Change the transparency of the hitbox", 0, 1, _G.Transparency, function(t)
    _G.Transparency = t
end)

local function hitboxes()
    if _G.Disabled then
        return
    end
    local localPlayer = game:GetService("Players").LocalPlayer
    local localTeam = localPlayer.Team
        
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player ~= localPlayer and player.Team ~= localTeam then
            local character = player.Character
            local rootPart = character and character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                if not originalHitboxSize then
                    originalHitboxSize = rootPart.Size
                end
                rootPart.CanCollide = false
                rootPart.Transparency = _G.Transparency
                rootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
            end
        end
    end
end

game:GetService('RunService').RenderStepped:connect(function()
    if not _G.Disabled then
        hitboxes()
    end
end)

local function GetSniperTool()
    while not game.Players.LocalPlayer.Backpack:FindFirstChild("Sniper") do
        local args = {
            [1] = "Spawn",
            [2] = {
                [2] = Vector3.new(-34, 90, 250)
            }
        }
        game:GetService("ReplicatedStorage").Event:FireServer(unpack(args))
        wait(0.2)
    end
end

local function teleportTo(position)
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
    end
end

teleportTab:Button("Trench 1", "Teleport to Trench 1", function()
    teleportTo(Vector3.new(-149.8618927001953, 92.99897766113281, 498.97222900390625))
end)

teleportTab:Button("Trench 2", "Teleport to Trench 2", function()
    teleportTo(Vector3.new(-140.17291259765625, 92.99897766113281, 252.165771484375))
end)

teleportTab:Button("Trench 3", "Teleport to Trench 3", function()
    teleportTo(Vector3.new(-145.9719696044922, 92.99897766113281, 1.5571177005767822))
end)

teleportTab:Button("Trench 4", "Teleport to Trench 4", function()
    teleportTo(Vector3.new(-140.5991973876953, 92.99897766113281, -250.78997802734375))
end)

teleportTab:Button("Trench 5", "Teleport to Trench 5", function()
    teleportTo(Vector3.new(-147.81509399414062, 92.99897766113281, -500.7750549316406))
end)

teleportTab:Button("Axis Base", "Teleport to Axis Base", function()
    teleportTo(Vector3.new(-1.9032416343688965, 103.19900512695312, -766.9031372070312))
end)

teleportTab:Button("Allied Base", "Teleport to Allied Base", function()
    teleportTo(Vector3.new(-0.3406527638435364, 103.19901275634766, 763.4523315429688))
end)

teleportTab:Button("Lobby", "Teleport to back to the Lobby", function()
    teleportTo(Vector3.new(106.30, -241.54, 53.33))
end)

opTab:Button("Kill All", "Kill all players", function()
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player ~= game:GetService("Players").LocalPlayer then
            local args = {
                [1] = player.Character.Humanoid,
                [2] = 100,
                [3] = {
                    [1] = 203.83062744140625,
                    [2] = CFrame.new(-45.51131820678711, 102.98486328125, -113.49867248535156) * CFrame.Angles(-3.1415927410125732, 1.5021963119506836, -3.1406333446502686)
                }
            }
            game:GetService("Players").LocalPlayer.Character.Sniper.RemoteEvent:FireServer(unpack(args))
        end
    end
end)

opTab:Button("Get Sniper Tool", "Automatically get the sniper tool", function()
    GetSniperTool()
end)

local killAuraEnabled = false
local KillAuraStuds = 50

opTab:Slider("Kill Aura Studs", "Change the range of the kill aura", 0, 500, KillAuraStuds, function(t)
    KillAuraStuds = t
end)

opTab:Toggle("Kill Aura", "Activate Kill Aura", killAuraEnabled, function(toggled)
    killAuraEnabled = toggled
    if killAuraEnabled then
        local localPlayer = game:GetService("Players").LocalPlayer
        local localCharacter = localPlayer.Character
        local localHumanoidRootPart = localCharacter and localCharacter:FindFirstChild("HumanoidRootPart")
        
        if localHumanoidRootPart then
            while killAuraEnabled do
                for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                    if player ~= localPlayer then
                        local playerCharacter = player.Character
                        local playerHumanoidRootPart = playerCharacter and playerCharacter:FindFirstChild("HumanoidRootPart")
                        
                        if playerHumanoidRootPart and (localHumanoidRootPart.Position - playerHumanoidRootPart.Position).Magnitude <= KillAuraStuds then
                            local args = {
                                [1] = player.Character.Humanoid,
                                [2] = 100,
                                [3] = {
                                    [1] = 203.83062744140625,
                                    [2] = CFrame.new(-45.51131820678711, 102.98486328125, -113.49867248535156) * CFrame.Angles(-3.1415927410125732, 1.5021963119506836, -3.1406333446502686)
                                }
                            }
                            game:GetService("Players").LocalPlayer.Character.Sniper.RemoteEvent:FireServer(unpack(args))
                        end
                    end
                end
                wait()
            end
        end
    end
end)

local function cycleTeleports()
    local trenchPositions = {
        Vector3.new(-147.81509399414062, 92.99897766113281, -500.7750549316406),
        Vector3.new(-140.5991973876953, 92.99897766113281, -250.78997802734375),
        Vector3.new(-145.9719696044922, 92.99897766113281, 1.5571177005767822),
        Vector3.new(-140.17291259765625, 92.99897766113281, 252.165771484375),
        Vector3.new(-149.8618927001953, 92.99897766113281, 498.97222900390625),
        Vector3.new(-0.3406527638435364, 103.19901275634766, 763.4523315429688)
    }

    local alliedPositions = {
        Vector3.new(-149.8618927001953, 92.99897766113281, 498.97222900390625),
        Vector3.new(-140.17291259765625, 92.99897766113281, 252.165771484375),
        Vector3.new(-145.9719696044922, 92.99897766113281, 1.5571177005767822),
        Vector3.new(-140.5991973876953, 92.99897766113281, -250.78997802734375),
        Vector3.new(-147.81509399414062, 92.99897766113281, -500.7750549316406),
        Vector3.new(-1.9032416343688965, 103.19900512695312, -766.9031372070312)
    }

    while _G.AutoCap do
        local player = game.Players.LocalPlayer
        if player.Team.Name == "Axis" then
            for i, pos in ipairs(trenchPositions) do
                teleportTo(pos)
                wait(i == #trenchPositions and 19 or 6)
            end
        else
            for i, pos in ipairs(alliedPositions) do
                teleportTo(pos)
                wait(i == #alliedPositions and 19 or 6)
            end
        end
    end
end

_G.AutoCap = false
opTab:Toggle("Auto Cap", "Automatically cap points", _G.AutoCap, function(toggled)
    _G.AutoCap = toggled
    if _G.AutoCap then
        cycleTeleports()
    end
end)

local function createESP(player)
    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = espColor
    Box.Thickness = 2
    Box.Filled = espFilled

    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = espColor
    Tracer.Thickness = 1

    local Name = Drawing.new("Text")
    Name.Visible = false
    Name.Color = espColor
    Name.Size = 16
    Name.Center = true
    Name.Outline = true

    local function update()
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChildOfClass("Humanoid") then
            local pos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
            if onScreen and espEnabled and (not teamcheckEnabled or isEnemy(player)) then
                local headPos = workspace.CurrentCamera:WorldToViewportPoint(player.Character.Head.Position)
                local rootPos = workspace.CurrentCamera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
                local legPos = workspace.CurrentCamera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0))

                local height = (headPos.Y - legPos.Y)
                Box.Size = Vector2.new(height / 2, height)
                Box.Position = Vector2.new(rootPos.X - Box.Size.X / 2, rootPos.Y - Box.Size.Y / 2)
                Box.Color = espColor
                Box.Visible = true
                Box.Filled = espFilled

                Tracer.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
                Tracer.To = Vector2.new(pos.X, pos.Y)
                Tracer.Color = espColor
                Tracer.Visible = tracersEnabled

                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                Name.Text = string.format("%s\n%d studs\n%d health", player.Name, math.floor((player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude), humanoid.Health)
                Name.Position = Vector2.new(pos.X, pos.Y - Box.Size.Y / 2 - 20)
                Name.Color = espColor
                Name.Visible = nameDistanceHealthEnabled
            else
                Box.Visible = false
                Tracer.Visible = false
                Name.Visible = false
            end
        else
            Box.Visible = false
            Tracer.Visible = false
            Name.Visible = false
        end
    end

    game:GetService("RunService").RenderStepped:Connect(update)
end

for _, player in pairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer then
        createESP(player)
    end
end

game.Players.PlayerAdded:Connect(function(player)
    createESP(player)
end)

visualTab:Toggle("ESP Enabled", "Enable or Disable ESP", false, function(t)
    espEnabled = t
end)

playerTab:Slider("WalkSpeed", "Change the walkspeed of the client player", 16, 100, 16, function(t)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

playerTab:Slider("JumpPower", "Change the jump power of the client player", 50, 250, 50, function(t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
end)