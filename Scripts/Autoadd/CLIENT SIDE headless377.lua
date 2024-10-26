local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local head = character:WaitForChild("Head")

head.Transparency = 1
head.CanCollide = false

local face = head:FindFirstChild("face")
if face then
    face.Transparency = 1
end