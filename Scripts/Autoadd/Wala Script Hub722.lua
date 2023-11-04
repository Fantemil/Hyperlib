local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Wala Script Hub", "DarkTheme")

local Tab = Window:NewTab("Main")

Section:NewButton("Hide GUI", "Hide the GUI", function()
    Library:ToggleUI()
end)

Section:NewButton("Nothing", "It's do nothing", function()
    print("Clicked")
end)