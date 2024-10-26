

        -- Gui to Lua
-- Version: 3.2

local speaker = game.Players.LocalPlayer



-- Instances:

local Flymguiv2 = Instance.new("ScreenGui")
local FlyFrame = Instance.new("Frame")
local ddnsfbfwewefe = Instance.new("TextButton")
local Speed = Instance.new("TextBox")
local Close = Instance.new("TextButton")
local Speeed = Instance.new("TextLabel")
local Stat = Instance.new("TextLabel")
local Stat2 = Instance.new("TextLabel")
local Unfly = Instance.new("TextButton")
local Fly = Instance.new("TextButton")

local Laballll = Instance.new("TextButton")
local Laballll2 = Instance.new("TextButton")

--Properties:

Flymguiv2.Name = "Flym gui v2"
Flymguiv2.Parent = game.CoreGui
Flymguiv2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FlyFrame.Name = "FlyFrame"
FlyFrame.Parent = Flymguiv2
FlyFrame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
FlyFrame.BorderSizePixel = 0
FlyFrame.Draggable = true
FlyFrame.Position = UDim2.new(0.473242491, 0, 0.544645488, 0)
FlyFrame.Size = UDim2.new(0, 237, 0, 139)
FlyFrame.Active = true

ddnsfbfwewefe.Name = "ddnsfbfwewefe"
ddnsfbfwewefe.Parent = FlyFrame
ddnsfbfwewefe.BackgroundColor3 = Color3.fromRGB(0, 0, 191)
ddnsfbfwewefe.BorderSizePixel = 0
ddnsfbfwewefe.Position = UDim2.new(-0.000210968778, 0, -0.00395679474, 0)
ddnsfbfwewefe.Size = UDim2.new(0, 237, 0, 27)
ddnsfbfwewefe.Font = Enum.Font.SourceSans
ddnsfbfwewefe.Text = "Script made by WarriorRoberr"
ddnsfbfwewefe.TextColor3 = Color3.fromRGB(25, 253, 0)
ddnsfbfwewefe.TextScaled = true
ddnsfbfwewefe.TextSize = 14.000
ddnsfbfwewefe.TextWrapped = true

Speed.Name = "Speed"
Speed.Parent = FlyFrame
Speed.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Speed.BorderColor3 = Color3.fromRGB(0, 0, 191)
Speed.Position = UDim2.new(0.445025861, 0, 0.402877688, 0)
Speed.Size = UDim2.new(0, 111, 0, 33)
Speed.Font = Enum.Font.SourceSans
Speed.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Speed.Text = "16"
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextScaled = true
Speed.TextSize = 14.000
Speed.TextWrapped = true

Speeed.Name = "Speeed"
Speeed.Parent = FlyFrame
Speeed.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Speeed.BorderSizePixel = 0
Speeed.Position = UDim2.new(0.0759493634, 0, 0.402877688, 0)
Speeed.Size = UDim2.new(0, 87, 0, 32)
Speeed.ZIndex = 0
Speeed.Font = Enum.Font.SourceSans
Speeed.Text = "Speed:"
Speeed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speeed.TextScaled = true
Speeed.TextSize = 14.000
Speeed.TextWrapped = true

Stat.Name = "Stat"
Stat.Parent = FlyFrame
Stat.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Stat.BorderSizePixel = 0
Stat.Position = UDim2.new(0.299983799, 0, 0.239817441, 0)
Stat.Size = UDim2.new(0, 85, 0, 15)
Stat.Font = Enum.Font.SourceSans
Stat.Text = "Status:"
Stat.TextColor3 = Color3.fromRGB(255, 255, 255)
Stat.TextScaled = true
Stat.TextSize = 14.000
Stat.TextWrapped = true

Stat2.Name = "Stat2"
Stat2.Parent = FlyFrame
Stat2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Stat2.BorderSizePixel = 0
Stat2.Position = UDim2.new(0.546535194, 0, 0.239817441, 0)
Stat2.Size = UDim2.new(0, 27, 0, 15)
Stat2.Font = Enum.Font.SourceSans
Stat2.Text = "Off"
Stat2.TextColor3 = Color3.fromRGB(255, 0, 0)
Stat2.TextScaled = true
Stat2.TextSize = 14.000
Stat2.TextWrapped = true

Close.Name = "Close"
Close.Parent = FlyFrame
Close.BackgroundColor3 = Color3.fromRGB(0, 0, 191)
Close.Position = UDim2.new(0.872971296, 0, -0.198201343, 0)
Close.Size = UDim2.new(0, 30, 0, 26)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
function CLosee()
Flymguiv2:Destroy()
end
Close.MouseButton1Click:Connect(CLosee)






Laballll.Name = "Laballll"
Laballll.Parent = FlyFrame
Laballll.BackgroundColor3 = Color3.fromRGB(0, 0, 191)
Laballll.BorderSizePixel = 0
Laballll.Position = UDim2.new(-0.000210944563, 0, -0.205395609, 0)
Laballll.Size = UDim2.new(0, 78, 0, 27)
Laballll.Font = Enum.Font.SourceSans
Laballll.Text = "Swim"
Laballll.TextColor3 = Color3.fromRGB(25, 253, 0)
Laballll.TextScaled = true
Laballll.TextSize = 14.000
Laballll.TextWrapped = true

Laballll2.Name = "Laballll2"
Laballll2.Parent = FlyFrame
Laballll2.BackgroundColor3 = Color3.fromRGB(0, 0, 191)
Laballll2.BorderSizePixel = 0
Laballll2.Position = UDim2.new(0.333122402, 0, -0.205395594, 0)
Laballll2.Size = UDim2.new(0, 128, 0, 27)
Laballll2.Font = Enum.Font.SourceSans
Laballll2.Text = ""
Laballll2.TextColor3 = Color3.fromRGB(25, 253, 0)
Laballll2.TextScaled = true
Laballll2.TextSize = 14.000
Laballll2.TextWrapped = true









Unfly.Name = "Unfly"
Unfly.Parent = FlyFrame
Unfly.BackgroundColor3 = Color3.fromRGB(0, 0, 191)
Unfly.BorderSizePixel = 0
Unfly.Position = UDim2.new(0.0759493634, 0, 0.705797076, 0)
Unfly.Size = UDim2.new(0, 199, 0, 32)
Unfly.Visible = false
Unfly.Font = Enum.Font.SourceSans
Unfly.Text = "Disable"
Unfly.TextColor3 = Color3.fromRGB(255, 255, 255)
Unfly.TextScaled = true
Unfly.TextSize = 14.000
Unfly.TextWrapped = true
Unfly.MouseButton1Click:Connect(function()
	Workspace.Gravity = 168
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
	speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
	Unfly.Visible = false
	Fly.Visible = true
	Stat2.Text = "Off"
	Stat2.TextColor3 = Color3.fromRGB(255, 0, 0)
end)

Fly.Name = "Fly"
Fly.Parent = FlyFrame
Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 191)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.0759493634, 0, 0.705797076, 0)
Fly.Size = UDim2.new(0, 199, 0, 32)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Enable"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextScaled = true
Fly.TextSize = 14.000
Fly.TextWrapped = true
Fly.MouseButton1Click:Connect(function()
	Workspace.Gravity = 0
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
	speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
	speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed.Text
	Fly.Visible = false
	Unfly.Visible = true
	Stat2.Text = "On"
	Stat2.TextColor3 = Color3.fromRGB(0, 255, 0)
end)