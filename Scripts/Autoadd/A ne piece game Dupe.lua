for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
  if v.Name == "Phoenix Fruit" then -- Change this depends on what fruit u have
      v.Parent = game.Players.LocalPlayer.Character
  end
end
wait()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
  if v:IsA("Tool") then
      v.Parent = game.Workspace
  end
end
game.Players.LocalPlayer.Character.Humanoid:Destroy()