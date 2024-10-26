--// example open source

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TwiRwal/TwiWare/main/uilib.lua"))() -- open source

local Window = Library.CreateLib("example", "Twiware") --// i make my own theme you can use it

local Tab = Window:NewTab("TabName")
local Section = Tab:NewSection("Section Name")
Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)

