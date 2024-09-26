--https://www.roblox.com/games/4889315193/Total-Roblox-Drama
function dostuff(thing)
    print("waiting for maintext")
    thing:WaitForChild("MainText",math.huge)
    print("waiting for box")
    thing:WaitForChild("Box",math.huge)
    local txt = thing.MainText.Text
    local split = string.split(txt," ")
    for i,v in pairs(split) do
        print(i,v)
    end
    local num1 = split[1]
    local plusorminus = split[2]
    local num2 = split[3]
    num1 = tonumber(num1)
    num2 = tonumber(num2)
    local equal
    if plusorminus == "+" then
        equal = num1 + num2
    elseif plusorminus == "-" then
        equal = num1 - num2
    end
    equal = tostring(equal)
    thing.Box.Text = equal
	return true
end
function dogui(gui)
    print(gui.Name)
    if gui.Name == "MathMania" or gui.Name == "GUI" then
        print("mathmania found")
		local loopbreak = false
		for i=1,30 do
			wait(.1)
			if loopbreak then return end
	        for i=1,10 do
            	local thing = gui:FindFirstChild(tostring(i))
            	if thing then
                	local result = dostuff(thing)
					if i == 10 and result == true then
						loopbreak = true
						return
					end
            	end
        	end
		end
    end
end
game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(gui)
    dogui(gui)
end)
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MathMania") then
    dogui(game.Players.LocalPlayer.PlayerGui:FindFirstChild("MathMania"))
end
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Starting",Text="Starting"})