while true do
    task.wait(3) -- adjust urself
    game:GetService("ReplicatedStorage").EXP.LevelUp:FireServer()
end