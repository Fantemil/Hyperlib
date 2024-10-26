--Made By Zephyr
local kavoUi = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local window = kavoUi.CreateLib("Zephyr | Break In Chooser","DarkTheme")

---Tabs

local Tab1 = window:NewTab("Main")
local Tab1Section = Tab1:NewSection("Main")

---Buttons

Tab1Section:NewButton("Lobby","Executed Lobby Script",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknownlodfc/idk/main/Zephyr%20%7C%20Break%20In%20%5BLOBBY%5D"))()
end)

Tab1Section:NewButton("Break In","Execute Game Script",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknownlodfc/idk/main/Zephyr%20%7C%20Break%20In%20%5BGAME%5D"))()
end)
