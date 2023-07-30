-- Tabs
local MainTab = Window:CreateTab("Main")
local PlayerTab = Window:CreateTab("Player")
local OtherTab = Window:CreateTab("Others")

-- Section
local MainSection = MainTab:CreateSection("Main")
local FunSection = MainTab:CreateSection("Fun")
local PlayerSection = PlayerTab:CreateSection("Player")
local OthersSection = OtherTab:CreateSection("Others")

-- Sections Conteners

-- Main Tab
MainSection:CreateButton("Coming soon", function()
end)
FunSection:CreateButton("Slow Spinbot", function()
	local speed = 25
	local plr = game:GetService("Players").LocalPlayer
	repeat
		task.wait()
	until plr.Character
	local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
	plr.Character:WaitForChild("Humanoid").AutoRotate = false
	local velocity = Instance.new("AngularVelocity")
	velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
	velocity.MaxTorque = math.huge
	velocity.AngularVelocity = Vector3.new(0, speed, 0)
	velocity.Parent = humRoot
	velocity.Name = "Slow Spinbot" 
end)
FunSection:CreateButton("Normal Spinbot", function()
	local speed = 50
	local plr = game:GetService("Players").LocalPlayer
	repeat
		task.wait()
	until plr.Character
	local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
	plr.Character:WaitForChild("Humanoid").AutoRotate = false
	local velocity = Instance.new("AngularVelocity")
	velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
	velocity.MaxTorque = math.huge
	velocity.AngularVelocity = Vector3.new(0, speed, 0)
	velocity.Parent = humRoot
	velocity.Name = "Normal Spinbot" 
end)
FunSection:CreateButton("Fast Spinbot", function()
	local speed = 100
	local plr = game:GetService("Players").LocalPlayer
	repeat
		task.wait()
	until plr.Character
	local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
	plr.Character:WaitForChild("Humanoid").AutoRotate = false
	local velocity = Instance.new("AngularVelocity")
	velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
	velocity.MaxTorque = math.huge
	velocity.AngularVelocity = Vector3.new(0, speed, 0)
	velocity.Parent = humRoot
	velocity.Name = "Fast Spinbot" 
end)
FunSection:CreateButton("Super Fast Spinbot", function()
	local speed = 180
	local plr = game:GetService("Players").LocalPlayer
	repeat
		task.wait()
	until plr.Character
	local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
	plr.Character:WaitForChild("Humanoid").AutoRotate = false
	local velocity = Instance.new("AngularVelocity")
	velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
	velocity.MaxTorque = math.huge
	velocity.AngularVelocity = Vector3.new(0, speed, 0)
	velocity.Parent = humRoot
	velocity.Name = "Super Fast Spinbot" 
end)

-- Player Tab
PlayerSection:CreateButton("Speed Hack", function()
	_G.WS = "50"; -- Enter speed here
	local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
	Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
		Humanoid.WalkSpeed = _G.WS;
	end)
	Humanoid.WalkSpeed = _G.WS;
end)
PlayerSection:CreateButton("Jump Hack", function()
	_G.JP = "100"; -- Enter speed here
	local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
	Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
		Humanoid.JumpPower = _G.JP;
	end)
	Humanoid.JumpPower = _G.JP;
end)

-- Others
OthersSection:CreateButton("Infinite Yield", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)