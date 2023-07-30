--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
	These are the classes
	                "Class1",
                   "Class2",
                  "Class3",
                 "Class4",
                "Class5",
               "Class6",
              "Class7",
             "Class8",
            "Class9",
           "Class999",
         "Class01",
        "Class0",
       "Class5318008",
      "ClassDuck",
     "ClassDuckMinion",
    "Class999Minion",
   "Class5318008Summon",
  "Class1338"
]]

local host = {

 Class = "Class1", -- Set Whatever Host you want here.
 Power = 0.5, -- This is your power multiplier, Each .5 is a x1.5 multiplier
 Speed = 16, -- This is your movement speed, Each number accounts for 3% of your walkspeed
 MaxHp = 100, -- This is how much HP you're limited to
 HPRegen = 0.3333333 -- This is how fast you regen HP
}



local char = require(game.ReplicatedStorage.Creatures.Host [host.Class])

 char.Stats.Power = host.Power
 char.Stats.Speed = host.Speed
 char.Stats.MaxHealth = host.MaxHp
 char.Stats.HealthRegen = host.HPRegen

--Enemy modifier

local enemy = {
	Name = "Agni", -- Enemy name here
	Power = 0,
	Speed = 16,
	MaxHp = 100,
	HPRegen = 0.333333
}

local char2 = require(game.ReplicatedStorage.Creatures.Enemies [enemy.Class])

 char2.Stats.Power = enemy.Power
 char2.Stats.Speed = enemy.Speed
 char2.Stats.MaxHealth = enemy.MaxHp
 char2.Stats.HealthRegen = enemy.HPRegen
