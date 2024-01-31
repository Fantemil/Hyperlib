game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

if game.PlaceId == 4924922222 then
    repeat wait() until game:IsLoaded()
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "Car Fly",
            Text = "Script Made By Mikeexc."
        }
    )


--Fly car Script:
	local FlyCarGui = Instance.new("ScreenGui")
	local W = Instance.new("TextButton")
	local S = Instance.new("TextButton")
	local A = Instance.new("TextButton")
	local D = Instance.new("TextButton")
	local Fly = Instance.new("TextButton")
	local unfly = Instance.new("TextButton")
	local StopFly = Instance.new("TextButton")
	local Speed = Instance.new("TextBox")
	local Open = Instance.new("TextButton")
    local Close = Instance.new("TextButton")
    local Remove = Instance.new("TextButton")

	--Properties:
	
FlyCarGui.Name = "FlyCarGui"
FlyCarGui.Parent = game.CoreGui

    Speed.Name = "Speed"
    Speed.Parent = FlyCarGui
    Speed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Speed.Position = UDim2.new(0,1,0.2,0)
    Speed.Size = UDim2.new(0, 25, 0, 25)
    Speed.Font = Enum.Font.SourceSans
    Speed.Text = "Speed"
    Speed.TextColor3 = Color3.fromRGB(170, 0, 255)
    Speed.TextScaled = true
    Speed.TextSize = 14.000

	Remove.Name = "Remove"
	Remove.Parent = FlyCarGui
	Remove.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Remove.Position = UDim2.new(0.955, 0, 0, 0)
	Remove.Size = UDim2.new(0, 35, 0, 35)
	Remove.Font = Enum.Font.SourceSans
	Remove.Text = "Remove Gui"
	Remove.TextColor3 = Color3.fromRGB(170, 0, 255)
	Remove.TextScaled = true
	Remove.TextSize = 14.000
	Remove.Visible = false
	 Remove.MouseButton1Down:Connect(function()
	    game.CoreGui.FlyCarGui:destroy()
	    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity"):Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyGyro"):Destroy()
	  end)

	Open.Name = "Open"
	Open.Parent = FlyCarGui
	Open.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Open.Position = UDim2.new(0, 0, 0.50000000000, 0)
	Open.Size = UDim2.new(0, 30, 0, 30)
	Open.Font = Enum.Font.SourceSans
	Open.Text = "Open"
	Open.TextColor3 = Color3.fromRGB(170, 0, 255)
	Open.TextScaled = true
	Open.TextSize = 14.000
	Open.Visible = false
     Open.MouseButton1Down:Connect(function()
     Open.Visible = false
     Close.Visible = true
     Speed.Visible = true
     unfly.Visible = true
     StopFly.Visible = true
     Fly.Visible = true
     W.Visible = true
     S.Visible = true
     Remove.Visible = false
end)

    Close.Name = "Close"
    Close.Parent = FlyCarGui
	Close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Close.Position = UDim2.new(0, 0, 0.50000000000, 0)
	Close.Size = UDim2.new(0, 30, 0, 30)
	Close.Font = Enum.Font.SourceSans
	Close.Text = "Close"
	Close.TextColor3 = Color3.fromRGB(170, 0, 255)
	Close.TextScaled = true
	Close.TextSize = 14.000
     Close.MouseButton1Down:Connect(function()
     Open.Visible = true
     Close.Visible = false
     Speed.Visible = false
     unfly.Visible = false
     StopFly.Visible = false
     Fly.Visible = false
     W.Visible = false
     S.Visible = false
     Remove.Visible = true
end)

	unfly.Name = "unfly"
	unfly.Parent = FlyCarGui
	unfly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	unfly.Position = UDim2.new(0.695689976, 0, 0.181818187, 0)
	unfly.Size = UDim2.new(0, 50, 0, 40)
	unfly.Font = Enum.Font.SourceSans
	unfly.Text = "unfly"
	unfly.TextColor3 = Color3.fromRGB(170, 0, 255)
	unfly.TextScaled = true
	unfly.TextSize = 14.000
	unfly.TextWrapped = true
		unfly.MouseButton1Down:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity"):Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyGyro"):Destroy()
	end)

	StopFly.Name = "Stop Fly"
	StopFly.Parent = FlyCarGui
	StopFly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	StopFly.Position = UDim2.new(0.695689976, 0, 0.0213903747, 0)
	StopFly.Size = UDim2.new(0, 50, 0, 40)
	StopFly.Font = Enum.Font.SourceSans
	StopFly.Text = "Stop fly"
	StopFly.TextColor3 = Color3.fromRGB(170, 0, 255)
	StopFly.TextScaled = true
	StopFly.TextSize = 14.000
	StopFly.TextWrapped = true
	StopFly.MouseButton1Down:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	end)

	Fly.Name = "Fly"
	Fly.Parent = FlyCarGui
	Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Fly.Position = UDim2.new(0.588797748, 0, 0.0213903747, 0)
	Fly.Size = UDim2.new(0, 50, 0, 40)
	Fly.Font = Enum.Font.SourceSans
	Fly.Text = "Fly"
	Fly.TextColor3 = Color3.fromRGB(170, 0, 127)
	Fly.TextScaled = true
	Fly.TextSize = 14.000
	Fly.TextWrapped = true
	Fly.MouseButton1Down:Connect(function()
		local BV = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character.HumanoidRootPart)
		local BG = Instance.new("BodyGyro",game.Players.LocalPlayer.Character.HumanoidRootPart)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	end)

	W.Name = "W"
	W.Parent = FlyCarGui
	W.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	W.Position = UDim2.new(0.191668837, 0, 0.583604283, 0)
	W.Size = UDim2.new(0, 58, 0, 50)
	W.Font = Enum.Font.SourceSans
	W.Text = "↑"
	W.TextColor3 = Color3.fromRGB(226, 226, 226)
	W.TextScaled = true
	W.TextSize = 14.000
	W.TextWrapped = true
	W.MouseButton1Down:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity"):Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character.HumanoidRootPart)
		local BG = Instance.new("BodyGyro",game.Players.LocalPlayer.Character.HumanoidRootPart)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	end)


	S.Name = "S"
	S.Parent = FlyCarGui
	S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S.Position = UDim2.new(0.191668837, 0, 0.735294104, 0)
	S.Size = UDim2.new(0, 58, 0, 50)
	S.Font = Enum.Font.SourceSans
	S.Text = "↓"
	S.TextColor3 = Color3.fromRGB(255, 255, 255)
	S.TextScaled = true
	S.TextSize = 14.000
	S.TextWrapped = true
	S.MouseButton1Down:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity"):Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character.HumanoidRootPart)
		local BG = Instance.new("BodyGyro",game.Players.LocalPlayer.Character.HumanoidRootPart)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	end)