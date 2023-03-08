--// you can get the key at https://tightstudios.xyz/getkey.php 


getgenv().TSSettings = {
key = "yourkeyhere", --//  replace yourkeyhere to yourkey

--// UI SETTINGS
Style = 1,
SizeX = 500,
SizeY = 350,
Theme = "Light",
MainFrame = Color3.fromRGB(0, 0, 0),

--// GLOBAL SETTINGS 
gametoloadscriptfor  = "hoopz", -- ff2,northwind,hoopz,rb4,tnf

}


loadstring(game:HttpGet('https://tightstudios.xyz/loader.lua'))()