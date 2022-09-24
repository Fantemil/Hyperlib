-- [[ HamstaGang on V3RM | Last updated 08/29/2022 ]] --

-- Wait for game to load
repeat task.wait() until game:IsLoaded();

-- Temp fix for ROBLOX turning off highlights
if setfflag then setfflag("OutlineSelection", "true") end

-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local CoreGui = game:GetService("CoreGui");
local Players = game:GetService("Players");
local Workspace = game:GetService("Workspace");
local Lighting = game:GetService("Lighting");
local VirtualInputManager = game:GetService("VirtualInputManager");

-- Remote Stuff
local Events = ReplicatedStorage:WaitForChild("Events", 1337)

-- Local Player
local Player = Players.LocalPlayer;

-- UI Lib (Fluxus Lib because I like to shuffle them and they support WEAO <3)
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/UILibs/FluxusUI.lua"))()

-- ESP support
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/SimpleHighlightESP.lua"))()

-- Main Window
local Window = lib:CreateWindow("Evade Gui")

-- Create Pages
local CharPage = Window:NewTab("Character")
local InvePage = Window:NewTab("Inventory")
local ServerPage = Window:NewTab("Server")
local ESPPage = Window:NewTab("ESP/Camera")

-- Create Sections
local MainSection = CharPage:AddSection("Character")
local InventorySection = InvePage:AddSection("Inventory")
local ServerSection = ServerPage:AddSection("Server")
local ESPSection = ESPPage:AddSection("ESP")
local CamSection = ESPPage:AddSection("Camera")

-- GUI Toggles / Settings
local Highlights_Active = false;
local AI_ESP = false;
local GodMode_Enabled = false;
local No_CamShake = false;

-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end

-- Simple Text ESP
function Simple_Create(base, name, trackername, studs)
    local bb = Instance.new('BillboardGui', game.CoreGui)
    bb.Adornee = base
    bb.ExtentsOffset = Vector3.new(0,1,0)
    bb.AlwaysOnTop = true
    bb.Size = UDim2.new(0,6,0,6)
    bb.StudsOffset = Vector3.new(0,1,0)
    bb.Name = trackername

    local frame = Instance.new('Frame', bb)
    frame.ZIndex = 10
    frame.BackgroundTransparency = 0.3
    frame.Size = UDim2.new(1,0,1,0)
    frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

    local txtlbl = Instance.new('TextLabel', bb)
    txtlbl.ZIndex = 10
    txtlbl.BackgroundTransparency = 1
    txtlbl.Position = UDim2.new(0,0,0,-48)
    txtlbl.Size = UDim2.new(1,0,10,0)
    txtlbl.Font = 'ArialBold'
    txtlbl.FontSize = 'Size12'
    txtlbl.Text = name
    txtlbl.TextStrokeTransparency = 0.5
    txtlbl.TextColor3 = Color3.fromRGB(255, 0, 0)

    local txtlblstud = Instance.new('TextLabel', bb)
    txtlblstud.ZIndex = 10
    txtlblstud.BackgroundTransparency = 1
    txtlblstud.Position = UDim2.new(0,0,0,-35)
    txtlblstud.Size = UDim2.new(1,0,10,0)
    txtlblstud.Font = 'ArialBold'
    txtlblstud.FontSize = 'Size12'
    txtlblstud.Text = tostring(studs) .. " Studs"
    txtlblstud.TextStrokeTransparency = 0.5
    txtlblstud.TextColor3 = Color3.new(255,255,255)
end

-- Clear ESP
function ClearESP(espname)
    for _,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == espname and v:isA('BillboardGui') then
            v:Destroy()
        end
    end
end

-- God Mode (Credits to Egg Salad)
MainSection:AddButton("God Mode", "Gives you god mode", function()
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local Hum = Character:WaitForChild("Humanoid")
    Hum.Parent = nil;
    Hum.Parent = Character;
end)

MainSection:AddToggle("Loop God Mode", "Keeps god mode on", false, function(bool)
    GodMode_Enabled = bool;

    if bool then -- just incase they only enable the toggle..
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local Hum = Character:WaitForChild("Humanoid")
        Hum.Parent = nil;
        Hum.Parent = Char;
    end
end)

-- Respawn/Reset
MainSection:AddButton("Respawn", "Free respawn, no need to pay 15 robux!", function()
    local Reset = Events:FindFirstChild("Reset")
    local Respawn = Events:FindFirstChild("Respawn")

    if Reset and Respawn then
        Reset:FireServer();
        task.wait(2)
        Respawn:FireServer();
    end
end)

