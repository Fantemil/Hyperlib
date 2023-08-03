local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Survive the RISING SLIME! 🤢", "GrapeTheme")
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main Functions")

MainSection:NewButton("Add Stats", "Gives you Slime Points And Survival Points.", function()
    local Event = game:GetService("ReplicatedStorage").PrintName
    for x = 1,300 do
    Event:FireServer()
    end
end)

getgenv().Auto = false
MainSection:NewToggle("Auto Add Stats", "Auto Adds Stats.", function(state)
    if state then
       getgenv().Auto = true
       repeat
           wait()
           local Event = game:GetService("ReplicatedStorage").PrintName
           for x = 1,100 do
            Event:FireServer()
           end
       until getgenv().Auto == false  
    else
       getgenv().Auto = false
    end
end)


