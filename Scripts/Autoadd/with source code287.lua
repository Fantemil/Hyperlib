--SOURCE CODE

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "@jnbf made this", HidePremium = false, SaveConfig = false, ConfigFolder = "nice"})

local Tab = Window:MakeTab({
	Name = "meow.lua",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Cash"
})

Tab:AddButton({
	Name = "Get ur money no cookie logger",
	Callback = function()
        game.ReplicatedStorage.fewjnfejwb3:FireServer(9999999999)
      		print("@jnbf")
  	end    
})

OrionLib:Init()