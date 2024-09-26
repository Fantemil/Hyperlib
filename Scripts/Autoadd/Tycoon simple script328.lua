ANTIAFK = game.Players.LocalPlayer.Idled:connect(function()
					 game:FindService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
					 task.wait(1)
					 game:FindService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
					 end)			 
Players = game:GetService("Players")                 
local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		Players.LocalPlayer.Idled:Connect(function()
			local VirtualUser = game:GetService("VirtualUser")
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end
    -- ^^^ Anti afk stuff
    -- idk why u want to auto farm even tho there is auto play lol maybe js for anti afk?
getgenv().whaterv = not whaterv -- just execute to toggle
spawn(function()
    while wait() do
        if not getgenv().whaterv then break end
		Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-439, 5, 2749) -- collect yarn pos
        wait(500) -- long wait time bc why do fast when collecting yarn
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-401, 6, 2714) -- deposit yarn pos
        wait(2)
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-412, 6, 2733) -- claim ugc pos
        wait(4)
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-381, 6, 2694) -- +1 per sec pos
        wait(10)
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-399, 4, 2750) -- free kitten in middle pos
        wait(3)
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-436, 6, 2726) -- Buy kitten pos
        wait(5)
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-435, 6, 2776) -- merge pos
        wait(4)
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-36, 65, 2656) -- finished obby pos
		end
	end)
-- Literally auto farms everything i think