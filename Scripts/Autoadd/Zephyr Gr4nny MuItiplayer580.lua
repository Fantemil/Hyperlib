local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SoyAdriYT/AstroX/main/LibraryUI/KavoUI.lua"))()

local Window = Library.CreateLib("Choose The Chapter!", "DarkTheme")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")


Section:NewButton("Chapter One", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknownlodfc/Zephyr/refs/heads/main/Zephyr%20%7C%20Granny%20Multiplayer%20%7C%20Chapter%20One"))()
end)

Section:NewButton("Chapter Two", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknownlodfc/Zephyr/refs/heads/main/Zephyr%20%7C%20Granny%20Multiplayer%20%7C%20Chapter%20Two"))()
end)