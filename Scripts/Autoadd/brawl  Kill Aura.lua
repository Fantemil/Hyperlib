while wait() do
   for i = 1,15 do
game:GetService("ReplicatedStorage").remotes.attack:FireServer()
end
end