local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Knockout Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "Knockout Simulator"})


local Tab = Window:MakeTab({
	Name = "Give Stats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local statsSection = Tab:AddSection({
	Name = "Give you Inf Stats"
})

Tab:AddButton({
	Name = "Inf strenght",
	Callback = function()
        local args = {
            [1] = 1e+18
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("Train"):FireServer(unpack(args))        
  	end    
})




Tab:AddButton({
	Name = "Inf wins",
	Callback = function()
        local args = {
            [1] = 1e+18
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("WinGain"):FireServer(unpack(args))        
  	end    
})



Tab:AddButton({
	Name = "Inf Rebirth/Health",
	Callback = function()
        local args = {
            [1] = 80
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("HealthAdd"):FireServer(unpack(args))
        end    
})


OrionLib:Init()