while task.wait(.5) do
if game:GetService("Workspace"):FindFirstChild("Game") then
for i,v in pairs(game:GetService("Workspace"):WaitForChild("Game"):WaitForChild("PlayerFolders"):GetChildren()) do
if v.Name ~= "-Empty-" and workspace.Game.GameTime.Value >= 5 then
for i,b in pairs(game.Players.LocalPlayer.PlayerGui.ScreenGui:WaitForChild("PlayerListUI", math.huge).Body:GetChildren()) do
if b:IsA("TextButton") then
if tostring(b.toFolder.Value) == v.Name then
b.plrNameLabel.Text = v.Name.." $"..math.floor(v.Stats.Money.Value + 0.5)
end
end
end
end
end
end
end