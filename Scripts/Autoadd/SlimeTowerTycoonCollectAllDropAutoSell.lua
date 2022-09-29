-- Gui to Lua
-- Version: 3.2

-- Instances:
game:GetService("Workspace").SwampKillBrick:Destroy()
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ob = Instance.new("TextButton")
local as = Instance.new("TextButton")
local am = Instance.new("TextButton")
local ccd = Instance.new("TextButton")
local br = Instance.new("TextButton")
local bs = Instance.new("TextButton")
local heading = Instance.new("TextLabel")
local divider = Instance.new("TextLabel")
local obt = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(40, 38, 39)
Frame.BorderSizePixel = 0
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.528766096, 0, 0.187123954, 0)
Frame.Size = UDim2.new(0, 260, 0, 278)

ob.Name = "ob"
ob.Parent = Frame
ob.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
ob.BorderSizePixel = 0
ob.Position = UDim2.new(0.0230769217, 0, 0.20966284, 0)
ob.Size = UDim2.new(0, 121, 0, 38)
ob.Font = Enum.Font.SourceSans
ob.Text = "Complete Obby 1"
ob.TextColor3 = Color3.fromRGB(0, 0, 0)
ob.TextSize = 14.000

as.Name = "as"
as.Parent = Frame
as.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
as.BorderSizePixel = 0
as.Position = UDim2.new(0.0230769254, 0, 0.481819361, 0)
as.Size = UDim2.new(0, 121, 0, 38)
as.Font = Enum.Font.SourceSans
as.Text = "Auto Sell"
as.TextColor3 = Color3.fromRGB(0, 0, 0)
as.TextSize = 14.000

am.Name = "am"
am.Parent = Frame
am.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
am.BorderSizePixel = 0
am.Position = UDim2.new(0.530769229, 0, 0.481458664, 0)
am.Size = UDim2.new(0, 115, 0, 38)
am.Font = Enum.Font.SourceSans
am.Text = "Auto Merge"
am.TextColor3 = Color3.fromRGB(0, 0, 0)
am.TextSize = 14.000

ccd.Name = "ccd"
ccd.Parent = Frame
ccd.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
ccd.BorderSizePixel = 0
ccd.Position = UDim2.new(0.0230769254, 0, 0.823683739, 0)
ccd.Size = UDim2.new(0, 121, 0, 38)
ccd.Font = Enum.Font.SourceSans
ccd.Text = "Collect Current Drops"
ccd.TextColor3 = Color3.fromRGB(0, 0, 0)
ccd.TextSize = 14.000

br.Name = "br"
br.Parent = Frame
br.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
br.BorderSizePixel = 0
br.Position = UDim2.new(0.0230769254, 0, 0.654240131, 0)
br.Size = UDim2.new(0, 121, 0, 38)
br.Font = Enum.Font.SourceSans
br.Text = "Auto Buy Rate"
br.TextColor3 = Color3.fromRGB(0, 0, 0)
br.TextSize = 14.000

bs.Name = "bs"
bs.Parent = Frame
bs.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
bs.BorderSizePixel = 0
bs.Position = UDim2.new(0.530769229, 0, 0.654240131, 0)
bs.Size = UDim2.new(0, 115, 0, 38)
bs.Font = Enum.Font.SourceSans
bs.Text = "Auto Buy Slimes"
bs.TextColor3 = Color3.fromRGB(0, 0, 0)
bs.TextSize = 14.000

heading.Name = "heading"
heading.Parent = Frame
heading.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
heading.BorderColor3 = Color3.fromRGB(53, 53, 53)
heading.BorderSizePixel = 0
heading.Size = UDim2.new(0, 260, 0, 50)
heading.Font = Enum.Font.SourceSans
heading.Text = "Slime Tower Tycoon [UPDATE 4!]"
heading.TextColor3 = Color3.fromRGB(0, 0, 0)
heading.TextSize = 14.000

