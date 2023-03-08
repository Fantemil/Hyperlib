local oldpos = game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
for i,v in pairs(game:GetService("Workspace").Dump.Candy:GetDescendants()) do
if v.Name == 'Part' then
game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v.CFrame
wait(.3)
end
end
game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = oldpos