getgenv().Auto = true -- turn to false and re-execute if u wan to turn off

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local plr = game:GetService("Players").LocalPlayer
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
if getgenv().Auto == true then
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
   repeat
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    for _,v in pairs(game:GetService("Workspace").Souls:GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    pcall(function()firetouchinterest(plr.Character.HumanoidRootPart, v, 0)end)   
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    wait()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    wait()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
until getgenv().Auto == false 
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
local vu = game:GetService("VirtualUser")
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
	game:GetService("Players").LocalPlayer.Idled:connect(function()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
		wait(1)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
	end)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
