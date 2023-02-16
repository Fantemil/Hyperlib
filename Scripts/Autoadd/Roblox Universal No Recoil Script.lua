--BROUGHT TO YOU BY RSCRIPTS.NET--

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()
library.flags = { }
local nr = library:Window("No Recoil")


library.flags["value_1"] = 1
library.flags["value_2"] = 1
library.flags["value_3"] = 1

nr:Slider("Value 1", 1, 10, 1, function(value)
  library.flags["value_1"] = value
end)
nr:Slider("Value 2", 1, 100, 1, function(value)
  library.flags["value_2"] = value
end)
nr:Slider("Value 3", 1, 10, 1, function(value)
  library.flags["value_3"] = value
   
end)


local old
old = hookfunction(math.random, function(...)
   local args = {...}

   -- handle if no args, math.random() (0, 1.0)
   if args[1] == nil then
       return old() / library.flags["value_1"]
   end

   -- handle if upper bound. math.random(10) (1, 10)
   if args[2] == nil then
       return old(args[1] / library.flags["value_2"])
   end

   -- handle if lower and upper bound. math.random(-5, 5) (-5, 5)

   return old(args[1], args[2] / library.flags["value_3"])
end)