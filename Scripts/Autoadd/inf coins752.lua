while task.wait() do
task.spawn(function()
for i=1,100 do
task.spawn(function()
game:GetService("ReplicatedStorage"):WaitForChild("DailyLoginRewards"):FireServer()
end)
end
end)
end