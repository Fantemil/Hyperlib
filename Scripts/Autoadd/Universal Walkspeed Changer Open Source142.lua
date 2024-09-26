local player = game.Players.LocalPlayer

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Name Here", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Speed",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Speed"
})

OrionLib:MakeNotification({
	Name = "Execulted!",
	Content = "Successfully Executed ",
	Image = "rbxassetid://4483345998",
	Time = 5
})

Tab:AddButton({
	Name = "Default WalkSpeed",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 16
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 1",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 1
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 50",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 50
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 100",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 100
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 150",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 150
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 200",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 200
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 250",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 250
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 300",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 300
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 350",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 350
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 400",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 400
  	end    

})
Tab:AddButton({
	Name = "WalkSpeed 450",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 450
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 500",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 500
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 550",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 550
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 600",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 600
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 650",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 650
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 700",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 700
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 750",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 750
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 800",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 800
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 850",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 850
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 900",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 900
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 950",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 950
  	end    
})

Tab:AddButton({
	Name = "WalkSpeed 1000",
	Callback = function()
      		player.Character.Humanoid.WalkSpeed = 1000
  	end    
})