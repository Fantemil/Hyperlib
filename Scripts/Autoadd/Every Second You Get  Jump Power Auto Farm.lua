getgenv().farm = true
task.spawn(function()
local pp = game.Players.LocalPlayer.Character.Head
while task.wait() do
    if not getgenv().farm then break end
for i, v in pairs(game:GetService("Workspace").Wins.World10:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(pp, v.Parent, 0)
        wait(0.1)
        firetouchinterest(pp, v.Parent, 1)
        break
    end
end
end
end)