-- ____  _           _   _             _
--| __ )| | _____  _| | | |_   _ _ __ | |_
--|  _ \| |/ _ \ \/ | |_| | | | | '_ \| __|
--| |_) | | (_) >  <|  _  | |_| | | | | |_
--|____/|_|\___/_/\_|_| |_|\__,_|_| |_|\__|
-- developed by supra1234

_G.Autofarm = true; -- Change to false to end farming
_G.Antiafk = false;  -- Change to true to not get kicked
_G.Antiteleport = false;  -- Change to true to block teleports


spawn(function()
     while _G.Autofarm == true do
         local args = {[1] = 1}
game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-92.9, 61.9, 143.5)
         wait()
     end
end)

spawn(function()
     while _G.Antiteleport == true do
         local args = {[1] = 1}
local A_1 = "AFK"
local Event = game:GetService("ReplicatedStorage").GameFunctions.ChangeSettings
Event:FireServer(A_1)
         wait(9999)
     end
 end)

spawn(function()
     while _G.Antiafk == true do
         local args = {[1] = 1}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Anti-Kick/main/Anti%20Kick.lua"))()
         wait(9999)
     end
 end)