local player = game.Players.LocalPlayer.Character.HumanoidRootPart

for i, v in pairs(game:GetService("Workspace").Ignore.MainParts.Badge:GetDescendants()) do
 if v.Name == "TouchInterest" and v.Parent then
     firetouchinterest(player, v.Parent, 0)
 end
end