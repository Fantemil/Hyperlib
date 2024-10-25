local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

_G.AutoCrate = false
_G.AutoSwing = false
_G.AutoComplete = false
_G.AutoOverclock = false

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("[ð] RNG Odyssey", "Sentinel")

local MainTab = Window:NewTab("Main")
local FarmSection = MainTab:NewSection("Farming Section")

FarmSection:NewToggle("Auto Crate", "Teleports the crate in front of you", function(value)
    _G.AutoCrate = value

    while _G.AutoCrate do
        for _, crate in ipairs(workspace.Rarities:GetChildren()) do
            if crate:IsA("MeshPart") and (string.find(string.lower(crate.Name), "crate") or string.find(string.lower(crate.Name), "chest")) then
                local characterPosition = character.PrimaryPart.Position
                local characterDirection = character.PrimaryPart.CFrame.LookVector
                local teleportPosition = characterPosition + characterDirection * 5

                crate.CFrame = CFrame.new(teleportPosition)
            end
        end
        task.wait(0)
    end
end)

FarmSection:NewToggle("Auto Swing", "Automatically swing", function(value)
    _G.AutoSwing = value

    while _G.AutoSwing do
        local tool = character:FindFirstChildWhichIsA("Tool")
        if not tool then
            tool = player.Backpack:FindFirstChildWhichIsA("Tool")
            if tool then
                character.Humanoid:EquipTool(tool)
            end
        end
        if tool then
            tool:Activate()
        end
        task.wait(0.1)
    end
end)

FarmSection:NewToggle("Auto Obby", "Automatically completes the obby", function(value)
    _G.AutoComplete = value

    while _G.AutoComplete do
        local rewardButton = workspace:WaitForChild("Obby"):FindFirstChild("RewardButton")
        
        if rewardButton then
            for _, child in ipairs(rewardButton:GetChildren()) do
                if child:IsA("MeshPart") and child.Name == "Meshes/ground" and child:FindFirstChildWhichIsA("TouchTransmitter") and character:FindFirstChild("HumanoidRootPart") then
                    firetouchinterest(character.HumanoidRootPart, child, 0)
                    task.wait(0.1)
                    firetouchinterest(character.HumanoidRootPart, child, 1)
                    task.wait(0.1)
                end
            end
        end
        
        task.wait(1)
    end
end)

FarmSection:NewDropdown("Select Overclock Boost", "Select the overclock boost to overclock", {"Damage", "Luck", "SpawnSpeed", "XP"}, function(currentOption)
    game.ReplicatedStorage.Remotes.ChangeOverclockBoost:FireServer(currentOption)
end)

FarmSection:NewToggle("Auto Overclock", "Automatically overclock", function(value)
    _G.AutoOverclock = value

    while _G.AutoOverclock do
        for _, plot in ipairs(workspace.Plots:GetChildren()) do
            local object = plot:FindFirstChildWhichIsA("ObjectValue")
            if object and object.Value and object.Value:IsA("Player") then
                local playerName = object.Value.Name
                local localPlayerName = player.Name

                if playerName == localPlayerName then
                    local overclockMachine = workspace.Plots[plot.Name].OverclockMachine.Button.Button
                    if overclockMachine.ProximityPrompt.Enabled and not player.PlayerGui.Main.Windows.OverclockCode.Visible then
                        character.HumanoidRootPart.CFrame = CFrame.new(overclockMachine.Position)
                        fireproximityprompt(overclockMachine.ProximityPrompt)

                        game.ReplicatedStorage.Remotes.ActivateOverclock:FireServer(game:GetService("Players").LocalPlayer:GetAttribute("OverclockCode"))
                    end
                end 
            end
        end
        task.wait(0.1)
    end
end)