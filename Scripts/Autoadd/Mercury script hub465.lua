local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

local Tab = GUI:Tab{
	Name = "Misc and Testing",
	Icon = "rbxassetid://8569322835"
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
	Name = "Mini Script Hub",
	Icon = "rbxassetid://8569322835"
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

