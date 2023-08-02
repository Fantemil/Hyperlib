local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Teleport = Instance.new("TextButton")
local TFrame = Instance.new("Frame")
local RedTp = Instance.new("TextLabel")
local BlueTP = Instance.new("TextLabel")
local YellowTP = Instance.new("TextLabel")
local GreenTP = Instance.new("TextLabel")
local RBottom = Instance.new("TextButton")
local RTop = Instance.new("TextButton")
local BTop = Instance.new("TextButton")
local BBottom = Instance.new("TextButton")
local YTop = Instance.new("TextButton")
local YBottom = Instance.new("TextButton")
local GTop = Instance.new("TextButton")
local GBottom = Instance.new("TextButton")
local Combat = Instance.new("TextButton")
local CoFrame = Instance.new("Frame")
local ESP = Instance.new("TextButton")
local Aimbot = Instance.new("TextButton")
local SilentAim = Instance.new("TextButton")
local Char = Instance.new("TextButton")
local ChFrame = Instance.new("Frame")
local IJump = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local Jump = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.328540623, 0, 0.312276512, 0)
Frame.Size = UDim2.new(0, 439, 0, 314)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(0, 0, 0)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

Teleport.Name = "Teleport"
Teleport.Parent = Frame
Teleport.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Teleport.BorderColor3 = Color3.fromRGB(126, 126, 126)
Teleport.BorderSizePixel = 5
Teleport.Position = UDim2.new(0.016823085, 0, 0.263553053, 0)
Teleport.Size = UDim2.new(0, 73, 0, 35)
Teleport.Font = Enum.Font.SourceSansBold
Teleport.Text = "Teleports"
Teleport.TextColor3 = Color3.fromRGB(255, 255, 255)
Teleport.TextScaled = true
Teleport.TextSize = 14.000
Teleport.TextWrapped = true

TFrame.Name = "TFrame"
TFrame.Parent = Teleport
TFrame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
TFrame.Position = UDim2.new(1.16438401, 0, -0.54285717, 0)
TFrame.Size = UDim2.new(0, 318, 0, 221)

RedTp.Name = "RedTp"
RedTp.Parent = TFrame
RedTp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RedTp.Position = UDim2.new(0.0251572318, 0, 0.171945706, 0)
RedTp.Size = UDim2.new(0, 67, 0, 24)
RedTp.Font = Enum.Font.SourceSansBold
RedTp.Text = "Red Team"
RedTp.TextColor3 = Color3.fromRGB(255, 0, 0)
RedTp.TextScaled = true
RedTp.TextSize = 14.000
RedTp.TextWrapped = true

BlueTP.Name = "BlueTP"
BlueTP.Parent = TFrame
BlueTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BlueTP.Position = UDim2.new(0.261006296, 0, 0.171945706, 0)
BlueTP.Size = UDim2.new(0, 67, 0, 24)
BlueTP.Font = Enum.Font.SourceSansBold
BlueTP.Text = "Blue Team"
BlueTP.TextColor3 = Color3.fromRGB(0, 170, 255)
BlueTP.TextScaled = true
BlueTP.TextSize = 14.000
BlueTP.TextWrapped = true

YellowTP.Name = "YellowTP"
YellowTP.Parent = TFrame
YellowTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
YellowTP.Position = UDim2.new(0.503144681, 0, 0.171945706, 0)
YellowTP.Size = UDim2.new(0, 67, 0, 24)
YellowTP.Font = Enum.Font.SourceSansBold
YellowTP.Text = "Yellow Team"
YellowTP.TextColor3 = Color3.fromRGB(255, 255, 0)
YellowTP.TextScaled = true
YellowTP.TextSize = 14.000
YellowTP.TextWrapped = true

