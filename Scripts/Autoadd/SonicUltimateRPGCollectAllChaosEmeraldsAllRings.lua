game.Workspace.ChaosEmeralds.Blue.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Workspace.ChaosEmeralds.Cyan.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Workspace.ChaosEmeralds.Green.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Workspace.ChaosEmeralds.Purple.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Workspace.ChaosEmeralds.Red.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Workspace.ChaosEmeralds.White.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Workspace.ChaosEmeralds.Yellow.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

for i,v in pairs(game:GetService("Workspace").Rings:GetDescendants()) do
if v:IsA('Part') then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end