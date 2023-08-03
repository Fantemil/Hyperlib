local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hat Simulator", "DarkTheme")
local Tab = Window:NewTab("Home")
local Section = Tab:NewSection("yes")

Section:NewToggle("Autofarm Hat", "ToggleInfo", function(state)
	if state then
		_G.loop = true
		while _G.loop == true do wait()
			game:GetService("ReplicatedStorage").Wear:FireServer()
		end
	else
		_G.loop = false
		while _G.loop == true do wait()
			print('hi')
		end
	end
end)




Section:NewButton("Single Sell", "ButtonInfo", function()
	game:GetService("ReplicatedStorage").Sell:FireServer()
	print("Clicked")
end)

Section:NewToggle("Autofarm Sell", "ToggleInfo", function(state)
	if state then
		_G.loop = true
		while _G.loop == true do wait()
			game:GetService("ReplicatedStorage").Sell:FireServer()
		end
	else
		_G.loop = false
		while _G.loop == true do wait()
			print('hi')
		end
	end
end)




Section:NewButton("Single Click", "ButtonInfo", function()
	game:GetService("ReplicatedStorage").Wear:FireServer()
	print("Clicked")
end)