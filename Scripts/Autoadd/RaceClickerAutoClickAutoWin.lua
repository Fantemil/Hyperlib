getgenv().awin = false
getgenv().aclick = false

function awin()
 spawn(function()
  while getgenv().awin do
   wait()
   for _,v in pairs(game:GetService("Workspace").Environment:GetDescendants()) do
    if v.Name == "TouchInterest" then
     if not getgenv().awin then break end
     firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
     wait(0.1)
     firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
    end
   end
  end
 end)
end

function aclick()
 spawn(function()
  click = nil
  for i,v in pairs(getgc()) do
   if type(v) == 'function' then
    if debug.getinfo(v).name == "Click" then
     click = v
    end
   end
  end
  while getgenv().aclick do
   wait()
   for i = 1,1000 do
    click(UDim2.new(0,0,0),1)
   end
  end
 end)
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Race Clicker!", "Ocean")
 
local Farming = Window:NewTab("Main")
local Credits = Window:NewTab("Credits")
local AutoFarm = Farming:NewSection("Main")
local Credit = Credits:NewSection("Credit:")
local Discord = Credits:NewSection("Discord")

AutoFarm:NewToggle("Auto Click", "Auto CLick for you", function(bool)
    getgenv().aclick = bool
    if bool then
        aclick()
    end
end)

AutoFarm:NewToggle("Auto Win", "Auto win", function(bool)
    getgenv().awin = bool
    if bool then
        awin()
    end
end)

Credit:NewLabel("Made By Bebedi#9960")
 
Discord:NewButton("Copy Discord Link", "Copy the Arcane Discord URL", function()
    setclipboard("https://discord.gg/ArKmNgwXHV")
end)