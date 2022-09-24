-- Freadbear's Mega Roleplay
-- BROUGHT TO YOU BY RSCRIPTS.NET!

-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Venyx", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

function findPlr(name)
for _,v in pairs(game:GetService("Players"):GetPlayers()) do
     if string.find(v.Name, name) then
         return v
     end
end
return nil
end

-- first page
local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Costumes")
local section2 = page:addSection("Misc")

section1:addTextbox("Mutate", "Player", function(value, focusLost)
if focusLost then
print(value)
local Player = findPlr(value)
print(Player.Name)
local Player = game.Workspace:FindFirstChild(Player.Name)
game:GetService("ReplicatedStorage").Characters.Freddy:FireServer(Player,Player.Humanoid)
game:GetService("ReplicatedStorage").Characters.Bonnie:FireServer(Player,Player.Humanoid)
game:GetService("ReplicatedStorage").Characters.Chica:FireServer(Player,Player.Humanoid)
game:GetService("ReplicatedStorage").Characters.Foxy:FireServer(Player,Player.Humanoid)
end
end)

section1:addButton("Mutate all", function()
for _,v in pairs(game:GetService("Players"):GetPlayers()) do
local Player = game.Workspace:FindFirstChild(v.Name)
game:GetService("ReplicatedStorage").Characters.Freddy:FireServer(Player,Player.Humanoid)
game:GetService("ReplicatedStorage").Characters.Bonnie:FireServer(Player,Player.Humanoid)
game:GetService("ReplicatedStorage").Characters.Chica:FireServer(Player,Player.Humanoid)
game:GetService("ReplicatedStorage").Characters.Foxy:FireServer(Player,Player.Humanoid)
end
end)

local characters = {}
for _,v in pairs(game:GetService("ReplicatedStorage").Characters:GetChildren()) do
     table.insert(characters, v.Name)
end

local chosenanimatronic = nil
local chosenplayer = nil

section1:addDropdown("Animatronic", characters, function(text)
print("Selected", text)
chosenanimatronic = game.ReplicatedStorage.Characters:FindFirstChild(text)
end)

section1:addTextbox("Player", "Player", function(value, focusLost)
if focusLost then
print(value)
local Player = findPlr(value)
print(Player.Name)
chosenplayer = game.Workspace:FindFirstChild(Player.Name)
end
end)

section1:addButton("Transform", function()
chosenanimatronic:FireServer(chosenplayer,chosenplayer.Humanoid)
end)

section1:addButton("Transform all", function()
for _,v in pairs(game:GetService("Players"):GetPlayers()) do
local Player = game.Workspace:FindFirstChild(v.Name)
chosenanimatronic:FireServer(Player,Player.Humanoid)
end
end)

section2:addButton("Badges", function()
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
end)

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- load
venyx:SelectPage(venyx.pages[1], true)