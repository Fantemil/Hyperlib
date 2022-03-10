local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Library/kavo-ui.lua"))()
local Window = Library.CreateLib("Trenglehub", "Sentinel")


if game.PlaceId == 192800 then
    local main = Window:NewTab("Work at a Pizza Place")
    local script = Tab:NewSection("Scripts")
    
    script:NewButton("ButtonText", "ButtonInfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/TurkOyuncu99.lua"))()
    end)
end

