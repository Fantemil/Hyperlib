 getgenv().farmer = true; -- make it false if u want turn it off

while wait() do
   if getgenv().farmer == true then
       game.ReplicatedStorage.Events.ExchangeMoney:FireServer(true)
   end
end