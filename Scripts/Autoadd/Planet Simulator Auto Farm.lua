while wait() do
   for i = 1,20 do
game:GetService("ReplicatedStorage").ChangePlayerStat:FireServer("Mass",math.huge)
end
end