GreenTP.Name = "GreenTP"
GreenTP.Parent = TFrame
GreenTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GreenTP.Position = UDim2.new(0.754716992, 0, 0.171945706, 0)
GreenTP.Size = UDim2.new(0, 67, 0, 24)
GreenTP.Font = Enum.Font.SourceSansBold
GreenTP.Text = "Green Team"
GreenTP.TextColor3 = Color3.fromRGB(0, 255, 0)
GreenTP.TextScaled = true
GreenTP.TextSize = 14.000
GreenTP.TextWrapped = true

RBottom.Name = "RBottom"
RBottom.Parent = TFrame
RBottom.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RBottom.Position = UDim2.new(0.0251572318, 0, 0.619909525, 0)
RBottom.Size = UDim2.new(0, 67, 0, 24)
RBottom.Font = Enum.Font.SourceSansBold
RBottom.Text = "Bottom"
RBottom.TextColor3 = Color3.fromRGB(255, 0, 0)
RBottom.TextSize = 18.000
RBottom.TextWrapped = true

RTop.Name = "RTop"
RTop.Parent = TFrame
RTop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RTop.Position = UDim2.new(0.0251572318, 0, 0.402714968, 0)
RTop.Size = UDim2.new(0, 67, 0, 24)
RTop.Font = Enum.Font.SourceSansBold
RTop.Text = "Top"
RTop.TextColor3 = Color3.fromRGB(255, 0, 0)
RTop.TextSize = 18.000
RTop.TextWrapped = true

BTop.Name = "BTop"
BTop.Parent = TFrame
BTop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BTop.Position = UDim2.new(0.261006296, 0, 0.402714968, 0)
BTop.Size = UDim2.new(0, 67, 0, 24)
BTop.Font = Enum.Font.SourceSansBold
BTop.Text = "Top"
BTop.TextColor3 = Color3.fromRGB(0, 170, 255)
BTop.TextSize = 18.000
BTop.TextWrapped = true

BBottom.Name = "BBottom"
BBottom.Parent = TFrame
BBottom.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BBottom.Position = UDim2.new(0.261006296, 0, 0.619909525, 0)
BBottom.Size = UDim2.new(0, 67, 0, 24)
BBottom.Font = Enum.Font.SourceSansBold
BBottom.Text = "Bottom"
BBottom.TextColor3 = Color3.fromRGB(0, 170, 255)
BBottom.TextSize = 18.000
BBottom.TextWrapped = true

YTop.Name = "YTop"
YTop.Parent = TFrame
YTop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
YTop.Position = UDim2.new(0.503144681, 0, 0.402714968, 0)
YTop.Size = UDim2.new(0, 67, 0, 24)
YTop.Font = Enum.Font.SourceSansBold
YTop.Text = "Top"
YTop.TextColor3 = Color3.fromRGB(255, 255, 0)
YTop.TextSize = 18.000
YTop.TextWrapped = true

YBottom.Name = "YBottom"
YBottom.Parent = TFrame
YBottom.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
YBottom.Position = UDim2.new(0.503144681, 0, 0.619909525, 0)
YBottom.Size = UDim2.new(0, 67, 0, 24)
YBottom.Font = Enum.Font.SourceSansBold
YBottom.Text = "Bottom"
YBottom.TextColor3 = Color3.fromRGB(255, 255, 0)
YBottom.TextSize = 18.000
YBottom.TextWrapped = true

GTop.Name = "GTop"
GTop.Parent = TFrame
GTop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GTop.Position = UDim2.new(0.754716992, 0, 0.402714968, 0)
GTop.Size = UDim2.new(0, 67, 0, 24)
GTop.Font = Enum.Font.SourceSansBold
GTop.Text = "Top"
GTop.TextColor3 = Color3.fromRGB(0, 255, 0)
GTop.TextSize = 18.000
GTop.TextWrapped = true

GBottom.Name = "GBottom"
GBottom.Parent = TFrame
GBottom.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GBottom.Position = UDim2.new(0.754716992, 0, 0.619909525, 0)
GBottom.Size = UDim2.new(0, 67, 0, 24)
GBottom.Font = Enum.Font.SourceSansBold
GBottom.Text = "Bottom"
GBottom.TextColor3 = Color3.fromRGB(0, 255, 0)
GBottom.TextSize = 18.000
GBottom.TextWrapped = true

