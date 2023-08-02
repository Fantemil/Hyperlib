-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
for _,v in pairs(game:GetService("Workspace").Questions:GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    for a,x in pairs(v:GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        if x.Name ~= "Obby" then
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
            if x.Name == "10" then
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
                 x["Question+Choices"].TELEPORT.WalkThroughTeleport.BrickColor = BrickColor.new("Lime green")  
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
                else
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
                   x["Question+Choices"].CorrectDoor.BrickColor = BrickColor.new("Lime green")  
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
             end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
         end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
     end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
 end 
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
