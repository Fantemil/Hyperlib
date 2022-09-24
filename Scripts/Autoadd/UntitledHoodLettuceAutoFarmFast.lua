-- // NOLIX'S OPEN SOURCE UNTITLED HOOD LETTUCE FARM \\
-- // ONLY WAY TO TURN IT OFF IS REJOINING THE GAME \\


-- variables
local localPlayer = game:GetService("Players").LocalPlayer

-- checks for the local player, if they exist it runs the main code
if localPlayer then
    -- teleports local player to the lettuce
    wait(0.5)
    localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Ignored.Shop["[Lettuce] - $5"].Head.CFrame.Position) * CFrame.new(0,5,0)
    
    -- detects when the local player dies
    localPlayer.CharacterAdded:Connect(function()
        -- waits for humanoid
        localPlayer.Character:WaitForChild("Humanoid")
        
        -- teleports to the lettuce
        wait(0.5)
        localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Ignored.Shop["[Lettuce] - $5"].Head.CFrame.Position) * CFrame.new(0,5,0)
    end)
    
    -- spam buys lettuce, equips it, clicks to eat the lettuce
    game:GetService("RunService").Stepped:Connect(function()
        fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
        wait(0.4)
        localPlayer.Character.Humanoid:EquipTool(localPlayer.Backpack["[Lettuce]"])
        wait(0.4)
        mouse1click()
        wait(0.4)
        mouse1click()
        wait(0.4)
    end)
end