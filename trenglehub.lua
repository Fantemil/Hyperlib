local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Library/kavo-ui.lua"))()
local Window = Library.CreateLib("Trenglehub", "Sentinel")

local generalscripts = Window:NewTab("General Scripts")
local generalscriptssection = generalscripts:NewSection("---General Scripts---")
generalscriptssection:NewButton("Infinite Yield", "Made by EdgeIY and more", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)



if game.PlaceId == 192800 then
    local main = Window:NewTab("Work at a Pizza Place")
    local script = main:NewSection("---Scripts---")
    
    script:NewButton("FE Gui with Autofarm", "Made by ameicaa, distributed through TurkOyuncu99", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/TurkOyuncu99.lua"))()
    end)

    script:NewButton("Normal Autofarm", "Made by unknown", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Work%20at%20a%20Pizza%20Place%20Autofarm.lua"))()     
    end)
end






