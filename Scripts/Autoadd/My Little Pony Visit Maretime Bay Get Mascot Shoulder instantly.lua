 local me = game.Players.LocalPlayer
 for i,v in pairs(game.Workspace.Nodes.SpecialCrystalNodes:GetChildren()) do
  wait(1)
  me.Character.HumanoidRootPart.CFrame = v.CFrame
 end