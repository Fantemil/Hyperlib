for i = 1, #workspace.Checkpoints.Spawn:GetChildren() do
   game.Players.LocalPlayer.Character:PivotTo(workspace.Checkpoints.Spawn:FindFirstChild(tostring(i)):GetPivot())
end