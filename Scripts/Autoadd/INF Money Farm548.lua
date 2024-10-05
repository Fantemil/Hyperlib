while true do
    task.wait(4) -- Cooldown
    game:GetService("ReplicatedStorage").Add:FireServer({["Cash"]=1000000000000000000000000000000})-- 1no
    task.wait(0.5)
    game:GetService("ReplicatedStorage"):WaitForChild("Prestige"):FireServer({[1]=1})
end