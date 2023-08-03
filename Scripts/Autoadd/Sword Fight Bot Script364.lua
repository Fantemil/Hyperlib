_G.x = nil -- target, dont change e
print("h:loaded (  :")
Grips = {
	Up = CFrame.new(0, 0, -1.70000005, 0, 0, 1, 1, 0, 0, 0, 1, 0),
	Out = CFrame.new(0, 0, -1.70000005, 0, 1, 0, 1, -0, 0, 0, 0, -1)
}

_G.e = nil
_G.rage = 0
local h3 = 0
local h4 = false
local h = 3
local h2 = 0
_G.g = nil
_G.pos = nil
local jo = 0
local jo2 = 1
hhh = false
local jo3 = 0
local player = game.Players.LocalPlayer
--player.Character.Sword.Handle.Size = Vector3.new(1,0.1,8)
local numba = Instance.new("NumberValue",workspace)
numba.Value = -40
delay(0,function()
	while true do
		wait(0.14)
		numba.Value = math.random(-90,-35)
		game.TweenService:Create(numba, TweenInfo.new(0.07,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,1,true,0),{Value = math.random(35,90)}):Play()
	end
end)
delay(5,function()
	bg = Instance.new("BodyGyro",game.ReplicatedStorage)
	bg.D = 1
	bg.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector)
	bg.P = 30000
	bg.MaxTorque = Vector3.new(400000000, 400000000, 400000000)

	game:GetService("RunService").RenderStepped:Connect(function()
		if _G.x ~= nil and _G.x:FindFirstChild("HumanoidRootPart") and _G.y == 1 and player.Character and player.Character.Humanoid.Health > 0 then
			bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
			local torso = player.Character.HumanoidRootPart.CFrame.p+player.Character.HumanoidRootPart.CFrame.LookVector*1+player.Character.HumanoidRootPart.CFrame.RightVector*1
			local torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
			if h2 == 0 then
				torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
			elseif h2 == 1 then
				torso2 = _G.x.HumanoidRootPart.Position+game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*(numba.Value/25)
			end
			bg.CFrame = CFrame.new(torso - Vector3.new(0,torso.y,0) ,torso2 - Vector3.new(0,torso2.y,0)) --remove y value so character is always upright
			--player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame.p, player.Character["HumanoidRootPart"].CFrame.p + (_G.x["Right Arm"].Position-player.Character["HumanoidRootPart"].CFrame.p)*Vector3.new(1,0,1))
			_G.pos = _G.x["HumanoidRootPart"].Position+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*0+player.Character["HumanoidRootPart"].CFrame.RightVector*6

			--[[if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 12 then
							jo = -1
						else
							jo = 1
			end		]]



			if _G.x.HumanoidRootPart.Position.y-0.5 > player.Character.HumanoidRootPart.Position.y then
				delay(0,function() player.Character.Humanoid.Jump = true end)
			end
			if _G.x.HumanoidRootPart.Velocity.z >= player.Character.HumanoidRootPart.CFrame.LookVector.z or _G.x.HumanoidRootPart.Velocity.x >= player.Character.HumanoidRootPart.CFrame.LookVector.x then
				_G.pos = _G.x["HumanoidRootPart"].Position+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+player.Character["HumanoidRootPart"].CFrame.RightVector*6-_G.x.HumanoidRootPart.Velocity/2
				local torso = player.Character.HumanoidRootPart.CFrame.p+player.Character.HumanoidRootPart.CFrame.LookVector*1+player.Character.HumanoidRootPart.CFrame.RightVector*1
				local torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
				if h2 == 0 then
					torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
				elseif h2 == 1 then
					torso2 = _G.x.HumanoidRootPart.Position+game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*(numba.Value/25)
				end
				bg.CFrame = CFrame.new(torso - Vector3.new(0,torso.y,0) ,torso2 - Vector3.new(0,torso2.y,0))
				if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 10 then
					--player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame.p, player.Character["Left Arm"].CFrame.p + ((_G.x["Right Arm"].Position+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2)))-(player.Character["HumanoidRootPart"].CFrame.p+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2))))*Vector3.new(1,0,1))
					_G.pos = _G.x["HumanoidRootPart"].Position+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+(player.Character["HumanoidRootPart"].CFrame.RightVector*1+player.Character["HumanoidRootPart"].CFrame.LookVector*-1)-_G.x.HumanoidRootPart.Velocity/5+player.Character.HumanoidRootPart.CFrame.RightVector*h

					jo = jo + 1
					if jo == 3 then
						h = h * -1
					end
				end	
			elseif _G.x.HumanoidRootPart.Velocity.z <= player.Character.HumanoidRootPart.CFrame.LookVector.z or _G.x.HumanoidRootPart.Velocity.x <= player.Character.HumanoidRootPart.CFrame.LookVector.x then
				_G.pos = _G.x["HumanoidRootPart"].Position+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+player.Character["HumanoidRootPart"].CFrame.RightVector*6+_G.x.HumanoidRootPart.Velocity/10
				local torso = player.Character.HumanoidRootPart.CFrame.p+player.Character.HumanoidRootPart.CFrame.LookVector*1+player.Character.HumanoidRootPart.CFrame.RightVector*1
				local torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
				if h2 == 0 then
					torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
				elseif h2 == 1 then
					torso2 = _G.x.HumanoidRootPart.Position+game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*(numba.Value/25)
				end
				bg.CFrame = CFrame.new(torso - Vector3.new(0,torso.y,0) ,torso2 - Vector3.new(0,torso2.y,0))
				if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 10 then
					--player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame.p, player.Character["Left Arm"].CFrame.p + ((_G.x["Right Arm"].Position+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2)))-(player.Character["HumanoidRootPart"].CFrame.p+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2))))*Vector3.new(1,0,1))
					_G.pos = _G.x["HumanoidRootPart"].Position+_G.x["HumanoidRootPart"].CFrame.RightVector*1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+(player.Character["HumanoidRootPart"].CFrame.RightVector*1+player.Character["HumanoidRootPart"].CFrame.LookVector*-1)+_G.x.HumanoidRootPart.Velocity/3+player.Character.HumanoidRootPart.CFrame.RightVector*h
					jo = jo + 1
					if jo == 3 then
						h = h * -1
					end
				end
			end
            if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 10 then
					h2 = 1
					--print('h')
				else
					h2 = 0
					--print('h2222222222 пошёл нахуй')
				end
			if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 20 then
				if (_G.x["HumanoidRootPart"].Position-player.Character["Right Arm"].CFrame.p).magnitude <= 5 or hhh == true then
					--player.Character.Humanoid.Jump = true
					hhh = true
					if (_G.x["HumanoidRootPart"].Position-player.Character["Right Arm"].CFrame.p).magnitude >= 7 then
						hhh = false
					end
					jo3 = jo3 + 1
					if jo3 >= math.random(2,4) then
						jo3 = 0
						if jo2 == 0 then
							jo2 = -2
						else
							jo2 = 0
						end
					end
					_G.pos = player.Character["HumanoidRootPart"].CFrame.LookVector*5*jo2+_G.x.HumanoidRootPart.Velocity/20
					if _G.x.HumanoidRootPart.Velocity.z >= player.Character.HumanoidRootPart.CFrame.LookVector.z or _G.x.HumanoidRootPart.Velocity.x >= player.Character.HumanoidRootPart.CFrame.LookVector.x then
						_G.pos = player.Character["HumanoidRootPart"].CFrame.LookVector*5*jo2+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+player.Character["HumanoidRootPart"].CFrame.RightVector*6-_G.x.HumanoidRootPart.Velocity/2
						local torso = player.Character.HumanoidRootPart.CFrame.p+player.Character.HumanoidRootPart.CFrame.LookVector*1+player.Character.HumanoidRootPart.CFrame.RightVector*1
						local torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
						if h2 == 0 then
							torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
						elseif h2 == 1 then
							torso2 = _G.x.HumanoidRootPart.Position+game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*(numba.Value/25)
						end
						bg.CFrame = CFrame.new(torso - Vector3.new(0,torso.y,0) ,torso2 - Vector3.new(0,torso2.y,0))
						bg.D = 1
						if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 10 then
							--player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame.p, player.Character["Left Arm"].CFrame.p + ((_G.x["Right Arm"].Position+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2)))-(player.Character["HumanoidRootPart"].CFrame.p+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2))))*Vector3.new(1,0,1))
							_G.pos = player.Character["HumanoidRootPart"].CFrame.LookVector*5*jo2+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+(player.Character["HumanoidRootPart"].CFrame.RightVector*1+player.Character["HumanoidRootPart"].CFrame.LookVector*-1)-_G.x.HumanoidRootPart.Velocity/5+player.Character.HumanoidRootPart.CFrame.RightVector*h

							jo = jo + 1
							if jo == 3 then
								h = h * -1
							end
						end	
					elseif _G.x.HumanoidRootPart.Velocity.z <= player.Character.HumanoidRootPart.CFrame.LookVector.z or _G.x.HumanoidRootPart.Velocity.x <= player.Character.HumanoidRootPart.CFrame.LookVector.x then
						_G.pos = player.Character["HumanoidRootPart"].CFrame.LookVector*5*jo2+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+player.Character["HumanoidRootPart"].CFrame.RightVector*6+_G.x.HumanoidRootPart.Velocity/10
						local torso = player.Character.HumanoidRootPart.CFrame.p+player.Character.HumanoidRootPart.CFrame.LookVector*1+player.Character.HumanoidRootPart.CFrame.RightVector*1
						local torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
						if h2 == 0 then
							torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
						elseif h2 == 1 then
							torso2 = _G.x.HumanoidRootPart.Position+game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*(numba.Value/25)
						end
						bg.CFrame = CFrame.new(torso - Vector3.new(0,torso.y,0) ,torso2 - Vector3.new(0,torso2.y,0))
						if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 10 then
							--player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame.p, player.Character["Left Arm"].CFrame.p + ((_G.x["Right Arm"].Position+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2)))-(player.Character["HumanoidRootPart"].CFrame.p+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2))))*Vector3.new(1,0,1))
							_G.pos = player.Character["HumanoidRootPart"].CFrame.LookVector*5*jo2+_G.x["HumanoidRootPart"].CFrame.RightVector*1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+(player.Character["HumanoidRootPart"].CFrame.RightVector*1+player.Character["HumanoidRootPart"].CFrame.LookVector*-1)+_G.x.HumanoidRootPart.Velocity/3+player.Character.HumanoidRootPart.CFrame.RightVector*h
							jo = jo + 1
							if jo == 3 then
								h = h * -1
							end
						end
					end
					player.Character.Humanoid:Move(_G.pos)
				end
				if player.Character:FindFirstChildOfClass("Tool") then
					player.Character:FindFirstChildOfClass("Tool"):Activate()
				end
			end
			player.Character.Humanoid:MoveTo(_G.pos)
			if _G.x:FindFirstChildOfClass("Tool") and _G.x:FindFirstChildOfClass("Tool"):FindFirstChild("Handle") then

			end


		else
			bg.Parent = game.ReplicatedStorage
		end
	end)
