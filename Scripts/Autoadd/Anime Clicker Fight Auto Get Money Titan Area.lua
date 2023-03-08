--Two Script
while task.wait(2) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9581.0673828125, 50.95942687988281, 1037.679931640625)
wait()
local A_1 = 5
local Event = game:GetService("ReplicatedStorage").ServerMsg.Teleport
Event:FireServer(A_1)
end