local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local toFindFolder = Workspace:WaitForChild("ToFind")

for _, part in pairs(toFindFolder:GetChildren()) do
    if part:IsA("BasePart") then
        humanoidRootPart.CFrame = part.CFrame
        wait(1)
    end
end