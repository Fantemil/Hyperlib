while wait(1) do
repeat
local win = workspace.Wins.Bridge
local you = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
local basepart = you:FindFirstChildWhichIsA("BasePart")
firetouchinterest(win,basepart,0)
task.wait()
firetouchinterest(win,basepart,1)
wait(3)
until game.Players.LocalPlayer.leaderstats.Wins.Value >= game.Players.LocalPlayer.requiredwins.Value
game.ReplicatedStorage.RebirthEvent:FireServer()
end