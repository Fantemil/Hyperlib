while task.wait() do
repeat
 task.wait()
until game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
wait(1)
for i, v in pairs(workspace:GetDescendants()) do
 if v.Name == "Win" then firetouchinterest(v, game.Players.LocalPlayer.Character.Head, 0) firetouchinterest(v, game.Players.LocalPlayer.Character.Head, 1) end
end
wait(1)
game.Players.LocalPlayer.Character:BreakJoints()
end