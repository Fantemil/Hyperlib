local plrs = game.Players:GetChildren()

for i = 1, #plrs do
  if (plrs[i].Name ~= game.Players.LocalPlayer.Name) then
      plrs[i].Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 2, 5)
  end
end