Combat.Name = "Combat"
Combat.Parent = Frame
Combat.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Combat.BorderColor3 = Color3.fromRGB(126, 126, 126)
Combat.BorderSizePixel = 5
Combat.Position = UDim2.new(0.016823085, 0, 0.473744124, 0)
Combat.Size = UDim2.new(0, 73, 0, 35)
Combat.Font = Enum.Font.SourceSansBold
Combat.Text = "Combat"
Combat.TextColor3 = Color3.fromRGB(255, 255, 255)
Combat.TextScaled = true
Combat.TextSize = 14.000
Combat.TextWrapped = true

CoFrame.Name = "CoFrame"
CoFrame.Parent = Combat
CoFrame.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
CoFrame.Position = UDim2.new(1.24379814, 0, -2.61847138, 0)
CoFrame.Size = UDim2.new(0, 313, 0, 218)
CoFrame.Visible = false

ESP.Name = "ESP"
ESP.Parent = CoFrame
ESP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ESP.Position = UDim2.new(0.0597282648, 0, 0.0724397674, 0)
ESP.Size = UDim2.new(0, 260, 0, 24)
ESP.Font = Enum.Font.SourceSansBold
ESP.Text = "ESP"
ESP.TextColor3 = Color3.fromRGB(255, 85, 0)
ESP.TextSize = 18.000
ESP.TextWrapped = true

Aimbot.Name = "Aimbot"
Aimbot.Parent = CoFrame
Aimbot.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Aimbot.Position = UDim2.new(0.0597282648, 0, 0.728403091, 0)
Aimbot.Size = UDim2.new(0, 260, 0, 24)
Aimbot.Font = Enum.Font.SourceSansBold
Aimbot.Text = "Aimbot"
Aimbot.TextColor3 = Color3.fromRGB(255, 85, 0)
Aimbot.TextSize = 18.000
Aimbot.TextWrapped = true

SilentAim.Name = "SilentAim"
SilentAim.Parent = CoFrame
SilentAim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SilentAim.Position = UDim2.new(0.0597282648, 0, 0.402715027, 0)
SilentAim.Size = UDim2.new(0, 260, 0, 24)
SilentAim.Font = Enum.Font.SourceSansBold
SilentAim.Text = "Silent Aim"
SilentAim.TextColor3 = Color3.fromRGB(255, 85, 0)
SilentAim.TextSize = 18.000
SilentAim.TextWrapped = true

Char.Name = "Char"
Char.Parent = Frame
Char.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Char.BorderColor3 = Color3.fromRGB(126, 126, 126)
Char.BorderSizePixel = 5
Char.Position = UDim2.new(0.016823085, 0, 0.690304637, 0)
Char.Size = UDim2.new(0, 73, 0, 35)
Char.Font = Enum.Font.SourceSansBold
Char.Text = "Character"
Char.TextColor3 = Color3.fromRGB(255, 255, 255)
Char.TextScaled = true
Char.TextSize = 14.000
Char.TextWrapped = true

ChFrame.Name = "ChFrame"
ChFrame.Parent = Char
ChFrame.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
ChFrame.Position = UDim2.new(1.25518775, 0, -4.55505037, 0)
ChFrame.Size = UDim2.new(0, 303, 0, 217)
ChFrame.Visible = false

IJump.Name = "IJump"
IJump.Parent = ChFrame
IJump.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IJump.Position = UDim2.new(0.069629252, 0, 0.0862646624, 0)
IJump.Size = UDim2.new(0, 260, 0, 24)
IJump.Font = Enum.Font.SourceSansBold
IJump.Text = "Inf Jump"
IJump.TextColor3 = Color3.fromRGB(255, 85, 0)
IJump.TextSize = 18.000
IJump.TextWrapped = true

