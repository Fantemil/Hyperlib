local EggName = 'Play Button' -- Case Sensitive
local Amount = 20



local Network = getsenv(game.ReplicatedStorage.Modules.Network)

local BuyEgg = function(name)
    debug.getupvalues(Network.GetFunctionHandler)[1].OpenEgg.Remote:InvokeServer(name)
end

for i = 1, Amount do
    BuyEgg(EggName:gsub(' ',''))
    wait(1)
end
