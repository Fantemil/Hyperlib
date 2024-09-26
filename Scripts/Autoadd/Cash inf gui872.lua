local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "ok CASH BRUH", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "cash inf :(",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
OrionLib:MakeNotification({
	Name = "test gui",
	Content = "cash inf :)",
	Image = "rbxassetid://4483345998",
	Time = 10
})
Tab:AddButton({
	Name = " cash inf",
	Callback = function()
      local args = {
    [1] = 99999999e9
}

game:GetService("ReplicatedStorage").fewjnfejwb3:FireServer(unpack(args))

  	end    
})
--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]] --If you have any difficulties, here it is ð 
Tab:AddToggle({
	Name = "cash inf",
	Default = true,
	Callback = function(Value)
		local args = {
    [1] = 9999999999e9
}

game:GetService("ReplicatedStorage").fewjnfejwb3:FireServer(unpack(args))

	end    
})