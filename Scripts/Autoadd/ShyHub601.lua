local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Shy Hub - [NEW] Slime Slaying Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
---------Execution Events----------

OrionLib:MakeNotification({
	Name = "ANNOUNCEMENT!",
	Content = "Its Free, dont expect much, I hate my life ",
    Image = "rbxassetid://4483345998",
	Time = 30
})

print("Startup Check!")


---------Values----------
getgenv().AutoCollectGems = true 
getgenv().AutoCollectSpeedBoost = true 
getgenv().AutoRebirth = true 


---------Locals----------

local Areas = {
	SlimeForest = CFrame.new(27, 5, 11),
	DeathValley = CFrame.new(92, 5, -5369),
    RuinedSwamplands = CFrame.new(152, 5, -7716),
    BattleArena = CFrame.new(238, 4, 267)


}


---------Functions----------
function AutoCollectGems()
    spawn(function()
    while getgenv().AutoCollectGems == true do 
        wait(0.1)
        local args = {[1] = "Shard"}
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EnemyService"):WaitForChild("RF"):WaitForChild("CollectPickUp"):InvokeServer(unpack(args))  
end
end)
end
---------#1
function AutoCollectSpeedBoost()
    spawn(function()
    while getgenv().AutoCollectSpeedBoost == true do 
        wait(0.1)
        local args = {[1] = "SpeedBoost"}
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EnemyService"):WaitForChild("RF"):WaitForChild("CollectPickUp"):InvokeServer(unpack(args))   
end
end)
end
---------#2
function AutoRebirth()
    spawn(function()
    while getgenv().AutoRebirth == true do 
        wait(5)
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("Rebirth"):InvokeServer()

end
end)
end
---------#3



---------STAT Functions----------
function StrengthStats()
    spawn(function()
    while getgenv().StrengthStats == true do 
        wait(0.1)
        local args = {[1] = "Strength",[2] = 1}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("UseStatPoint"):InvokeServer(unpack(args))
end
end)
end
---------#1
function VitalityStats()
    spawn(function()
    while getgenv().VitalityStats == true do 
        wait(0.1)
        local args = {[1] = "Vitality",[2] = 1}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("UseStatPoint"):InvokeServer(unpack(args))
end
end)
end
---------#2
function AgilityStats()
    spawn(function()
    while getgenv().AgilityStats == true do 
        wait(0.1)
        local args = {[1] = "Agility",[2] = 1}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("UseStatPoint"):InvokeServer(unpack(args))
end
end)
end
---------#3
function StaminaStats()
    spawn(function()
    while getgenv().StaminaStats == true do 
        wait(0.1)
        local args = {[1] = "Stamina",[2] = 1}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("UseStatPoint"):InvokeServer(unpack(args))        
end
end)
end
---------#4
function IntelligenceStats()
    spawn(function()
    while getgenv().IntelligenceStats == true do 
        wait(0.1)
        local args = {[1] = "Intelligence",[2] = 1}
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("UseStatPoint"):InvokeServer(unpack(args))
end
end)
end
---------#5

---------CheckPoint----------
print("Middle Check!")





-- TABS
local FarmTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false })
---------#1 
local MiscTab = Window:MakeTab({
    Name = "Teleports",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false })
---------#2
local StatTab = Window:MakeTab({
    Name = "Auto Stats",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false })
---------#3



---------Toggles---------    
FarmTab:AddToggle({
	Name = "Auto Collects Gems",
	Default = false,
	Callback = function(Value)
		getgenv().AutoCollectGems = Value
        AutoCollectGems()
	end})
---------#1
FarmTab:AddToggle({
    Name = "Auto Collects SpeedBoosts",
    Default = false,
    Callback = function(Value)
        getgenv().AutoCollectSpeedBoost = Value
        AutoCollectSpeedBoost()
    end})
---------#2
FarmTab:AddToggle({
    Name = "Auto Rebirths",
    Default = false,
    Callback = function(Value)
        getgenv().AutoRebirth = Value
        AutoRebirth()
    end})
---------#3





---------STATS TOGGLES---------  
StatTab:AddToggle({
	Name = "Auto Strength",
	Default = false,
	Callback = function(Value)
		getgenv().StrengthStats = Value
        StrengthStats()
	end})
---------#1
StatTab:AddToggle({
    Name = "Auto Vitality",
    Default = false,
    Callback = function(Value)
        getgenv().VitalityStats = Value
        VitalityStats()
    end})
---------#2
StatTab:AddToggle({
    Name = "Auto Agility",
    Default = false,
    Callback = function(Value)
        getgenv().AgilityStats = Value
        AgilityStats()
    end})
---------#3
StatTab:AddToggle({
    Name = "Auto Stamina",
    Default = false,
    Callback = function(Value)
        getgenv().StaminaStats = Value
        StaminaStats()
    end})
---------#4
StatTab:AddToggle({
    Name = "Auto Intelligence",
    Default = false,
    Callback = function(Value)
        getgenv().IntelligenceStats = Value
        IntelligenceStats()
    end})
---------#5





---------Dropdowns---------  
MiscTab:AddDropdown({
	Name = "Teleport Select",
	Default = "SlimeForest",
	Options = {"SlimeForest", "DeathValley", "RuinedSwamplands","BattleArena"},
	Callback = function(Value)
		game.Players.LocalPlayer.Character:PivotTo(Areas[Value])
	end})    

loadstring(game:HttpGet("https://soggy-ware.cf/Modules/AntiAFK.lua"))()
print("Everything is working fine!")

---------Total End----------
OrionLib:Init()