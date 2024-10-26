local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local powerUpSpawners = workspace.PowerUp_Spawners

while true do
    for _, spawner in pairs(powerUpSpawners:GetDescendants()) do
        if spawner:IsA("BasePart") then
            spawner.CFrame = humanoidRootPart.CFrame
        end
    end
    wait(1)
end