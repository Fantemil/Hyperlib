local _ = require(
   game:GetService'ReplicatedStorage':WaitForChild'Data'
)

local Currencies = rawget(
   rawget(
       _,
       'ImportantData'
   ),
   'Currencies'
)


local Stats = rawget(
   rawget(
       _,
       'ImportantData'
   ),
   'Stats'
)

rawset(Stats, 'currentLevel', 2048)
rawset(Stats, 'currentGrasshop', 2048)
rawset(Stats, 'currentPrestige', 4096)
rawset(Stats, 'totalCrystalize', 4096)
rawset(Stats, 'totalPrestige', 4096)
rawset(Stats, 'totalGrasshop', 2048)

task.spawn(
   function()
       local _ = _
       while task.wait() do
           rawset(Stats, 'colliderSize', 0x7f)

           _:updateColliderSize()      
       end  
   end    
)

_ = {
   number = 2,
   exponent = 63
}

rawset(Currencies, 'grass', _)
rawset(Currencies, 'agrass', _)
rawset(Currencies, 'platinum', _)
rawset(Currencies, 'perks', _)
rawset(Currencies, 'steel', _)
rawset(Currencies, 'crystals', _)
rawset(Currencies, 'momentum', _)
rawset(Currencies, 'oil', _)
rawset(Currencies, 'prestigePoints', _)
rawset(Currencies, 'flowers', _)
rawset(Currencies, 'anonymityPoints', _)
rawset(Currencies, 'pancakes', bit32.lshift(1, 31))