local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Vehicle Legends", "Synapse")

local Tab = Window:NewTab("Home")
local Section = Tab:NewSection("thanks for checking out my script! :D")

local Tab = Window:NewTab("Pumpkin Autofarm")
local Section = Tab:NewSection("Made By ToraIsMe")
Section:NewButton("Pumpkin Autofarm", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0vehicle", true))()
end)

local Tab = Window:NewTab("Money Autofarm")
local Section = Tab:NewSection("Made By AaronS")
Section:NewButton("Money Autofarm", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AaronS69420/WheelHub/main/MainFile", true))()
end)

local Tab = Window:NewTab("Others")
local Section = Tab:NewSection("UI")
Section:NewKeybind("bind", "", Enum.KeyCode.X, function()
 Library:ToggleUI()
end)



local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("ilyyAlex --scriptblox")
local Section = Tab:NewSection("alez#8715 -- discord")