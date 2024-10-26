while task.wait() do
    game:GetService("ReplicatedStorage").Points:FireServer()
end