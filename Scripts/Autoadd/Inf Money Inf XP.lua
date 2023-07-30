--https://discord.gg/j4MvQcWTNS
--Rhyon#3143

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Destruction Simulator", "BloodTheme")

--Money
local Money = Window:NewTab("Money")
local MoneySection = Money:NewSection("Money Options")

MoneySection:NewButton("Money", "Click for alot of money", function()
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, 5000000)
end)

--Exp
local Exp = Window:NewTab("Exp")
local ExpSection = Exp:NewSection("Exp Options")

ExpSection:NewButton("Exp", "Click 1 time for 10 level", function()
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, 10)
end)

--Player
local Player = Window:NewTab("Local Player")
local PlayerSection = Player:NewSection("Local Player Options")

PlayerSection:NewButton("ESP", "See players thru any material/object.", function()
	loadstring(game:HttpGet('https://pastebin.com/raw/tLH1mGy9'))()
end)

--Tab
local Tab = Window:NewTab("Toggle GUI")
local TabSection = Tab:NewSection("Open and Close GUI")

TabSection:NewKeybind("Open and Close GUI", "Change keybind and u can toggle", Enum.KeyCode.Insert, function()
	Library:ToggleUI()
end)

--Notifications
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback

game.StarterGui:SetCore("SendNotification",  {
	Title = "Rhyon#3143";
	Text = "https://discord.gg/j4MvQcWTNS join up!";
	Icon = "";
	Duration = 30;
	Callback = NotificationBindable;
})



--https://discord.gg/j4MvQcWTNS
--Rhyon#3143

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Destruction Simulator", "BloodTheme")

--Money
local Money = Window:NewTab("Money")
local MoneySection = Money:NewSection("Money Options")

MoneySection:NewButton("Money", "Click for alot of money", function()
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, 5000000)
end)

--Exp
local Exp = Window:NewTab("Exp")
local ExpSection = Exp:NewSection("Exp Options")

ExpSection:NewButton("Exp", "Click 1 time for 10 level", function()
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, 10)
end)

--Player
local Player = Window:NewTab("Local Player")
local PlayerSection = Player:NewSection("Local Player Options")

PlayerSection:NewButton("ESP", "See players thru any material/object.", function()
	loadstring(game:HttpGet('https://pastebin.com/raw/tLH1mGy9'))()
end)

--Tab
local Tab = Window:NewTab("Toggle GUI")
local TabSection = Tab:NewSection("Open and Close GUI")

TabSection:NewKeybind("Open and Close GUI", "Change keybind and u can toggle", Enum.KeyCode.Insert, function()
	Library:ToggleUI()
end)

--Notifications
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback

game.StarterGui:SetCore("SendNotification",  {
	Title = "Rhyon#3143";
	Text = "https://discord.gg/j4MvQcWTNS join up!";
	Icon = "";
	Duration = 30;
	Callback = NotificationBindable;
})