repeat wait() until game:IsLoaded()
local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source2.lua"))()
local UI = Venyx.new({
  title = "Animal Simulator - By Pirator/Lucky"
})

local Themes = {
  Background = Color3.fromRGB(24, 24, 24),
  Glow = Color3.fromRGB(0, 0, 0),
  Accent = Color3.fromRGB(10, 10, 10),
  LightContrast = Color3.fromRGB(20, 20, 20),
  DarkContrast = Color3.fromRGB(14, 14, 14),  
  TextColor = Color3.fromRGB(255, 255, 255)
}

local Main = UI:addPage({
  title = "Main",
  icon = 887262219
})

local Gameplaydiv = Main:addSection({
  title = "Gameplay"
})

local function findPlr(name)
for _,v in pairs(game:GetService("Players"):GetPlayers()) do
    if string.find(v.Name, name) then
        return v
    end
end
return nil
end

local function damageplayer(player)
for i,p in pairs(game.Workspace:GetChildren()) do
if p.Name == player then
print("Damaging " .. player)
game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(p.Humanoid,1) -- the last arguement is not damage don't bother changin it
print("Damaged " .. player)
end
end
end

local collecting = false

Gameplaydiv:addToggle({
title = "Collect Chests",
toggled = nil,
callback = function(value)
collecting = value
while wait(3) and collecting do
  game:GetService("ReplicatedStorage").TreasureEvent:FireServer(workspace.Treasures.Treasure5)
end
end})

local damagedplayer = nil

Gameplaydiv:addTextbox({
  title = "Choose Player",
  default = "Mr. Poopy Pants",
  callback = function(text, focusLost)
      if (focusLost) then
       print("Searching " .. text)
       local Player = findPlr(text)
       print("Found " .. tostring(Player))
       local Player = game.Workspace:FindFirstChild(Player.Name)
       damagedplayer = tostring(Player)
      end
  end
})

Gameplaydiv:addButton({
  title = "Damage Player",
  callback = function()
  damageplayer(damagedplayer)
  end
})

Gameplaydiv:addButton({
  title = "Damage All", -- does not damage yourself or players in safe-zone
  callback = function()
  for i,v in pairs(game.Players:GetChildren()) do
   for i,p in pairs(game.Workspace:GetChildren()) do
   if p.Name == v.Name and p.Name ~= game.Players.LocalPlayer.Name then
   game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(p.Humanoid,1)
   end
   end
  end
   end
})

local Theme = UI:addPage({
  title = "Theme",
  icon = 4890363233
})

local Colors = Theme:addSection({
  title = "Colors"
})

for theme, color in pairs(Themes) do
  Colors:addColorPicker({
      title = theme,
      default = color,
      callback = function(color3)
          UI:setTheme({
              theme = theme,
              color3 = color3
          })
      end
  })
end

UI:SelectPage({
  page = UI.pages[1],
  toggle = true
})