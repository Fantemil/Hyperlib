getgenv().TSSettings = {
    key = "dogsarecute", 
    
    --// UI SETTINGS
    Style = 1,
    SizeX = 500,
    SizeY = 350,
    Theme = "Light", --// Light,Dark,Mocha,Aqua,Jester,
    MainFrame = Color3.fromRGB(0, 0, 0), 
}


local function import(url)
    local formattedurl =  loadstring(game:HttpGet('https://raw.githubusercontent.com/lazywarew/Script/'..url))()
end

import("/main/loadermain.lua")