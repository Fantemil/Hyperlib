local oldpos = game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
for i,v in pairs(game:GetService("Workspace").Game.Crates:GetChildren()) do
if v:IsA('MeshPart') then
game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v.CFrame
wait(0.5)
end
end
game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = oldpos