-- Make server all bright so your eye balls can see
MainSection:AddButton("Full Bright", "For users who are scared of the dark :(", function()
    local light = Instance.new("PointLight", Character.HumanoidRootPart)
    light.Brightness = .3
    light.Range = 10000

    Lighting.TimeOfDay = "14:00:00"
    Lighting.FogEnd = 10000;
    Lighting.Brightness = 2;
    Lighting.Ambient = Color3.fromRGB(255,255,255)
    Lighting.FogColor = Color3.fromRGB(255,255,255)
end)

MainSection:AddSlider("WalkSpeed", "Adjust WalkSpeed to be speed", 1450, 10000, 1450, true, function(val)
    pcall(function()
        local Character = Player.Character;
        Character.Humanoid:SetAttribute("RealSpeed", tonumber(val));
    end)
end)

MainSection:AddSlider("JumpPower", "Adjust JumpPower and dunk", 3, 15, 3, true, function(val)
    pcall(function()
        local Character = Player.Character;
        Character.Humanoid:SetAttribute("RealJumpHeight", tonumber(val));
    end)
end)

-- Alpha Skin Giver
InventorySection:AddButton("Alpha Skin", "Gives you the private alpha skin", function()
    Events.UI.Purchase:InvokeServer("Skins", "AlphaTester")
end)

-- Boombox Giver (Frog#5989)
InventorySection:AddButton("Boombox Skin", "Gives you the Boombox skin for free!", function()
    Events.UI.Purchase:InvokeServer("Skins", "Boombox")
end)

-- Emote Giver (Frog#5989)
InventorySection:AddButton("Dev Test Emote", "Gives you the private test emote.", function()
    Events.UI.Purchase:InvokeServer("Emotes", "Test")
end)

-- Crash Server (Credits to FeIix (V3RM) <3)
ServerSection:AddButton("Crash Server", "Crashes the server", function()
    local Reset = Events:FindFirstChild("Reset")
    local Respawn = Events:FindFirstChild("Respawn")
    while task.wait() do
        if Reset and Respawn then
            Reset:FireServer()
            Respawn:FireServer()
        end
    end
end)


-- Character Highlights
ESPSection:AddButton("Character Highlights", "Highlights all characters to make them easier to see.", function()
    ESP:ClearESP();
    Highlights_Active = true;

    for i, v in ipairs(Players:GetPlayers()) do
        if v ~= Player then
            v.CharacterAdded:Connect(function(Char)
                ESP:AddOutline(Char)
                ESP:AddNameTag(Char)
            end)

            if v.Character then
                ESP:AddOutline(v.Character)
                ESP:AddNameTag(v.Character)
            end
        end
    end
end)

-- AI Text ESP
ESPSection:AddToggle("AI ESP", "Adds text ESP to AI to make them easier to see.", false, function(bool)
    AI_ESP = bool;
end)

-- No Camera Shake
CamSection:AddToggle("No Camera Shake", "Removes camera shake that is caused by the AI.", false, function(bool)
    No_CamShake = bool;
end)


-- [[ Helpers / Loop Funcs ]] --

-- Highlight helper
game:GetService("Players").PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Connect(function(Char)
        if Highlights_Active then
            ESP:AddOutline(Char)
            ESP:AddNameTag(Char)
        end
    end)
end)

-- Target only Local Player
Player.CharacterAdded:Connect(function(Char)
    local Hum = Char:WaitForChild("Humanoid", 1337);

    -- Godmode helper (Credits to Egg Salad)
    if GodMode_Enabled then
        Hum.Parent = nil;
        Hum.Parent = Char;
    end
end)


-- ESP AI
task.spawn(function()
    while task.wait(0.05) do
        if AI_ESP then
            pcall(function()
                ClearESP("AI_Tracker")
                local GamePlayers = Workspace:WaitForChild("Game", 1337).Players;
                for i,v in pairs(GamePlayers:GetChildren()) do
                    if not game.Players:FindFirstChild(v.Name) then -- Is AI
                        local studs = Player:DistanceFromCharacter(v.PrimaryPart.Position)
                        Simple_Create(v.HumanoidRootPart, v.Name, "AI_Tracker", math.floor(studs + 0.5))
                    end
                end
            end)
        else
            ClearESP("AI_Tracker");
        end
    end
end)

-- Camera Shake
task.spawn(function()
    while task.wait() do
        if No_CamShake then
            Player.PlayerScripts:WaitForChild("CameraShake", 1234).Value = CFrame.new(0,0,0) * CFrame.Angles(0,0,0);
        end
    end
end)