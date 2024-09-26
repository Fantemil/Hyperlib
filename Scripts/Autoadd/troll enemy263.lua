warn("USE THIS SCRIPT WHEN YOU IN MATCH")
local targetPosition = Vector3.new(156, -276, -1323)
local player = game.Players.LocalPlayer

if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
    player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
end