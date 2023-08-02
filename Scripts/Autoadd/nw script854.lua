-- YOU CAN GET KEY at https://tightstudios.xyz/getkey.php 
if you have any questions join our discord server its in the description

getgenv().Settings = {
key = "yourkeyhere", --//  replace yourkeyhere to yourkey

--// UI SETTINGS
Style = 1,
SizeX = 500,
SizeY = 350,
Theme = "Light",
MainFrame = Color3.fromRGB(0, 0, 0),

--// GLOBAL SETTINGS 
gametoloadscriptfor  = "northwind", -- ff2,northwind,hoopz


--// SETTINGS FOR HOOPZ
betamode = true, -- making this false will make u able to use old aimbot
thingthatcanmakeaimbotgood = math.huge, --// if aimbot ever breaks i can just change this number yawn
defaultoffset = 35, --// default aimbot offset  
defaultautoshotdelay = .1, --// default auto shoot delay
maxspeed = 19, --// max speed  for speed slider  
defaultreachdistance = 5, --// reach distance
defaultautopickupdistance = 5 --// auto pickup distance
}

loadstring(game:HttpGet('https://tightstudios.xyz/loader.lua'))()