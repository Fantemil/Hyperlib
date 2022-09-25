for i,a in pairs(game:GetDescendants()) do
    if a.Name == "SquidGameGui" then
        a:Destroy()
    end
end

local SquidGameGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local SquidGameLogo = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local InstantTpRedGreenLight = Instance.new("TextButton")
local TpWinShape = Instance.new("TextButton")
local PullRope = Instance.new("TextButton")
local ToggeablePunish = Instance.new("TextButton")
local FakeGlassNamer = Instance.new("TextButton")
local active = true
local on = true

SquidGameGui.Name = "SquidGameGui"
SquidGameGui.Parent = game:WaitForChild("CoreGui")
SquidGameGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SquidGameGui.ResetOnSpawn = false

Frame.Parent = SquidGameGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
Frame.BorderColor3 = Color3.fromRGB(64, 64, 64)
Frame.Position = UDim2.new(0.755256534, 0, 0.410684466, 0)
Frame.Size = UDim2.new(0, 194, 0, 61)
Frame.Draggable = true

SquidGameLogo.Name = "SquidGameLogo"
SquidGameLogo.Parent = Frame
SquidGameLogo.Active = true
SquidGameLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SquidGameLogo.BorderColor3 = Color3.fromRGB(64, 64, 64)
SquidGameLogo.Position = UDim2.new(0.0635346472, 0, 0.0788446516, 0)
SquidGameLogo.Size = UDim2.new(0, 169, 0, 51)
SquidGameLogo.Image = "http://www.roblox.com/asset/?id=7572531023"

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
ScrollingFrame.BackgroundTransparency = 0.500
ScrollingFrame.BorderColor3 = Color3.fromRGB(64, 64, 64)
ScrollingFrame.Position = UDim2.new(0, 0, 1, 0)
ScrollingFrame.Size = UDim2.new(0, 194, 0, 167)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 10, 0)

InstantTpRedGreenLight.Name = "Instant Tp Red & Green Light"
InstantTpRedGreenLight.Parent = ScrollingFrame
InstantTpRedGreenLight.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
InstantTpRedGreenLight.BorderColor3 = Color3.fromRGB(64, 64, 64)
InstantTpRedGreenLight.Position = UDim2.new(0.0618556701, 0, 0, 0)
InstantTpRedGreenLight.Size = UDim2.new(0, 169, 0, 32)
InstantTpRedGreenLight.Font = Enum.Font.SourceSans
InstantTpRedGreenLight.Text = "Red & Green Light TP"
InstantTpRedGreenLight.TextColor3 = Color3.fromRGB(255, 255, 255)
InstantTpRedGreenLight.TextSize = 18.000
InstantTpRedGreenLight.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
InstantTpRedGreenLight.TextWrapped = true

TpWinShape.Name = "TpWinShape"
TpWinShape.Parent = ScrollingFrame
TpWinShape.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
TpWinShape.BorderColor3 = Color3.fromRGB(64, 64, 64)
TpWinShape.Position = UDim2.new(0.0618556701, 0, 0.0688524395, 0)
TpWinShape.Size = UDim2.new(0, 169, 0, 32)
TpWinShape.Font = Enum.Font.SourceSans
TpWinShape.Text = "Shape Line Instant Win"
TpWinShape.TextColor3 = Color3.fromRGB(255, 255, 255)
TpWinShape.TextSize = 18.000
TpWinShape.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

PullRope.Name = "PullRope"
PullRope.Parent = ScrollingFrame
PullRope.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
PullRope.BorderColor3 = Color3.fromRGB(64, 64, 64)
PullRope.Position = UDim2.new(0.0618556701, 0, 0.137704879, 0)
PullRope.Size = UDim2.new(0, 169, 0, 32)
PullRope.Font = Enum.Font.SourceSans
PullRope.Text = "Toggle Rope Pull"
PullRope.TextColor3 = Color3.fromRGB(255, 255, 255)
PullRope.TextSize = 18.000
PullRope.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

ToggeablePunish.Name = "Toggeable Punish"
ToggeablePunish.Parent = ScrollingFrame
ToggeablePunish.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
ToggeablePunish.BorderColor3 = Color3.fromRGB(64, 64, 64)
ToggeablePunish.Position = UDim2.new(0.0618556701, 0, 0.208196685, 0)
ToggeablePunish.Size = UDim2.new(0, 169, 0, 32)
ToggeablePunish.Font = Enum.Font.SourceSans
ToggeablePunish.Text = "Toggeable Punish"
ToggeablePunish.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggeablePunish.TextSize = 18.000
ToggeablePunish.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

FakeGlassNamer.Name = "Fake Glass Namer"
FakeGlassNamer.Parent = ScrollingFrame
FakeGlassNamer.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
FakeGlassNamer.BorderColor3 = Color3.fromRGB(64, 64, 64)
FakeGlassNamer.Position = UDim2.new(0.0618556701, 0, 0.275409788, 0)
FakeGlassNamer.Size = UDim2.new(0, 169, 0, 32)
FakeGlassNamer.Font = Enum.Font.SourceSans
FakeGlassNamer.Text = "Fake Glass Namer"
FakeGlassNamer.TextColor3 = Color3.fromRGB(255, 255, 255)
FakeGlassNamer.TextSize = 18.000
FakeGlassNamer.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

InstantTpRedGreenLight.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-576.481506, 20.1353817, 304.144165, -0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, -0.707134247)
end)

TpWinShape.MouseButton1Down:connect(function()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Star" or v.Name == "Circle" or v.Name == "Square" or v.Name == "Triangle" or v.Name == "Umbrella" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
        end
    end
end)

PullRope.MouseButton1Click:Connect(function()
    if not on then on = true
        _G.ON = true
        while _G.ON and wait(0.1) do
            game:GetService("ReplicatedStorage").RE.Pull:FireServer()
        end
    else on = false
        _G.ON = false
        while _G.ON and wait(0.1) do
            game:GetService("ReplicatedStorage").RE.Pull:FireServer()
        end
    end
end)

ToggeablePunish.MouseButton1Click:Connect(function()
    if not active then active = true
        game.Players.LocalPlayer.Character.Parent = nil
    else active = false
        game.Players.LocalPlayer.Character.Parent = workspace
    end
end)

FakeGlassNamer.MouseButton1Down:connect(function()

    for i,v in pairs(game:GetService("Workspace").Glass:GetDescendants()) do
        if v.ClassName == "TouchTransmitter" then
            local BillboardGui = Instance.new("BillboardGui")
            local TextLabel = Instance.new("TextLabel")
    
            BillboardGui.Parent = v.Parent
            BillboardGui.AlwaysOnTop = true
            BillboardGui.LightInfluence = 1
            BillboardGui.Size = UDim2.new(0, 50, 0, 50)
            BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
    
            TextLabel.Parent = BillboardGui
            TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Size = UDim2.new(1, 0, 1, 0)
            TextLabel.Text = "FakeGlass"
            TextLabel.TextColor3 = Color3.new(1, 0, 0)
            TextLabel.TextScaled = true
        end
    end
end)