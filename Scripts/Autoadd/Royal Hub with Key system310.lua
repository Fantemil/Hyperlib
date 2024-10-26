--NOTICE When putting key Make sure to Hit the send icon on your keyboard


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Royal Hub Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "Logged in as "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "Quiwii314"
_G.KeyInput = "string"

function MakeScriptHub()
loadstring(game:HttpGet("https://pastefy.app/rriacb6N/raw"))()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "You has been entered the correct key",
	Image = "rbxassetid://4483345998",
	Time = 5
})

end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
	Name = "Incorrect Key!",
	Content = "You has been entered the incorrect key",
	Image = "rbxassetid://4483345998",
	Time = 5
})

end

local Tab = Window:MakeTab({
	Name = "Key System",
	Icon = "rbxassetid://4483345998",
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
        MakeScriptHub()
        CorrectKeyNotification()
        else
        IncorrectKeyNotification()
        end
  	end    
})

Tab:AddButton({
	Name = "Key Link",
	Callback = function()
      	setclipboard("https://pastefy.app/RVROFwB9/raw")
  	end    
})