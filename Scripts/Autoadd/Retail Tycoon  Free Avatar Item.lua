local coin = game.Workspace.Map.Holiday.Items

for i,v in pairs (coin:GetChildren()) do
  if v:IsA("MeshPart") then
      wait(0.1)
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:GetPivot()
      game.Players.LocalPlayer.Character.Humanoid.Jump = true
  end
end