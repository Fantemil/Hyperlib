local Network = game:GetService("ReplicatedStorage"):WaitForChild("Network")

while game.RunService.Stepped:Wait() do
   task.spawn(function()
       Network.SpawnMe:FireServer()
       Network.LoadCharacter:FireServer()
   end)
end