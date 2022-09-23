getgenv().walkspeed = -1

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local gmt = getrawmetatable(game)
local index = gmt.__newindex
setreadonly(gmt, false)
gmt.__newindex = newcclosure(function(hum, wkspd, val)
 if tostring(hum) == 'Humanoid' and wkspd == 'WalkSpeed' then
  if getgenv().walkspeed ~= -1 then
   return index(hum, wkspd, getgenv().walkspeed)
  end
 end
 return index(hum, wkspd, val)
end)
setreadonly(gmt, true)

local Window = Library.CreateLib("Universal WalkSpeed GUI", "Serpent")

local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")

MainSection:NewSlider("WalkSpeed", "Changes the speed of ur player", 500, 0, function(s)
 getgenv().walkspeed = s
end)