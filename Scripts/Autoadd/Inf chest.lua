while wait(0.00002) do
spawn(function()
for i,v in pairs(game:GetService("Workspace").RGX:GetDescendants()) do
if v:IsA("Part") then
firetouchinterest(v,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
firetouchinterest(v,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
end
end
end)
end