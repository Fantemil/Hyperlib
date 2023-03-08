-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local plr = game:GetService("Players").LocalPlayer
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 


getgenv().Auto = true -- turn to false and re-execute if u wan to turn off


-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
if getgenv().Auto == true then
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
   repeat
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    for _,v in pairs(game:GetService("Workspace").Souls:GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    pcall(function()firetouchinterest(plr.Character.HumanoidRootPart, v, 0)end)   
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    wait()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
    wait()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
until getgenv().Auto == false 
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
end
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 

-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
local vu = game:GetService("VirtualUser")
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
 game:GetService("Players").LocalPlayer.Idled:connect(function()
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
  wait(1)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 
 end)
-- [[ dsc.gg/grimcity | Copyright Â© 2022 Grims Communityâ¢ ]] -- 