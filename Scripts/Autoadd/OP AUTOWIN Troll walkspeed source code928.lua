-- setclipboard(_G.Key) or lKhbGjGehKnZWHkfoKjfoFKQO

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))();
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key system", HidePremium = false, IntroText = "Key system", SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Logged in",
	Content = "You are logged in as  "..Player.Name.."",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "lKhbGjGehKnZWHkfoKjfoFKQO"
_G.KeyInput = "string"

function MakeScriptHub()
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Lauk hub", HidePremium = false, IntroText = "Lauk hub", SaveConfig = true, ConfigFolder = "OrionTest"})

function Teleport(teleportPlace)
    local player = game.Players.LocalPlayer
    player.Character.HumanoidRootPart.CFrame = teleportPlace
end






local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddButton({
	Name = "Autowin",
	Callback = function()
      	Teleport(workspace.Map.Classic.Button.CFrame)	
  	end    
})

Tab:AddButton({
	Name = "Teleport to Destroyer",
	Callback = function()
      	Teleport(workspace.Map.Classic.Shooter.PARTSPAWNAREA.CFrame)	
  	end    
})


local PlayerTab = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
   })
   
   local Section = PlayerTab:AddSection({
    Name = "Movement"
   })
   
   PlayerTab:AddSlider({
    Name = "Walkspeed",
    Min = 16,
    Max = 250,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "WS",
    Callback = function(Value)
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
   })

   local Tab = Window:MakeTab({
	Name = "About",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddParagraph("Key in discord ","https://discord.gg/696qnHRTMZ")
---
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have enterd the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function InncorectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Inncorect Key!",
        Content = "You have enterd the Inncorect key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end




local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter key",
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
                MakeScriptHub()
                CorrectKeyNotification()
            else
                InncorectKeyNotification()
            end
  	end    
})