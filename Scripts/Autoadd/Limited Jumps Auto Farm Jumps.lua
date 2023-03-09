_G.jumpteleporter = true
reward = nil
for i,v in pairs(workspace:GetDescendants()) do
  if v.Name == "JumpsReward" and v.Value == 100 then
      reward = v.Parent
  end
end
if reward then
   while _G.jumpteleporter == true do
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = reward.CFrame
      wait(3)
   end
end