--race clicker

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Swep Scripts | Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "Swep Key System"})

OrionLib:MakeNotification({
 Name = "Logged in!",
 Content = "You are Logged in as "..Player.Name.. ".",
 Image = "rbxassetid://4483345998",
 Time = 5
})

_G.Key = "SwepBoat"
_G.KeyInput = "string"

function SwepHub()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/xkvl2012/SwepScripts/main/bboat"))()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You Have Entered The Correct Key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You Have Entered Incorrect Key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
 Name = "Key",
 Icon = "http://www.roblox.com/asset/?id=129697930",
 PremiumOnly = false
})

Tab:AddTextbox({
 Name = "Enter Key",
 Default = "",
 TextDisappear = true,
 Callback = function(Value)
  _G.KeyInput = Value
 end   
})

Tab:AddButton({
 Name = "Check Key",
 Callback = function()
        if _G.KeyInput == _G.Key then
                SwepHub()
                CorrectKeyNotification()
            else
                IncorrectKeyNotification()
            end
   end    
})

local Section = Tab:AddSection({
 Name = "Discord Invite"
})
Tab:AddTextbox({
 Name = "Join Discord For Key!",
 Default = "https://discord.com/invite/ppQTvDAq6C",
 TextDisappear = true,
 Callback = function(Value) 
 end  
})