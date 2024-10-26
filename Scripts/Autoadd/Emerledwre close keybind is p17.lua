local PabloLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/BatuKvi123/PabloLibV3/main/PabloLibV3"))()
local window = PabloLib:Create(
"emeraledware best parkour ninja gui", -- Name here.
"Enabled", -- If you want draggable set here to "Enabled" if you dont want set to "Disabled".
"p" -- You can put any keybind here to open close.
)

----Tabs---
local tab1 = window:CreateTab("Scripts")

---buttons---

tab1:CreateButton("script 1", function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Be-A-Parkour-Ninja-PrKour-ninj-uto-kill-script-11268"))()
end)

---buttons--- 

tab1:CreateButton("parkour script 2 ", function()
loadstring(game:HttpGet("https://pastebin.com/raw/sKNLTgaT"))()
end)

---buttons---

tab1:CreateButton(" parkour script 3", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubLoader.lua",true))()
end)

---buttons---

tab1:CreateButton("parkour script 4", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
 
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
 
game.StarterGui:SetCore("SendNotification", {
    Title = "Subscribe To JN HH Gaming";
    Text = "Made by JN HH Gaming"; -- what the text says (ofc)
    Duration = 60;
})
wait(1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Have Fun Killing";
    Text = "Enjoy"; -- what the text says (ofc)
    Duration = 60;
})
_G.HeadSize = 20
_G.Disabled = true
 
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

---buttons---

tab1:CreateButton("key: 96b5ef6e00-8ff6683644-00beaf24cd", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NooVster/NOOVHUB/main/Source"))()
end)

---buttons---

tab1:CreateButton("script 4", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Min1273/n-to/main/README.md"))()
end)

local tab3 = window:CreateTab("creds emeraled8441")




















