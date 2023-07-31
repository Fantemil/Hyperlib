local plrHumanoid = game.Players.LocalPlayer.Character.HumanoidRootPart
for i, v in pairs(game:GetService("Workspace").Coins:GetDescendants()) do
   if v.Name == "TouchInterest" and v.Parent then
       firetouchinterest(plrHumanoid, v.Parent, 0)
       wait()
       firetouchinterest(plrHumanoid, v.Parent, 1)
   end
end