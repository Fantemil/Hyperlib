local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Synapse Ui", "DarkTheme")
local Tab = Window:NewTab("Main Menu")local Section = Tab:NewSection("Main menu")
Section:NewButton("Synapse X Gui", "Its so realistic", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/fortnitemodder/SYNAPSE/main/2022workinglegit')))() 
   print("Clicked")
end)