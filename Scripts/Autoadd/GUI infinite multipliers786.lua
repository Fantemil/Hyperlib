--I added actual mobile support for your arceus poopsplotis or whatever

--This script was made by uwy5 on discord. Server for crystalhub: discord.gg/FJQXYfaAh2

local UIS  = game:GetService("UserInputService")

mobile = (UIS.TouchEnabled)

if not mobile then
loadstring(game:HttpGet("https://raw.githubusercontent.com/railme37509124/SuperPissingFuckSimulator/main/uwy_on_top_2.lua", true))()
else
getgenv().chestSpeed = false
getgenv().luckMultiplier = true
getgenv().speed_MAY_INCREASE_LAG_IF_TOO_HIGH = 5

local github = "railme37509124"
local reponame = "SuperPissingFuckSimulator"
local filename = "uwyontop_1.lua"

local load = `https://raw.githubusercontent.com/{github}/{reponame}/main/{filename}`

loadstring(game:HttpGet(load, true))()
end