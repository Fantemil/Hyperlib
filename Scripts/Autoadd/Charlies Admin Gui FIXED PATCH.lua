--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Charlies Admin Gui", "DarkTheme")

local Tab = Window:NewTab("commands")

local Section = Tab:NewSection("all commands")

Section:NewButton("Fly", "why walk when you can fly", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Fly.txt"))()
end)

Section:NewButton("BTools", "Building Tools (clientsided)", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)

Section:NewButton("INF Jump", "Spam the spacebar to jump as high as you want.", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Jump.txt"))()
end)

Section:NewButton("RemoveLegs", "Removes the legs from your player's character.", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Remove%20Legs.txt"))()
end)


local Tab = Window:NewTab("more commands")

local Section = Tab:NewSection("all commands")

Section:NewButton("Invisible", "become invisible", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Invisible%20Character.txt"))()
end)

Section:NewButton("Limp Character", "idk what to put here", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Limp%20Character.txt"))()
end)

Section:NewButton(" Magnetize To Player", "Makes your character magnetically attracted to another player.", function()
    print("Clicked")
end)

Section:NewButton("blockhead", "Button", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Blockhead.txt"))()
end)

Section:NewButton("float", "Button", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Float%20Character.txt"))()
end)

Section:NewButton("Night", "Button", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Night%20Time%20Toggle.txt"))()
end)

Section:NewButton("Human Flashlight", "Turns your character into a private flashlight.", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Human%20Flashlight.txt"))()
end)

Section:NewButton("Remove Arms", "Button", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Remove%20Arms.txt"))()
end)

Section:NewButton("Owl Hub", "Button", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/OwlHub.txt"))()
end)

Section:NewButton("Ez Hub", "ButtonInfo", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Ez%20Hub.txt"))()
end)

Section:NewButton("Dex", "dex", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end)

Section:NewButton("Aimbot", "aimbot", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20Aimbot.txt"))()
end)

Section:NewButton("WRD Esp", "Button", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20ESP.txt"))()
end)

Section:NewButton("Universal ESP and Aimbot", "ButtonInfo", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Universal%20ESP%20+%20Aimbot.txt"))()
end)

Section:NewButton("Teleport to Player", "ButtonInfo", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Teleport%20To%20Player.txt"))()
end)

Section:NewButton("speed (broken idk why)", "ButtonInfo", function()
local Character = game:GetService("Players").LocalPlayer.Character
local Run = true

local userInputService = game:GetService("UserInputService")
userInputService.InputBegan:Connect(function(R)
	if R.KeyCode == Enum.KeyCode.LeftControl then
		if Run then
			Run = false
			Character.Humanoid.WalkSpeed = 100 
		else
			Run = true
			Character.Humanoid.WalkSpeed = 16
		end
	end
end)
end)

Section:NewSlider("speed fixed", "fixed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewButton("Gravity Switch (press e)", "Button", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Gravity%20Switch.txt"))()
end)

Section:NewButton("Unlock Workspace Baseparts", "Unlocks all bricks in the game so you can use btools on them.", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Unlock%20Workspace%20Baseparts.txt"))()
end)

Section:NewButton("RoCitizens Infinite Money", "Drown in cash while playing RoCitizens.", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/RoCitizens%20Infinite%20Money.txt"))()
end)

Section:NewButton("Anti-Afk", "Even when you switch to another window, you will appear to be active.", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/anti-afk%20via%20autofocus.txt"))()
end)

Section:NewButton("Click TP", "Left ctrl + click on any spot on the game and you will immediately teleport to it!", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Click%20Teleport.txt"))()
end)

Section:NewButton("Invicibility might be broken", "ButtonInfo", function()
local LocalPlayer = game:GetService(“Players”).LocalPlayer
local function Invincibility()
if LocalPlayer.Character then
for i, v in pairs(LocalPlayer.Character:GetChildren()) do
if v.Name == “hitbox” then
v:Destroy()
end
end
end
end
while wait(0.5) do
Invincibility(LocalPlayer)
end
end)