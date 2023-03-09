for i,v in pairs(game:GetService("Workspace").Races.circuit.detects:GetChildren()) do
wait()
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
v.Transparency = 0.975
end