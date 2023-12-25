local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/Nick-s-Modded-KAVO-Lib/main/Nick'sModdedKavoLib.lua"))()

local Window = Library.CreateLib("TITLE", "Midnight")

local Tab = Window:NewTab("TabName")

local Section = Tab:NewSection("Section Name")

Section:NewLabel("LabelText")

Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)