divider.Name = "divider"
divider.Parent = Frame
divider.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
divider.BorderSizePixel = 0
divider.Position = UDim2.new(0.0461538471, 0, 0.376416385, 0)
divider.Size = UDim2.new(0, 236, 0, 23)
divider.Font = Enum.Font.SourceSans
divider.Text = "Auto's and More"
divider.TextColor3 = Color3.fromRGB(0, 0, 0)
divider.TextSize = 14.000

obt.Name = "obt"
obt.Parent = Frame
obt.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
obt.BorderSizePixel = 0
obt.Position = UDim2.new(0.530769229, 0, 0.20966284, 0)
obt.Size = UDim2.new(0, 115, 0, 38)
obt.Font = Enum.Font.SourceSans
obt.Text = "Complete Obby 2"
obt.TextColor3 = Color3.fromRGB(0, 0, 0)
obt.TextSize = 14.000

-- Scripts:

local function JTZO_fake_script() -- Frame.Dragify 
 local script = Instance.new('LocalScript', Frame)

 local UIS = game:GetService("UserInputService")
 function dragify(Frame)
     dragToggle = nil
     local dragSpeed = 0.50
     dragInput = nil
     dragStart = nil
     local dragPos = nil
     function updateInput(input)
         local Delta = input.Position - dragStart
         local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
         game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
     end
     Frame.InputBegan:Connect(function(input)
         if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
             dragToggle = true
             dragStart = input.Position
             startPos = Frame.Position
             input.Changed:Connect(function()
                 if input.UserInputState == Enum.UserInputState.End then
                     dragToggle = false
                 end
             end)
         end
     end)
     Frame.InputChanged:Connect(function(input)
         if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
             dragInput = input
         end
     end)
     game:GetService("UserInputService").InputChanged:Connect(function(input)
         if input == dragInput and dragToggle then
             updateInput(input)
         end
     end)
 end
 
 dragify(script.Parent)
end
coroutine.wrap(JTZO_fake_script)()

--auto merge

am.MouseButton1Down:connect(function()
while true do
game:GetService("ReplicatedStorage").GTycoonClient.Remotes.MergeDroppers:FireServer()
wait(0.3)
end
end)
-- auto sell

as.MouseButton1Down:connect(function()
while true do
game:GetService("ReplicatedStorage").GTycoonClient.Remotes.DepositDrops:FireServer()
wait(0.3)
end
end)
--buy couldron speed

br.MouseButton1Down:connect(function()
while true do
local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").GTycoonClient.Remotes.BuySpeed:FireServer(unpack(args))
wait(0.3)
end
end)
bs.MouseButton1Down:connect(function()
while true do
--auto buy slime
local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").GTycoonClient.Remotes.BuyDropper:FireServer(unpack(args))
wait(0.3)
end
end)
-- collect all drops 
ccd.MouseButton1Down:connect(function()
while task.wait() do
mm = game:GetService("Workspace").Drops["Dropper_Drop"].Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(mm)
end
end)
-- complete obbies
ob.MouseButton1Down:connect(function()
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint1.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint2.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint3.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint4.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint5.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyButton.Button.Glow.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-152.264297, 94.1937408, -681.607788, -0.619471192, 0.73391217, -0.278618693, -6.28441876e-09, 0.354919493, 0.934896886, 0.785019398, 0.579141676, -0.219862387)
--p2
end)
obt.MouseButton1Down:connect(function()
wait(0.1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint1.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint2.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint3.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint4.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint5.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint6.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint7.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
yuh = game:GetService("Workspace").ObbyCheckpoints.ObbyCheckpoint8.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(yuh)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.3761444, 126.776222, -485.488281, 0.259470433, 0.542675555, -0.79886061, -1.86408506e-08, 0.827191055, 0.561920762, 0.965751052, -0.145801812, 0.214631632)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12.3761444, 126.776222, -485.488281, 0.259470433, 0.542675555, -0.79886061, -1.86408506e-08, 0.827191055, 0.561920762, 0.965751052, -0.145801812, 0.214631632)
end)