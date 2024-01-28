function CollectNotes()
for i, v in workspace.Notes:GetChildren() do
 if v:FindFirstChild("ProximityPrompt") then
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
  task.wait(.25)
  fireproximityprompt(v.ProximityPrompt)
 end
end
end
function CollectCoins()
for i, v in workspace.House.Coins:GetChildren() do
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Coin.CFrame
 task.wait(.25)
 fireproximityprompt(v.Main:FindFirstChild("ProximityPrompt"))
end
end
function Exit()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.House.ExitPart.CFrame
task.wait(.25)
fireproximityprompt(workspace.House.ExitPart.ProximityPrompt)
end
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Consistt/Ui/main/UnLeaked"))()
local lp = game:GetService("Players").LocalPlayer
local char = lp.Character
local Root = char.HumanoidRootPart
local Camera = workspace.CurrentCamera

lp.CharacterAdded:Connect(function(c)
 char = c
 task.spawn(function()
  Root = c:WaitForChild("HumanoidRootPart")
 end)
end)

local Notif = library:InitNotifications()
local LoadingXSX = Notif:Notify("XI Hub // Nightlight Script", 4, "information")

function encode(thing) return game:GetService("HttpService"):JSONEncode(thing) end
function decode(thing) return game:GetService("HttpService"):JSONDecode(thing) end

library.title = "XI Hub"

if isfile("XIHub/Settings.json") then
 settings = game:GetService("HttpService"):JSONDecode(readfile("XIHub/Settings.json"))
else
 settings = {
  Animation1 = true,
  CollectCoins = false,
  FB = false
}
makefolder("XIHub")
writefile("XIHub/Settings.json", game:GetService("HttpService"):JSONEncode(settings))
end
if settings.Animation1 then
library:Introduction()
end
local range = settings.Range
local Init = library:Init()
local Tab1 = Init:NewTab("Main")
local STab = Init:NewTab("Settings")

STab:NewToggle("UI Startup Animation", settings.Animation1, function(state)
 settings.Animation1 = state
end)

STab:NewToggle("Collect Coins", settings.CollectCoins, function(value)
    local vers = value and "on" or "off"
    CC = value
    settings.CollectCoins = value
end)
local Toggle = STab:NewToggle("FullBright", settings.FB, function(value)
 settings.FB = value
 if value then
  game:GetService("Lighting").Ambient = Color3.fromRGB(255,255,255)
 else
  game:GetService("Lighting").Ambient = Color3.fromRGB(0,0,0)
 end
end)
Tab1:NewButton("Collect Notes", function()
local CurrentCF = Root.CFrame
CollectNotes()
task.wait(.24)
Root.CFrame = CurrentCF
end)
Tab1:NewButton("Collect Coins", function()
local CurrentCF = Root.CFrame
CollectCoins()
task.wait(.24)
Root.CFrame = CurrentCF
end)
Tab1:NewButton("Collect Matches", function()
local CurrentCF = Root.CFrame
for i, v in workspace.Matches:GetChildren() do
 if v:IsA("Model") then
 Root.CFrame = v.Main.CFrame
 task.wait(.24)
 fireproximityprompt(v.Main.ProximityPrompt)
 end
end
task.wait(.24)
Root.CFrame = CurrentCF
end)
Tab1:NewButton("Win", function()
  for i = 1, 3, 1 do
   CollectNotes()
   if CC then
    CollectCoins()
   end
   Exit()
   task.wait(.75)
 end
end)

game:GetService("CoreGui"):WaitForChild("screen").edge.Draggable = true
game:GetService("CoreGui"):WaitForChild("screen").edge.Active = true
game:GetService("Players").PlayerRemoving:Connect(function(p)
if p == lp then
 writefile("XI Hub/Settings.json", encode(settings))
end
end)