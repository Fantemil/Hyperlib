while task.wait() do
       game:GetService("ReplicatedStorage").Remotes.Lift:FireServer()
end