end)

mouse = player:GetMouse()
_G.e = game:GetService("UserInputService").InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.R then
		if _G.y == 1 then
			_G.y = 0 
			print("Off y")game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
				Text = "y = ".._G.y; --The chat message
				Color = Color3.fromRGB(255, 255, 0); --Chat message color, defaults to white
				Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
				TextSize = 18 --Text size, defaults to 18
			})	
		else
			_G.y = 1 
			print("On y")game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
				Text = "y = ".._G.y; --The chat message
				Color = Color3.fromRGB(255, 255, 0); --Chat message color, defaults to white
				Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
				TextSize = 18 --Text size, defaults to 18
			})	
			local succes, errorw  = pcall(function()

			end)
			if not succes then
				warn(errorw)
				error(errorw)
			end
		end

	elseif key.KeyCode == Enum.KeyCode.E then 
		if mouse.Target and mouse.Target.Parent:FindFirstChild("HumanoidRootPart") then
			_G.x = mouse.Target.Parent 
			print(_G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name)
			game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
				Text = _G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name; --The chat message
				Color = Color3.fromRGB(0, 255, 255); --Chat message color, defaults to white
				Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
				TextSize = 18 --Text size, defaults to 18
			})
		elseif mouse.Target and mouse.Target.Parent.Parent:FindFirstChild("HumanoidRootPart") then
			_G.x = mouse.Target.Parent.Parent
			print(_G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name)
			game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
				Text = _G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name; --The chat message
				Color = Color3.fromRGB(0, 255, 255); --Chat message color, defaults to white
				Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
				TextSize = 18 --Text size, defaults to 18
			})
		elseif mouse.Target and mouse.Target.Parent.Parent.Parent:FindFirstChild("HumanoidRootPart") then
			_G.x = mouse.Target.Parent.Parent.Parent
			print(_G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name)
			game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
				Text = _G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name; --The chat message
				Color = Color3.fromRGB(0, 255, 255); --Chat message color, defaults to white
				Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
				TextSize = 18 --Text size, defaults to 18
			})
		end
	elseif key.KeyCode == Enum.KeyCode.T then
		if _G.rage == 0 then
			_G.rage = 1
		else
			_G.rage = 0
		end
		game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
			Text = "_G.rage = ".._G.rage; --The chat message
			Color = Color3.fromRGB(255, 255, 0); --Chat message color, defaults to white
			Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
			TextSize = 18 --Text size, defaults to 18
		})
	end
end)

while true do
	wait(0)
	if _G.rage == 1 then
		local point1 = player.Character.HumanoidRootPart.Position+Vector3.new(-40,-40,-40)
		local point2 = player.Character.HumanoidRootPart.Position+Vector3.new(40,40,40)
		local region = Region3.new(point1,point2)
		local thing = workspace:FindPartsInRegion3(region,player.Character,math.huge)
		for i,v in pairs(thing)do
			if v.Parent:FindFirstChild("Humanoid") and v.Parent.Humanoid.Health > 0 then
				print(v.Name)
				_G.x = v.Parent
				_G.main()
				wait(0.5)
				break
			end
		end
	end
end




