local colors = {
    SchemeColor = Color3.fromRGB(255, 165, 0),  
    Background = Color3.fromRGB(40, 40, 40),    
    Header = Color3.fromRGB(30, 30, 30),         
    TextColor = Color3.fromRGB(255, 255, 255),
    ElementColor = Color3.fromRGB(50, 50, 50)
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeianRussell/Kavo-UI-Library/main/Movable.source.lua"))()
local Window = Library.CreateLib("Halloween Theme", colors)

local Tab1 = Window:NewTab("Main")
local Section1 = Tab1:NewSection("Main Controls")

Section1:NewButton("Start", "Start the process", function()
    print("Process Started")
end)

local Tab2 = Window:NewTab("Settings")
local Section2 = Tab2:NewSection("Settings Options")

Section2:NewButton("Apply Settings", "Apply your changes", function()
    print("Settings Applied")
end)

local Tab3 = Window:NewTab("About")
local Section3 = Tab3:NewSection("Information")

Section3:NewButton("Info", "About this UI", function()
    print("This is a Halloween-themed UI.")
end)