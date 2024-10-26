local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Rust,
    Link = "https://github.com/deeeity/mercury-lib"
}

local Tab = GUI:Tab{
	Name = "Misc and Testing",
	Icon = "rbxassetid://6146562015"
}

Tab:Button{
	Name = "Wave Fix",
	Description = nil,
	Callback = function()
    getgenv().readfile = nil
     end
}

Tab:Button{
	Name = "Button",
	Description = nil,
	Callback = function()
    GUI:Prompt{
	Followup = false,
	Title = "Prompt",
	Text = "Prompts are cool",
	Buttons = {
		ok = function()
        print("hello world!")
			return true
		end,
		no = function()
			return false
		end
	}
} 
    
    end
}



Tab:Slider{
	Name = "Walkspeed",
	Default = 50,
	Min = 0,
	Max = 100,
	Callback = function(v) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end
}

Tab:Slider{
	Name = "JumpPower",
	Default = 50,
	Min = 0,
	Max = 100,
	Callback = function(jump) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
    end
}

local Tab = GUI:Tab{
	Name = "Universal Script Hub",
	Icon = "rbxassetid://7744394226"
}

Tab:Button{
	Name = "Infinite Yield",
	Description = "An amazing admin script!",
	Callback = function()
    GUI:Prompt{
	Followup = false,
	Title = "Are you sure?",
	Text = "Are you sure you want to execute Infinite Yield?",
	Buttons = {
		Yes = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
			return true
		end,
		No = function()
			return false
		end
	}
} 
    
    end
}

Tab:Button{
	Name = "Remote Spy",
	Description = nil,
	Callback = function()
    GUI:Prompt{
	Followup = false,
	Title = "Are you sure?",
	Text = "Are you sure you want to execute Remote Spy?",
	Buttons = {
		Yes = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpyBeta.lua"))()
			return true
		end,
		No = function()
			return false
		end
	}
} 
    
    end
}

Tab:Button{
	Name = "FE Backflip",
	Description = "A silly little script where you can flip! (Z and X to flip!)",
	Callback = function()
    GUI:Prompt{
	Followup = false,
	Title = "Are you sure?",
	Text = "Are you sure you want to execute FE Flip?",
	Buttons = {
		Yes = function()
        loadstring(game:HttpGetAsync("https://pastebin.com/raw/DPQzQ6Gi"))()
			return true
		end,
		No = function()
			return false
		end
	}
} 
    
    end
}

Tab:Button{
	Name = "Proton Admin",
	Description = "Another amazing admin script!",
	Callback = function()
    GUI:Prompt{
	Followup = false,
	Title = "Are you sure?",
	Text = "Are you sure you want to execute Proton Admin?",
	Buttons = {
		Yes = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5e6e6cc1bb32fd926764d064e2c60a3b.lua"))()
			return true
		end,
		No = function()
			return false
		end
	}
} 
    
    end
}

Tab:Button{
	Name = "FE Invisibility",
	Description = "A simple script that allows you to be invisible! (E to toggle)",
	Callback = function()
    GUI:Prompt{
	Followup = false,
	Title = "Are you sure?",
	Text = "Are you sure you want to execute FE Invisible?",
	Buttons = {
		Yes = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/ZYamkctG"))();
			return true
		end,
		No = function()
			return false
		end
	}
} 
    
    end
}

local Tab = GUI:Tab{
	Name = "Game Script Hub",
	Icon = "rbxassetid://14193480192"
}

Tab:Button{
	Name = "Blox Fruits",
	Description = "A light-weight blox fruits script! (Possible bugs)",
	Callback = function()
    GUI:Prompt{
	Followup = false,
	Title = "Are you sure?",
	Text = "Are you sure you want to execute this Blox Fruits script?",
	Buttons = {
		Yes = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yatsuraa/Yuri/main/Winterhub_V2.lua"))()
			return true
		end,
		No = function()
			return false
		end
	}
} 
    
    end
}

Tab:Button{
	Name = "Blade Ball",
	Description = "The best Blade Ball script!",
	Callback = function()
    GUI:Prompt{
	Followup = false,
	Title = "Are you sure?",
	Text = "Are you sure you want to execute this Blade Ball script?",
	Buttons = {
		Yes = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/autoparry.lua"))()()
			return true
		end,
		No = function()
			return false
		end
	}
} 
    
    end
}