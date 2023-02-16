local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("RTX GUI", "Ocean")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")


MainSection:NewTextBox("Bans Are Not My Fault", "Cred:xDepressionx,IceHub,shlexware,skatbr,EdgeIY", function(txt)
 print(txt)
end)
-- Farming
local Farming = Window:NewTab("Farming")
local FarmingSection = Farming:NewSection("Farming")


FarmingSection:NewButton("Blox Fruit Farm", "Opens Blox Fruit Gui", function()
 loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
end)
-- Teleports
local Teleports = Window:NewTab("Teleports")
local TeleportsSection = Teleports:NewSection("Teleports")


TeleportsSection:NewButton("Auto Chest Tp", "Brings Up Chest Tp Gui", function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)
-- Esp
local Esp = Window:NewTab("Esp")
local EspSection = Esp:NewSection("Esp")


EspSection:NewButton("Esp", "Gives Esp Gui", function()
 local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

 local Window = OrionLib:MakeWindow({Name = tostring("Semi-Catholic ESP"), HidePremium = false, SaveConfig = false})
 
 local Tab = Window:MakeTab({
   Name = "Main",
   Icon = "rbxassetid://4483345998",
   PremiumOnly = false
 })
 
 getgenv().cham = false
 getgenv().nameESP = false
 getgenv().boxESP = false
 
 
 getgenv().esp_loaded = false
 getgenv().Visibility = false
 
 
 Tab:AddToggle({
  Name = "Visual",
  Default = getgenv().Visibility,
  Callback = function(Value)
   if getgenv().esp_loaded == false and Value == true then
    getgenv().esp_loaded = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
   end
   getgenv().Visibility = Value
  end   
 })
 
 Tab:AddToggle({
  Name = "Box ESP",
  Default = getgenv().Visibility,
  Callback = function(Value)
   if getgenv().esp_loaded == false and Value == true then
    getgenv().esp_loaded = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
   end
   getgenv().boxESP = Value
  end   
 })
 
 
 Tab:AddToggle({
  Name = "Name",
  Default = getgenv().Visibility,
  Callback = function(Value)
   if getgenv().esp_loaded == false and Value == true then
    getgenv().esp_loaded = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
   end
   getgenv().nameESP = Value
  end   
 })
 
 
 Tab:AddToggle({
  Name = "Chams",
  Default = getgenv().Visibility,
  Callback = function(Value)
   if getgenv().esp_loaded == false and Value == true then
    getgenv().esp_loaded = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
   end
   getgenv().cham = Value
  end   
 })
 
 
 function SendNote(message : string, time)
  OrionLib:MakeNotification({
   Name = "Title!",
   Content = message,
   Image = "rbxassetid://4483345998",
   Time = time or 3
  })
 end
 
 
 
 Tab:AddToggle({
   Name = "Use Team-Color",
   Default = false,
   Callback = function(Value)
    getgenv().useTeamColor = Value
   end
 })
 
 
 
 local orionion = game:GetService("CoreGui"):FindFirstChild("Orion")
 
 local destroygui = Tab:AddButton({
  Name = "Destroy GUI",
  Callback = function()
   orionion:Destroy()
   OrionLib:Destroy()
     
   wait(1)
     
   OrionLib:MakeNotification({
    Name = "Removing GUI...",
    Content = "GUI is removed!",
    Time = 3
   })
  end   
 })
 
 
 
 OrionLib:Init()
end)
-- Settings/Misc
local SettingsAndMisc = Window:NewTab("SettingsAndMisc")
local SettingsAndMiscSection = SettingsAndMisc:NewSection("SettingsAndMisc")


SettingsAndMiscSection:NewButton("Admin", "Gives Admin Bar", function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)