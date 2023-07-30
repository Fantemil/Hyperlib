local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Rebirth Clicker X #Rhyon3143", "Synapse")

--Click
local Click = Window:NewTab("Click")
local ClickSection = Click:NewSection("Auto Click")
local Click3Connection

ClickSection:NewToggle("Auto Click", "ToggleInfo", function(state)
    if state then
        Click3Connection = game:GetService("RunService").Heartbeat:Connect(function()
            game:GetService("ReplicatedStorage").Events.Click3:FireServer()
        end)
        print("Toggle On")
    else
        if Click3Connection then
            Click3Connection:Disconnect()
            Click3Connection = nil
        end
        print("Toggle Off")
    end
end)

--Chests
local Chest = Window:NewTab("Chest")
local ChestSection = Chest:NewSection("Open Chests")
local SelectedChest

ChestSection:NewDropdown("Chests", "Choose chest", {"Beach", "Winter", "Cyber", "Nuclear", "Hell", "Group", "Pirate", "Aqua", "Galaxy", "Shadow", "Hacker", "Space"}, function(selectedChest)
    local args = {
        [1] = selectedChest,
    }
    game:GetService("ReplicatedStorage").Events.Chest:FireServer(unpack(args))
end)

ChestSection:NewButton("Daily Spin", "Daily Spin has a 24 hour cooldown", function()
    local function callback(Text)
        if Text == "Working" then
            print ("Ye")
        elseif Text == ("Working") then
            print ("Ye")
        end
    end
    
    local NotificationBindable = Instance.new("BindableFunction")
    NotificationBindable.OnInvoke = callback
    
    game.StarterGui:SetCore("SendNotification",  {
        Title = "Daily Spin";
        Text = "Daily Spin has a 24 hour cooldown.";
        Icon = "http://www.roblox.com/asset/?id=13031848886";
        Duration = 10;
        Callback = NotificationBindable;
    })
    wait(1)
    game:GetService("ReplicatedStorage").Functions.Spin:InvokeServer()
end)



--Eggs
local Egg = Window:NewTab("Eggs")
local EggSection = Egg:NewSection("Open Eggs")
local SelectedEgg

EggSection:NewDropdown("Eggs", "Choose Eggs", {"Basic", "Mythic", "King", "Forest", "Beach", "Atlantis", "Desert", "Winter", "Volcano", "Magma", "Moon", "Cyber", "Magic", "Heaven", "Nuclear", "Void", "Spook"}, function(selectedEgg)
    local args = {
        [1] = selectedEgg,
        [2] = "Triple"
    }
    game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
end)

EggSection:NewLabel("Egg open has no animation, pet is in inventory")

--Player
local Player = Window:NewTab("Local Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Become fast", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "Become The Hulk", 350, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset WS/JP", "Reset speed and jump power", function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

PlayerSection:NewButton("Infinite Yield", "Admin Commands usable in every game.", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

PlayerSection:NewButton("ESP", "See players thru any material/object.", function()
	loadstring(game:HttpGet('https://pastebin.com/raw/tLH1mGy9'))()
end)

PlayerSection:NewButton("Simple Spy", "Find triggers etc.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua'))()
end)









--Misc
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Miscellaneous")

MiscSection:NewKeybind("Toggle GUI", "Rhyon#3143", Enum.KeyCode.Insert, function()
	Library:ToggleUI()
end)





























local function callback(Text)
	if Text == "Working" then
		print ("Ye")
	elseif Text == ("Working") then
		print ("Ye")
	end
end

local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback

game.StarterGui:SetCore("SendNotification",  {
	Title = "Have Fun";
	Text = "Happy Easter 🐣🐥";
	Icon = "http://www.roblox.com/asset/?id=13031848886";
	Duration = 10;
	Callback = NotificationBindable;
})