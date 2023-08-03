local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Survive The Wave | u/Chair", "Ocean")
 
local MainTab = Window:NewTab("Main")
local MainTab1 = MainTab:NewSection("MainScripts")
local lastPos = nil
local stateofautofarm = false
local autofarmon = false
local players = game:GetService('Players')
local lplr = players.LocalPlayer
MainTab1:NewToggle("Auto Farm", "kinda slow but atleast its a auto farm", function(state)
if autofarmon == false then
lastPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
stateofautofarm = state
if stateofautofarm == true then
 loadstring(game:HttpGet("https://rscripts.net/raw/anti-cframe-teleport-prevent-games-from-teleporting-you_64343ce00a810.txt"))()
 --thanks u/szze
end
 while stateofautofarm == true do
 autofarmon = true
  game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-234, 20640, -304)
  wait(0.08)
  game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
  wait()
 end
 local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
LocalPlayer:Kick("sorry you have to rejoin i tried making it auto tp you back but it says third party teleport protection unable to confirm")
end)