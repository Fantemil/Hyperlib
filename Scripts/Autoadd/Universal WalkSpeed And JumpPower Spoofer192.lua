-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local plr = game:GetService("Players").LocalPlayer
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local Spoof 
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
Spoof = hookmetamethod(game, "__index", function(self, ...)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    if ... == "WalkSpeed" then
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
       return 16
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    if ... == "JumpPower" then
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
       return 50
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
   return Spoof(self, ...) 
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
end)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

