-- / Key System \ --

-- Booting Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- your key

-- Values & Functions
_G.Key = "Your key"
_G.KeyInput = "string"

-- notification
function CorrectKey()
OrionLib:MakeNotification({
	Name = "Key!",
	Content = "You have entered the correct key!",
	Image = "",
	Time = 4
})
end

--window for key system
-- Creating Window
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = false})

-- Tabs
local tab1 = Window:MakeTab({
	Name = "Enter key.",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Define tab1
local section1 = tab1:AddSection({
	Name = "Key"
})

-- text box
tab1:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})


tab1:AddButton({
	Name = "Check Key!",
	Callback = function()
            if _G.KeyInput == _G.Key then                
                wait(0.5)
                CorrectKey()
            end
  	end    
})

-- you can remove this tab, the label and the button it's just credits or you can edit them.

local Tab = Window:MakeTab({
	Name = "Credit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("mrbirdistheword")

Tab:AddButton({
	Name = "Discord server",
	Callback = function()
setclipboard("https://discord.com/invite/KXRS6rUmK")
toclipboard("https://discord.com/invite/KXRS6rUmK")
      		print("button pressed")
  	end    
})

function CorrectKey()
-- you're script

   end -- you're gonna want to keep the end part because it's then end of the script. 