local plr = game.Players.LocalPlayer.character.HumanoidRootPart

while wait() do
for i, v in pairs(game:GetService("Workspace").Interiors.MainMap:GetChildren()) do
if v.Name == "GateTemplate" then
wait(0.1)
plr.CFrame = v.Handle.CFrame
wait(0.3)
v.Name = "Passed"
end
end
end