local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hello Neighbor", "DarkTheme")
--Main
local Main = Window:NewTab("Items")
local MainSection = Main:NewSection("Esp")

MainSection:NewButton("All Items Esp", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/HeY8RNNm"))()
end)

local GrabSection = Main:NewSection("Item Grabber")

GrabSection:NewButton("Grab Red Key", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QA7FCLyw"))()
end)

GrabSection:NewButton("Grab Flashlight", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uWJjspm9"))()
end)

GrabSection:NewButton("Grab Green Key", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/a7pX4aGb"))()
end)

GrabSection:NewButton("Grab Car Key", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/TNs9aQke"))()
end)

GrabSection:NewButton("Grab Yellow Wrench", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/LniLzABD"))()
end)

GrabSection:NewButton("Grab Lockpick", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/7jHiGV54"))()
end)

GrabSection:NewButton("Grab Magnet", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/5DnSgNge"))()
end)