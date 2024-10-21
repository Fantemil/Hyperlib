local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local eggyParts = Workspace:GetDescendants()

for _, part in pairs(eggyParts) do
    if part:IsA("MeshPart") and part.Name == "Eggy" then
        humanoidRootPart.CFrame = part.CFrame
        wait(1)
    end
end