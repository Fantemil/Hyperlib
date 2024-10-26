local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Nonion Hub V2", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab1 = Window:MakeTab({
	Name = "Guis",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Destroy Gui!",
	Callback = function()
      		print("button pressed")
      		OrionLib:Destroy()
      		OrionLib:MakeNotification({
      		        Name = "bye",
      		        Content = "ð¤«",
      		        Time = 2
      		})
  	end    
})

Tab1:AddButton({
	Name = "Run J01TAR0!",
	Callback = function()
      		print("button pressed")
      		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-JO1TAR0-GUI-10634"))()
      		OrionLib:MakeNotification({
      		        Name = "Have Fun",
      		        Content = "Runned",
      		        Time = 2
      		})
  	end    
})

Tab1:AddButton({
	Name = "Run Best Replication ui!",
	Callback = function()
      		print("button pressed")
      		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Old-Replication-UI-still-works-5477"))()
      		OrionLib:MakeNotification({
      		        Name = "Have Fun",
      		        Content = "Runned",
      		        Time = 2
      		})
  	end    
})

Tab1:AddButton({
	Name = "Run Pendulum Hub",
	Callback = function()
      		print("button pressed")
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
      		OrionLib:MakeNotification({
      		        Name = "Have Fun",
      		        Content = "runned",
      		        Time = 2
      		})
  	end    
})

Tab1:AddButton({
	Name = "Run Brookhaven hub!(Patched)",
	Callback = function()
      		print("button pressed")
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMae17/NewIceHub/main/Brookhaven"))()
      		OrionLib:MakeNotification({
      		        Name = "PATCHED ):",
      		        Content = "SAD ):",
      		        Time = 5
      		})
  	end    
})

Tab1:AddButton({
	Name = "Run Sky hub!",
	Callback = function()
      		print("button pressed")
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()
      		OrionLib:MakeNotification({
      		        Name = "Have Fun",
      		        Content = "runned",
      		        Time = 2
      		})
  	end    
})

Tab1:AddLabel("Same guis diffrent codes (so useful)")

Tab1:AddButton({
	Name = "Game tool giver!",
	Callback = function()
      		print("button pressed")
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/gametoolgiver.lua"))()
	end    
})

Tab1:AddButton({
	Name = "game tool equipper!",
	Callback = function()
      		print("button pressed")
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/gametoolequipper.lua"))()
	end    
})

Tab1:AddButton({
	Name = "ui giver!",
	Callback = function()
      		print("button pressed")
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/gameuigiver.lua"))()
	end    
})

Tab1:AddButton({
	Name = "Debuggers!",
	Callback = function()
      		print("button pressed")
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/debugnation/main/decompilers%20and%20debugging/Debuggers.txt"))()
	end    
})

