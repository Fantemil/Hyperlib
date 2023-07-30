local Network = getsenv(game.ReplicatedStorage.Modules.Network)

local PizzaRemote = debug.getupvalues(Network.GetEventHandler)[1].PlacePizza.Remote
while wait() do
    PizzaRemote:FireServer()
end

--[[ this is how you can view all the remotes in game just for any developers
for i,v in pairs(debug.getupvalues(Network.GetEventHandler)[1]) do
    print(i,v)
end
]]