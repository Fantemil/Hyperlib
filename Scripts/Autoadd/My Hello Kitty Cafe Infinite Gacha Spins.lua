if game.ReplicatedStorage:FindFirstChild("GameAnalytics") then
game.ReplicatedStorage:FindFirstChild("GameAnalytics"):remove()
end
if game.Players.LocalPlayer.PlayerGui.UIPlayer:FindFirstChild("UICapsulestation") then
game.Players.LocalPlayer.PlayerGui.UIPlayer:FindFirstChild("UICapsulestation"):remove()
end

while wait(1.2) do
spawn(function()
for i=1,1000 do
spawn(function()
game:GetService("ReplicatedStorage"):WaitForChild("GameCommon"):WaitForChild("Messages"):WaitForChild("CapsulestationEvent"):FireServer(1, 3, 20071, 5)
end)
end
end)
end