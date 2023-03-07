--[[ 

AC Bypass for Steep Steps

Put this script in your autoexe/auto execution folder

might break some stuff related to chat, but it should work normally if you just click the chatbox and write...?

works for most detected things in the game, easy...

]]--


repeat wait() until game:IsLoaded()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts")

local AntiCheatScript_1 = PlayerScripts:WaitForChild("ChatScript")
local AntiCheatScript_2 = PlayerScripts:WaitForChild("BubbleChat")

getsenv(AntiCheatScript_1).bd = "bypassed ez"
getsenv(AntiCheatScript_2).bd = "bypassed ez"

task.wait()

AntiCheatScript_1:Destroy()
AntiCheatScript_2:Destroy()

warn("anti cheat successfully bypassed ez")