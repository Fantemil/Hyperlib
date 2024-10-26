-- Get the local player
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

local isActive = false -- State to track if the script is active
local runService = game:GetService("RunService")
local userInputService = game:GetService("UserInputService")

-- Function to simulate a mouse click
local function autoClick()
    -- Simulating a click
    local playerMouse = player:GetMouse()
    if playerMouse and playerMouse.Target then
        local args = {playerMouse.Target}
        game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer(unpack(args)) -- Adjust based on how clicks are handled in your game
    end
end

-- Function to teleport under a player and keep updating position
local function stayUnderTarget(targetPlayer)
    local targetCharacter = targetPlayer.Character
    if targetCharacter and targetCharacter:FindFirstChild("HumanoidRootPart") then
        local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
        local targetHumanoid = targetCharacter:FindFirstChild("Humanoid")
        
        -- Keep moving under the target until they are defeated
        while targetHumanoid and targetHumanoid.Health > 0 and isActive do
            -- Teleport under the player continuously
            rootPart.CFrame = targetRootPart.CFrame * CFrame.new(0, -3, 0) -- 3 studs below the player
            
            -- Face the target player
            rootPart.CFrame = CFrame.new(rootPart.Position, targetRootPart.Position)

            -- Auto-click every 0.5 seconds
            autoClick()
            wait(0.5) -- Click every 0.5 seconds
        end
    end
end

-- Function to get next player that is alive
local function getNextPlayer()
    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer ~= player then -- Make sure we're not targeting ourselves
            local targetHumanoid = targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid")
            if targetHumanoid and targetHumanoid.Health > 0 then
                return targetPlayer
            end
        end
    end
    return nil -- No valid target
end

-- Function to start or stop the targeting loop
local function toggle()
    isActive = not isActive
    if isActive then
        while isActive do
            local targetPlayer = getNextPlayer()
            if targetPlayer then
                -- Stay under the target until they die
                stayUnderTarget(targetPlayer)
            end
            
            -- Wait a moment before looking for the next target
            wait(1)
        end
    end
end

-- Input listener for toggling
userInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.G then
        toggle()
        -- Show notification with the Discord link
        game.StarterGui:SetCore("SendNotification", {
            Title = "Notification";
            Text = "Made by 0vdi\nJoin the Discord: https://discord.gg/58WXSujf94";
            Duration = 5; -- Notification will stay for 5 seconds
        })

        -- Prompt the player with a message to manually open the Discord link
        game.StarterGui:SetCore("SendNotification", {
            Title = "Join Our Discord!";
            Text = "Copy and paste this link: https://discord.gg/58WXSujf94";
            Duration = 10; -- This notification will stay longer for convenience
        })
    end
end)

-- script made by 0vdi
-- https://discord.gg/58WXSujf94