Noclip.Name = "Noclip"
Noclip.Parent = ChFrame
Noclip.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Noclip.Position = UDim2.new(0.069629252, 0, 0.5793522, 0)
Noclip.Size = UDim2.new(0, 260, 0, 24)
Noclip.Font = Enum.Font.SourceSansBold
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.fromRGB(255, 85, 0)
Noclip.TextSize = 18.000
Noclip.TextWrapped = true

Fly.Name = "Fly"
Fly.Parent = ChFrame
Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Fly.Position = UDim2.new(0.069629252, 0, 0.759075642, 0)
Fly.Size = UDim2.new(0, 260, 0, 24)
Fly.Font = Enum.Font.SourceSansBold
Fly.Text = "Fly"
Fly.TextColor3 = Color3.fromRGB(255, 85, 0)
Fly.TextSize = 18.000
Fly.TextWrapped = true

Speed.Name = "Speed"
Speed.Parent = ChFrame
Speed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Speed.Position = UDim2.new(0.069629252, 0, 0.399628609, 0)
Speed.Size = UDim2.new(0, 260, 0, 24)
Speed.Font = Enum.Font.SourceSansBold
Speed.Text = "Speed"
Speed.TextColor3 = Color3.fromRGB(255, 85, 0)
Speed.TextSize = 18.000
Speed.TextWrapped = true

Jump.Name = "Jump"
Jump.Parent = ChFrame
Jump.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Jump.Position = UDim2.new(0.069629252, 0, 0.247554883, 0)
Jump.Size = UDim2.new(0, 260, 0, 24)
Jump.Font = Enum.Font.SourceSansBold
Jump.Text = "Jump"
Jump.TextColor3 = Color3.fromRGB(255, 85, 0)
Jump.TextSize = 18.000
Jump.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.118351147, 0, -0.00301012397, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Dark"
TextLabel.TextColor3 = Color3.fromRGB(255, 85, 0)
TextLabel.TextSize = 25.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.0017555058, 0, -0.00301012397, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Black"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 25.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
RBottom.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131,25,-1.5)
end)

BBottom.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.4,25,131)
end)

YBottom.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131,25,-1.5)
end)

GBottom.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.4,25,-131)
end)

GTop.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.4,131,-81)
end)

RTop.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-92,131,-1.1)
end)

BTop.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.3,131,91)
end)

YTop.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86,131,1)
end)

Jump.MouseButton1Down:Connect(function()
	Humanoid.JumpPower = 150
end)

Speed.MouseButton1Down:Connect(function()
	Humanoid.WalkSpeed = 100
end)

Combat.MouseButton1Down:Connect(function()
	Char.ChFrame.Visible = false
	Teleport.TFrame.Visible = false
	Combat.CoFrame.Visible = true
end)

Char.MouseButton1Down:Connect(function()
	Char.ChFrame.Visible = true
	Teleport.TFrame.Visible = false
	Combat.CoFrame.Visible = false
end)

Teleport.MouseButton1Down:Connect(function()
	Char.ChFrame.Visible = false
	Teleport.TFrame.Visible = true
	Combat.CoFrame.Visible = false
end)

