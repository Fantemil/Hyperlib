local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function flipCharacter()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    -- Rotate the character to make it look like it's swimming
    humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0)
end

flipCharacter()

player.CharacterAdded:Connect(flipCharacter)