while task.wait() do 
  game:GetService("ReplicatedStorage").Remotes.Freeze:FireServer()
end