Fly.MouseButton1Down:Connect(function()
	repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
	local mouse = game.Players.LocalPlayer:GetMouse() 
	repeat wait() until mouse
	local plr = game.Players.LocalPlayer 
	local torso = plr.Character.Head 
	local flying = false
	local deb = true 
	local ctrl = {f = 0, b = 0, l = 0, r = 0} 
	local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
	local maxspeed = 50 
	local speed = 0 

	function Fly() 
		local bg = Instance.new("BodyGyro", torso) 
		bg.P = 9e4 
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
		bg.cframe = torso.CFrame 
		local bv = Instance.new("BodyVelocity", torso) 
		bv.velocity = Vector3.new(0,0.1,0) 
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
		repeat wait() 
			plr.Character.Humanoid.PlatformStand = true 
			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
				speed = speed+.5+(speed/maxspeed) 
				if speed > maxspeed then 
					speed = maxspeed 
				end 
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
				speed = speed-1 
				if speed < 0 then 
					speed = 0 
				end 
			end 
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
			else 
				bv.velocity = Vector3.new(0,0.1,0) 
			end 
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
		until not flying 
		ctrl = {f = 0, b = 0, l = 0, r = 0} 
		lastctrl = {f = 0, b = 0, l = 0, r = 0} 
		speed = 0 
		bg:Destroy() 
		bv:Destroy() 
		plr.Character.Humanoid.PlatformStand = false 
	end 
	mouse.KeyDown:connect(function(key) 
		if key:lower() == "e" then 
			if flying then flying = false 
			else 
				flying = true 
				Fly() 
			end 
		elseif key:lower() == "w" then 
			ctrl.f = 1 
		elseif key:lower() == "s" then 
			ctrl.b = -1 
		elseif key:lower() == "a" then 
			ctrl.l = -1 
		elseif key:lower() == "d" then 
			ctrl.r = 1 
		end 
	end) 
	mouse.KeyUp:connect(function(key) 
		if key:lower() == "w" then 
			ctrl.f = 0 
		elseif key:lower() == "s" then 
			ctrl.b = 0 
		elseif key:lower() == "a" then 
			ctrl.l = 0 
		elseif key:lower() == "d" then 
			ctrl.r = 0 
		end 
	end)
	Fly()
end)

Noclip.MouseButton1Down:Connect(function()
	local noclip = true Character = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in pairs(Character:children())
			do pcall(function() if v.className == "Part" then v.CanCollide = false elseif v.ClassName == "Model" then v.Head.CanCollide = false end end)
			end end game:service("RunService").Stepped:wait() end
end)

ESP.MouseButton1Down:Connect(function()
	local gui = Instance.new("BillboardGui")
	local esp = Instance.new("TextLabel",gui) ---- new instances to make the billboard gui and the textlabel



	gui.Name = "Cracked esp"; ---- properties of the esp
	gui.ResetOnSpawn = false
	gui.AlwaysOnTop = true;
	gui.LightInfluence = 0;
	gui.Size = UDim2.new(1.75, 0, 1.75, 0);
	esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	esp.Text = ""
	esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
	esp.BorderSizePixel = 4;
	esp.BorderColor3 = Color3.new(1, 0.333333, 0)
	esp.BorderSizePixel = 0
	esp.Font = "GothamSemibold"
	esp.TextSize = 8
	esp.TextColor3 = Color3.fromRGB(255, 85, 0) -- text colour

		game:GetService("RunService").RenderStepped:Connect(function() ---- loops faster than a while loop :)
			for i,v in pairs (game:GetService("Players"):GetPlayers()) do
				if v ~= game:GetService("Players").LocalPlayer and v.Character.Head:FindFirstChild("Cracked esp")==nil and v.TeamColor ~= game:GetService("Players").LocalPlayer.TeamColor then -- craeting checks for team check, local player etc
				esp.Text = "{"..v.Name.."}"
					gui:Clone().Parent = v.Character.Head
					wait(1)
					end
				end
			end)
end)

IJump.MouseButton1Down:Connect(function()
	local Player = game:GetService'Players'.LocalPlayer;
	local UIS = game:GetService'UserInputService';

	_G.JumpHeight = 50;

	function Action(Object, Function) if Object ~= nil then Function(Object); end end

	UIS.InputBegan:connect(function(UserInput)
		if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
			Action(Player.Character.Humanoid, function(self)
				if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
					Action(self.Parent.HumanoidRootPart, function(self)
						self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
					end)
				end
			end)
		end
	end)
end)


Frame.Selectable = true
Frame.Active = true
Frame.Visible = true
Frame.Draggable = true
ScreenGui.ResetOnSpawn = false