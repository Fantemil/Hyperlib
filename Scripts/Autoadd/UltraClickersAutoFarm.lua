local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Ultra Clickers", "Sentinel")
local Tab = Window:NewTab("Autofarm")
local Section = Tab:NewSection("Autofarm Settings")
Section:NewLabel("Autofarms")
Section:NewButton("On", "ButtonInfo", function()
    getgenv().farmer = true; 

while wait() do
    if getgenv().farmer == true then
    workspace.Events.AddClick:FireServer()
    end
end


end)

Section:NewButton("Off", "ButtonInfo", function()
    getgenv().farmer = false; 

while wait() do
    if getgenv().farmer == true then
    workspace.Events.AddClick:FireServer()
    end
end


end)