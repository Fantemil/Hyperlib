for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
  if v:IsA("Tool")  then
   wait()
   v.Parent = game.Players.LocalPlayer.Character
   wait()
   v.Parent = game.Workspace
end
end