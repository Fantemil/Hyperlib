local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Foil's First Gui", "DarkTheme")
local Tab = Window:NewTab("Money and Xp")
local Section = Tab:NewSection("Money")
Section:NewButton("Xp", "Gives you 10k xp", function()
game:GetService("ReplicatedStorage").Events.TesterAcess.k10expk:FireServer()
end)
Section:NewButton("Money", "Gives you 100k Yen", function()
game:GetService("ReplicatedStorage").Events.TesterAcess.k100k:FireServer()
end)
Section:NewButton("Max Mastery", "Gives you the max breath without the gourd shit", function()
game:GetService("ReplicatedStorage").Events.TesterAcess.maxlvlbreath() 
end)
Section:NewToggle("Money and Xp", "Loops giving both", function(state)
    if state then
while wait() do
game:GetService("ReplicatedStorage").Events.TesterAcess.k100k:FireServer()
game:GetService("ReplicatedStorage").Events.TesterAcess.k10expk:FireServer()
end
local amount=15
for i=1,amount do
game:GetService("ReplicatedStorage").Events.TesterAcess.k100k:FireServer()
game:GetService("ReplicatedStorage").Events.TesterAcess.k10expk:FireServer()
end
    else
while wait() do
game:GetService("ReplicatedStorage").Events.TesterAcess.k100k:FireServer()
game:GetService("ReplicatedStorage").Events.TesterAcess.k10expk:FireServer()
end
local amount=15
for i=1,amount do
game:GetService("ReplicatedStorage").Events.TesterAcess.k100k:FireServer()
game:GetService("ReplicatedStorage").Events.TesterAcess.k10expk:FireServer() 
end
    end
end)