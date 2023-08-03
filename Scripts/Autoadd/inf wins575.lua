local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TITLE", "DarkTheme")
local Tab = Window:NewTab("TabName")
local Section = Tab:NewSection("Section Name")


Section:NewToggle("Infinite Wins", "ToggleInfo", function(state)
	if state then
		_G.loop = true
		while _G.loop == true do wait()
			while true do
				wait(0.00001)

				local args = {
					[1] = "win",
				}

				game:GetService("ReplicatedStorage").Events.Mission:FireServer(unpack(args))
			end
		end
	else
		_G.loop = false
		while _G.loop == true do wait()
			print('hi')
		end
	end
end)