local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

while true do
humanoid.WalkSpeed = 35
wait(0.0)
end