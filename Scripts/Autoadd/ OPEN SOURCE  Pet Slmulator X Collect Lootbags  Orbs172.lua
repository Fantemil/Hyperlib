-- Also if u need any custom requests dm me HyperSpeed#7040

--// Functions
local function CollectOrbs()
    Workspace["__THINGS"].Orbs.ChildAdded:connect(function(Orb)
        if Config.Farming.CollectOrbs or Config.Valentines.StartHeartFarm or Config.Farming.StartCompleteGame then
            pcall(function() getsenv(Scripts.Game.Orbs).Collect(Orb) task.wait(0.02) Orb:Destroy() end) 
        end
    end)
end

local function CollectLootbags()
    Workspace["__THINGS"].Lootbags.ChildAdded:connect(function(Lootbag)
        if Config.Farming.CollectOrbs or Config.Valentines.StartHeartFarm or Config.Farming.StartCompleteGame then
            pcall(function() getsenv(Scripts.Game.Lootbags).Collect(Lootbag) end)
        end
    end)
end
CollectLootbags()
CollectOrbs()