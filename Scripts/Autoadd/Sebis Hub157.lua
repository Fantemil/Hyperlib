local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Sebi's Hub | Prison Life | V1", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Prison Life",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Prison Life"
})

Tab:AddButton({
	Name = "Remove Doors",
	Callback = function()
      	game.Workspace.Doors:Destroy()
		  OrionLib:MakeNotification({
			Name = "Sebi's Hub | Prison Life | V1",
			Content = "Deleted doors.",
			Image = "rbxassetid://4483345998",
			Time = 3
		})
  	end    
})

Tab:AddButton({
	Name = "Prison",
	Callback = function()
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(913, 99, 2381))
		  OrionLib:MakeNotification({
			Name = "Sebi's Hub | Prison Life | V1",
			Content = "Teleported to Prison.",
			Image = "rbxassetid://4483345998",
			Time = 3
		  })
  	end    
})

Tab:AddButton({
	Name = "Criminal Base",
	Callback = function()
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-892, 94, 2138))
		  OrionLib:MakeNotification({
			Name = "Sebi's Hub | Prison Life | V1",
			Content = "Teleported to Criminal Base.",
			Image = "rbxassetid://4483345998",
			Time = 3
		  })
  	end    
})