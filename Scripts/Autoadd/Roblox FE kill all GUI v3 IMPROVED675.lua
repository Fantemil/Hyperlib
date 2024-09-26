-- Script Description:
-- This script is designed for use in Roblox games and manipulates players' positions using client-sided CFrame adjustments.
-- It allows you to move players to a specified range in front of your character and set their walk speed to 0.
-- what does this mean it mean like you can use tool and thing for example you have sword and gun in game Which this script made for Manipulate Hitbox client sided
-- you can use those tool to Damage/hit/kill player that Bringed to you
--even though this script is client sided but even is client sided other player can still see themselves died/Hitted/damaged
-- This may not work in games with robust anti-cheat systems or hitbox checks.

-- Setting
local range = -10  -- Adjust how far players are brought in front of you. Use negative values to bring them closer.

-- Variables
local localplayer = game.Players.LocalPlayer
local localcharacter = localplayer.Character or localplayer.CharacterAdded:Wait()
local localroot = localcharacter:WaitForChild("HumanoidRootPart")
local localhumanoid = localcharacter:WaitForChild("Humanoid")

-- Load Orion Library and create GUI
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Window = OrionLib:MakeWindow({
    Name = "FE Kill All Script GUI v3",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})

-- Create tabs and sections
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Section Script"
})

-- State Variables
local FEKillAllToggle = false
local FEKillAllWithTeamCheckToggle = false
local FETargetPlayer = false

-- Function to update local character references
local function updateLocalCharacter()
    localcharacter = localplayer.Character or localplayer.CharacterAdded:Wait()
    localroot = localcharacter:WaitForChild("HumanoidRootPart")
    localhumanoid = localcharacter:WaitForChild("Humanoid")
end

-- Update character references on respawn
localplayer.CharacterAdded:Connect(function()
    updateLocalCharacter()
    FEKillAllToggle = false
    FEKillAllWithTeamCheckToggle = false
    FETargetPlayer = false
end)

-- Add "FE kill all" toggle
Tab:AddToggle({
    Name = "FE Kill All Toggle",
    Default = false,
    Callback = function(state)
        FEKillAllToggle = state
        if FEKillAllToggle then
            coroutine.wrap(function()
                while FEKillAllToggle do
                    for _, v in pairs(game.Players:GetPlayers()) do
                        if v ~= localplayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") then
                            local vroot = v.Character:FindFirstChild("HumanoidRootPart")
                            local vhumanoid = v.Character:FindFirstChild("Humanoid")
                            if vroot and localhumanoid.Health > 0 and vhumanoid.Health > 0 then
                                vroot.CFrame = localroot.CFrame * CFrame.new(0, 0, range)
                                vhumanoid.WalkSpeed = 0
                            end
                        end
                    end
                    game:GetService("RunService").RenderStepped:Wait()
                end
            end)()
        end
    end
})

-- Add "FE kill all with team check" toggle
Tab:AddToggle({
    Name = "FE Kill All (With Team Check)",
    Default = false,
    Callback = function(state)
        FEKillAllWithTeamCheckToggle = state
        if FEKillAllWithTeamCheckToggle then
            coroutine.wrap(function()
                while FEKillAllWithTeamCheckToggle do
                    for _, v in pairs(game.Players:GetPlayers()) do
                        if v ~= localplayer and v.Team ~= localplayer.Team and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") then
                            local vroot = v.Character:FindFirstChild("HumanoidRootPart")
                            local vhumanoid = v.Character:FindFirstChild("Humanoid")
                            if vroot and localhumanoid.Health > 0 and vhumanoid.Health > 0 then
                                vroot.CFrame = localroot.CFrame * CFrame.new(0, 0, range)
                                vhumanoid.WalkSpeed = 0
                            end
                        end
                    end
                    game:GetService("RunService").RenderStepped:Wait()
                end
            end)()
        end
    end
})

-- Create player dropdown and populate with players
local playerTable = {}
for _, v in pairs(game.Players:GetPlayers()) do
    if v.Name and v.Name ~= localplayer.Name and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") then
        table.insert(playerTable, v.Name)
    end
end

local selectedPlayer = nil
Tab:AddDropdown({
    Name = "Select Player to Target",
    Default = "",
    Options = playerTable,
    Callback = function(Value)
        selectedPlayer = Value
    end
})

-- Add "Target Selected Player" toggle
Tab:AddToggle({
    Name = "Target Selected Player",
    Default = false,
    Callback = function(state)
        FETargetPlayer = state
        if FETargetPlayer and selectedPlayer then
            coroutine.wrap(function()
                while FETargetPlayer and selectedPlayer do
                    local Target = game.Players:FindFirstChild(selectedPlayer)
                    if Target and Target.Character then
                        local Targetroot = Target.Character:FindFirstChild("HumanoidRootPart")
                        local TargetHumanoid = Target.Character:FindFirstChild("Humanoid")
                        if Targetroot and localhumanoid.Health > 0 and TargetHumanoid.Health > 0 then
                            Targetroot.CFrame = localroot.CFrame * CFrame.new(0, 0, range)
                            TargetHumanoid.WalkSpeed = 0
                        end
                    end
                    game:GetService("RunService").RenderStepped:Wait()
                end
            end)()
        else
            FETargetPlayer = false
        end
    end
})