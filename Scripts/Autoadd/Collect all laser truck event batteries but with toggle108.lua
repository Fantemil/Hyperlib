getgenv().acollect = true

while getgenv().acollect do
	wait()
	for _, v in pairs(game:GetService("Workspace").EventsFolder.BatteryEvent:GetDescendants()) do
		if v.Name == "TouchInterest" then
			if not getgenv().acollect then break end
        	local tween_s = game:GetService('TweenService')
            local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
            local lp = game.Players.LocalPlayer
                        
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v.Parent.Position)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
            end
			wait(1)
		end
	end
end