-- Infinite Auto-Jump Script
-- Author: [Your Name]

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

local Humanoid = Character:WaitForChild("Humanoid")

-- Function to jump continuously
local function autoJump()
    if Humanoid.Jump then
        Humanoid:ChangeState("Jumping")
    end
end

-- Connect the auto-jump function to the Heartbeat event
game:GetService("RunService").Heartbeat:Connect(autoJump)

-- Print a message to indicate the script is running
print("Infinite Auto-Jump Script loaded!")