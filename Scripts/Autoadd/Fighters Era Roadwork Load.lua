local earwax = true
while earwax do
for count = 1, 5 do
for i, v in pairs(workspace.QuestMarkers:GetDescendants()) do
if v:FindFirstChild("TouchInterest") then
firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
wait(.01)
end
end
end
end