local orb = game.Workspace.Map.OrangeOrbs

while true do
for i,v in pairs (orb:GetChildren()) do
  if v:IsA("Model") then
      wait(0.1)
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:GetPivot()
      game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
  end
end