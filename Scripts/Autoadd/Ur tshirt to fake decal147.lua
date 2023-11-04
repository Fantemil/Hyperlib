local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local humrp = Player.Character.Torso
local humrp2 = Player.Character.HumanoidRootPart

Player.Character.Humanoid.PlatformStand = true

for _, part in Player.Character:GetChildren() do
	if part:IsA("Part") then
		spawn(function()
			local prt = part
			while task.wait() do
				prt.CanCollide = false
			end
		end)
	end
end

local bv = Instance.new("BodyVelocity", humrp)
bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bv.Velocity = Vector3.new(0, 0, 0)

local bav = Instance.new("BodyAngularVelocity", humrp)
bav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bav.AngularVelocity = Vector3.new(0, 0, 0)

humrp2.CFrame = CFrame.Angles(math.rad(90), 0, 0)

mouse = Player:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
	local pos = mouse.Hit - (humrp2.CFrame.LookVector * 0.48)
	wait()
	pos = CFrame.new(pos.X,pos.Y,pos.Z,select(4, humrp2.CFrame:components()))
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = Player.Backpack

local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "AutoRotateTool"
tool.Parent = Player.Backpack

local function MoveObject(object)
	humrp2.CFrame = object.CFrame - object.Position + humrp2.Position
end

local function OnClick()
    local mouse = Player:GetMouse()
    local target = mouse.Target

    if target then
        MoveObject(target)
    end
end

tool.Activated:Connect(OnClick)

-------------------------------------------------------------------------------------

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local x = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local y = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local z = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.245328411, 0, 0.518250704, 0)
Frame.Size = UDim2.new(0, 191, 0, 99)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(65, 65, 65)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.15), NumberSequenceKeypoint.new(1.00, 0.15)}
UIGradient.Parent = Frame

x.Name = "x"
x.Parent = Frame
x.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
x.BackgroundTransparency = 0.500
x.BorderColor3 = Color3.fromRGB(0, 0, 0)
x.BorderSizePixel = 0
x.Position = UDim2.new(0.0487475954, 0, 0.0740260854, 0)
x.Size = UDim2.new(0, 53, 0, 37)
x.ClearTextOnFocus = false
x.Font = Enum.Font.SourceSans
x.MultiLine = true
x.PlaceholderColor3 = Color3.fromRGB(116, 116, 116)
x.PlaceholderText = "X"
x.Text = "90"
x.TextColor3 = Color3.fromRGB(0, 0, 0)
x.TextScaled = true
x.TextSize = 14.000
x.TextWrapped = true

UICorner.Parent = x

UICorner_2.Parent = Frame

y.Name = "y"
y.Parent = Frame
y.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
y.BackgroundTransparency = 0.500
y.BorderColor3 = Color3.fromRGB(0, 0, 0)
y.BorderSizePixel = 0
y.Position = UDim2.new(0.359077185, 0, 0.0740260854, 0)
y.Size = UDim2.new(0, 53, 0, 37)
y.ClearTextOnFocus = false
y.Font = Enum.Font.SourceSans
y.MultiLine = true
y.PlaceholderColor3 = Color3.fromRGB(116, 116, 116)
y.PlaceholderText = "Y"
y.Text = "0"
y.TextColor3 = Color3.fromRGB(0, 0, 0)
y.TextScaled = true
y.TextSize = 14.000
y.TextWrapped = true

UICorner_3.Parent = y

z.Name = "z"
z.Parent = Frame
z.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
z.BackgroundTransparency = 0.500
z.BorderColor3 = Color3.fromRGB(0, 0, 0)
z.BorderSizePixel = 0
z.Position = UDim2.new(0.677870214, 0, 0.0740260854, 0)
z.Size = UDim2.new(0, 53, 0, 37)
z.ClearTextOnFocus = false
z.Font = Enum.Font.SourceSans
z.MultiLine = true
z.PlaceholderColor3 = Color3.fromRGB(116, 116, 116)
z.PlaceholderText = "Z"
z.Text = "0"
z.TextColor3 = Color3.fromRGB(0, 0, 0)
z.TextScaled = true
z.TextSize = 14.000
z.TextWrapped = true

UICorner_4.Parent = z

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 0.500
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0471204184, 0, 0.49494949, 0)
TextButton.Size = UDim2.new(0, 173, 0, 41)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Apply rotation"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_5.Parent = TextButton

-- Scripts:

local function AQQM_fake_script() -- UIGradient.LocalScript 
	local script = Instance.new('LocalScript', UIGradient)

	script.Parent.Parent.Draggable = true
	
	local RunService = game:GetService("RunService")
	local ROTATE_SPEED = 22.5
	local uiGradient = script.Parent
	
	local function onRenderStep(deltaTime)
		local currentRotation = uiGradient.Rotation
		uiGradient.Rotation = (currentRotation + ROTATE_SPEED * deltaTime) % 360
	end
	
	RunService.RenderStepped:Connect(onRenderStep)
end
coroutine.wrap(AQQM_fake_script)()
local function RBYD_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local x = script.Parent.Parent.x
	local y = script.Parent.Parent.y
	local z = script.Parent.Parent.z
	
	local humrp = game.Players.LocalPlayer.Character.HumanoidRootPart
	
	script.Parent.MouseButton1Click:Connect(function()
		humrp.CFrame = CFrame.new(humrp.Position) * CFrame.Angles(math.rad(x.Text), math.rad(y.Text), math.rad(z.Text))
	end)
end
coroutine.wrap(RBYD_fake_script)()