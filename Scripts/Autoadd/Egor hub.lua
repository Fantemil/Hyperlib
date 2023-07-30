local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "EGOR HUB KEY SYSTEM", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "EGOR HUB",
	Content = "you logged to as ".. Player.Name.." ", 
	Image = "rbxassetid://4483345998",
	Time = 4
})

_G.Key = "EGOR" 
_G.KeyInput = "string" 

function MakeScriptHub() 
local Window = OrionLib:MakeWindow({Name = "EGOR HUB", HidePremium = false, SaveConfig = true, IntroEnabled = true, IntroText = "EGOR HUB"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
    Name = " FLING GUI R6 AND MAYBE R15",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ZNbn5bwc"))();
      end
})

Tab:AddButton({
    Name = " FLING KNIFE R6 ONLY",
    Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/VkKhJymg"))();
      end
})

Tab:AddButton({
	Name = "Fe fling drone",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/th8geBeK"))();
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "EGOR HUB OLD",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/2DNTQBuY"))();
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "FLY SCRIPT V3",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zCcNFGaj"))();
      		print("button pressed")
  	end    
})

local Section = Tab:AddSection({
	Name = "Common Stuff"
})

local Tab = Window:MakeTab({
	Name = "RB Battles Scriptz",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

localSection = Tab:AddSection({
	Name = "Only Bits Scriptz"
})

OrionLib:MakeNotification({
	Name = "EGOR HUB",
	Content = "SUS",
	Image = "rbxassetid://4483345998",
	Time = 4
})

OrionLib:MakeNotification({
	Name = "EGOR HUB ",
	Content = "Welcome",
	Image = "rbxassetid://4483345998",
	Time = 3
})

Tab:AddLabel("Main")

Tab:AddButton({
	Name = "keyboard",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jTf7ZtLN"))();
      		print("button pressed")
  	end    
})

    Tab:AddButton({
	Name = "Infinite Jump",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/sY3cxDwu"))();
      		      print("button pressed")
  	end    
})

        print("EnteredCorrectKey") 
end
function CorrectKeyNotification() 
         OrionLib:MakeNotification({
	            Name = "jdhdjdje",
	            Content = "Welcomerujd",
	             Image = "rbxassetid://4483345998",
	             Time = 3
         })
 end
 
function IncorrectKeyNotification() 
         OrionLib:MakeNotification({
	            Name = "Incorrect Key",
	            Content = "you have entered Incorrect key",
	            Image = "rbxassetid://4483345998",
	            Time = 5
         })
end


local Tab = Window:MakeTab({
	Name = "key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "enter key",
	Default = "imput",
	TextDisappear = false,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "check key",
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
    Name = "EGOR HUB old no key system",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/2DNTQBuY"))();
      end
})

Tab:AddButton({
    Name = "EGOR HUB old no key system",
    Callback = function()
setclipboard("https://rekonise.com/egorhubkey-s4x44")