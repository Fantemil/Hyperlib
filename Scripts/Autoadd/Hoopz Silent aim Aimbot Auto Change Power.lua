-- you can get key at https://tightstudios.xyz/getkey.php 

getgenv().Settings = {
key = "yourkeyhere", --//  replace yourkeyhere to yourkey

--// UI SETTINGS
Style = 1,
SizeX = 500,
SizeY = 350,
Theme = "Light", --// light, Dark,Mocha,Aqua,Jester
MainFrame = Color3.fromRGB(0, 0, 0),

--// GLOBAL SETTINGS 
gametoloadscriptfor  = "hoopz", -- ff2,northwind,hoopz

}

loadstring(game:HttpGet('https://tightstudios.xyz/loader.lua'))()