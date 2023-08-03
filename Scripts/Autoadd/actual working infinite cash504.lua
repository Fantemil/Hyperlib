local main = require(game:GetService("Players").LocalPlayer.PlayerScripts.Client.cmain.datum)
local set_con = syn_context_set or setthreadcontext

local function call(func, ...)
   set_con(2)
   func(...)
   set_con(7)
end

call(main.Pets.GiveAllPets)
call(main.Stats.CoinsAdd, math.huge)
call(main.Stats.StarsAdd, math.huge)