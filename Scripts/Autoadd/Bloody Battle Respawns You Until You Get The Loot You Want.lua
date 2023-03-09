local item = "whatever you want"


repeat
game:GetService("ReplicatedStorage").MainEvents:FireServer("respawn")
task.wait(1)
until game.Players.LocalPlayer.Backpack:FindFirstChild(item)