local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sentinel", "SwarmHub")


-- Main
local Main = Window:NewTab("Main")
local MainSection = Window:NewSection("Main")



MainSection:NewToggle("Super-Human", "incteases ws & jppower", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 125
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 500
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)




-- Scripts
MainSection:NewButton("Naruto Run (FE No hats needed)", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/r4ZAERUg"))()
end)

MainSection:NewButton("Sonic (FE No hats needed)", "ButtonInfo", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/SyF5t70A"))()
end)



-- Others
local OtherSection = Window:NewSection("Other")



OtherSection:NewButton("Alt Click Delete ( Not FE No hats needed)", "ButtonInfo", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/SyF5t70A"))()
end)


OtherSection:NewButton("British Hub v5", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/YourLocalNzi/Ye/main/Bri%20hub"))()
end)




-- Settings
local Settings = Window:NewTab("Settings")
local SettinsSection = Window:NewSection("Settings")



SettinsSection:NewSlider("Custom Walkspeed", "SliderInfo", 1250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

SettingsSection:NewSlider("Custom Jppower", "SliderInfo", 950, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)


SettingsSection:NewKeybind("F To Toggle UI", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)



-- Credits
local Credits = Window:NewTab("Credits")
local CreditsSection = Window:NewSection("Credits")




local CreditsSection = Window:NewSection("Credits To Kavo UI Library")

local CreditsSection = Window:NewSection("Credits T0 DemoDummy For Helping Me Find Scripts")

local CreditsSection = Window:NewSection("Enjoy?")




-- Apps
local Apps = Window:NewTab("Apps")
local AppsSection = Window:NewTab("Apps I Used")



local AppsSection = Window:NewSection("Used Visual Studio Code")

local AppsSection = Window:NewSection("Used Google For Some Scripts")

local AppsSection = Window:NewSection("Youtube For Helping Me Fix Errors")