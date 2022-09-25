-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local inf = Instance.new("TextButton")
local as = Instance.new("TextButton")
local shot = Instance.new("TextButton")
local fk9 = Instance.new("TextButton")
local sni = Instance.new("TextButton")
local bsub = Instance.new("TextButton")
local Lsub = Instance.new("TextButton")
local heading = Instance.new("TextLabel")
local divider = Instance.new("TextLabel")
local hak = Instance.new("TextButton")
local bal = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(40, 38, 39)
Frame.BorderSizePixel = 0
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.528766096, 0, 0.187123939, 0)
Frame.Size = UDim2.new(0, 260, 0, 328)

inf.Name = "inf"
inf.Parent = Frame
inf.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
inf.BorderSizePixel = 0
inf.Position = UDim2.new(0.265384614, 0, 0.177288741, 0)
inf.Size = UDim2.new(0, 121, 0, 38)
inf.Font = Enum.Font.SourceSans
inf.Text = "Inf EXP"
inf.TextColor3 = Color3.fromRGB(0, 0, 0)
inf.TextSize = 14.000

as.Name = "as"
as.Parent = Frame
as.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
as.BorderSizePixel = 0
as.Position = UDim2.new(0.0230769254, 0, 0.420668274, 0)
as.Size = UDim2.new(0, 121, 0, 38)
as.Font = Enum.Font.SourceSans
as.Text = "Assault Rifle"
as.TextColor3 = Color3.fromRGB(0, 0, 0)
as.TextSize = 14.000

shot.Name = "shot"
shot.Parent = Frame
shot.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
shot.BorderSizePixel = 0
shot.Position = UDim2.new(0.530769229, 0, 0.420307606, 0)
shot.Size = UDim2.new(0, 115, 0, 38)
shot.Font = Enum.Font.SourceSans
shot.Text = "Shotgun"
shot.TextColor3 = Color3.fromRGB(0, 0, 0)
shot.TextSize = 14.000

fk9.Name = "fk9"
fk9.Parent = Frame
fk9.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
fk9.BorderSizePixel = 0
fk9.Position = UDim2.new(0.530769229, 0, 0.701381564, 0)
fk9.Size = UDim2.new(0, 115, 0, 38)
fk9.Font = Enum.Font.SourceSans
fk9.Text = "FK9 Unit"
fk9.TextColor3 = Color3.fromRGB(0, 0, 0)
fk9.TextSize = 14.000

sni.Name = "sni"
sni.Parent = Frame
sni.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
sni.BorderSizePixel = 0
sni.Position = UDim2.new(0.0230769254, 0, 0.701381564, 0)
sni.Size = UDim2.new(0, 121, 0, 38)
sni.Font = Enum.Font.SourceSans
sni.Text = "Sniper"
sni.TextColor3 = Color3.fromRGB(0, 0, 0)
sni.TextSize = 14.000

bsub.Name = "bsub"
bsub.Parent = Frame
bsub.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
bsub.BorderSizePixel = 0
bsub.Position = UDim2.new(0.0230769254, 0, 0.56071496, 0)
bsub.Size = UDim2.new(0, 121, 0, 38)
bsub.Font = Enum.Font.SourceSans
bsub.Text = "Submachine Gun"
bsub.TextColor3 = Color3.fromRGB(0, 0, 0)
bsub.TextSize = 14.000

Lsub.Name = "Lsub"
Lsub.Parent = Frame
Lsub.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
Lsub.BorderSizePixel = 0
Lsub.Position = UDim2.new(0.530769229, 0, 0.56071496, 0)
Lsub.Size = UDim2.new(0, 115, 0, 38)
Lsub.Font = Enum.Font.SourceSans
Lsub.Text = "L Submachine Gun"
Lsub.TextColor3 = Color3.fromRGB(0, 0, 0)
Lsub.TextSize = 14.000

heading.Name = "heading"
heading.Parent = Frame
heading.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
heading.BorderColor3 = Color3.fromRGB(53, 53, 53)
heading.BorderSizePixel = 0
heading.Size = UDim2.new(0, 260, 0, 50)
heading.Font = Enum.Font.SourceSans
heading.Text = "S.W.A.T Simulator 🚨"
heading.TextColor3 = Color3.fromRGB(0, 0, 0)
heading.TextSize = 14.000

divider.Name = "divider"
divider.Parent = Frame
divider.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
divider.BorderSizePixel = 0
divider.Position = UDim2.new(0.0461538471, 0, 0.322459549, 0)
divider.Size = UDim2.new(0, 236, 0, 23)
divider.Font = Enum.Font.SourceSans
divider.Text = "Guns and Items"
divider.TextColor3 = Color3.fromRGB(0, 0, 0)
divider.TextSize = 14.000

hak.Name = "hak"
hak.Parent = Frame
hak.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
hak.BorderSizePixel = 0
hak.Position = UDim2.new(0.0230769254, 0, 0.845703125, 0)
hak.Size = UDim2.new(0, 121, 0, 38)
hak.Font = Enum.Font.SourceSans
hak.Text = "Hacker"
hak.TextColor3 = Color3.fromRGB(0, 0, 0)
hak.TextSize = 14.000

bal.Name = "bal"
bal.Parent = Frame
bal.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
bal.BorderSizePixel = 0
bal.Position = UDim2.new(0.530769229, 0, 0.846063733, 0)
bal.Size = UDim2.new(0, 115, 0, 38)
bal.Font = Enum.Font.SourceSans
bal.Text = "Ballistic Sheild"
bal.TextColor3 = Color3.fromRGB(0, 0, 0)
bal.TextSize = 14.000

-- Scripts:

local function PYLKBLS_fake_script() -- Frame.Dragify 
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
coroutine.wrap(PYLKBLS_fake_script)()

inf.MouseButton1Down:connect(function()
local args = {
    [1] = math.huge
}

game:GetService("ReplicatedStorage").addXP:FireServer(unpack(args))
end)
as.MouseButton1Down:connect(function()
local args = {
    [1] = "AAssault"
}

game:GetService("ReplicatedStorage").giveTool:FireServer(unpack(args))
end)
shot.MouseButton1Down:connect(function()
local args = {
    [1] = "BShotgunner"
}

game:GetService("ReplicatedStorage").giveTool:FireServer(unpack(args))
end)
bsub.MouseButton1Down:connect(function()
local args = {
    [1] = "CSubmachine Gunner"
}

game:GetService("ReplicatedStorage").giveTool:FireServer(unpack(args))
end)
Lsub.MouseButton1Down:connect(function()
local args = {
    [1] = "DLight Machine Gunner"
}

game:GetService("ReplicatedStorage").giveTool:FireServer(unpack(args))
end)
sni.MouseButton1Down:connect(function()
local args = {
    [1] = "ESniper"
}

game:GetService("ReplicatedStorage").giveTool:FireServer(unpack(args))
end)
fk9.MouseButton1Down:connect(function()
local args = {
    [1] = "FK9 Unit"
}

game:GetService("ReplicatedStorage").giveTool:FireServer(unpack(args))
end)
hak.MouseButton1Down:connect(function()
local args = {
    [1] = "GHacker"
}

game:GetService("ReplicatedStorage").giveTool:FireServer(unpack(args))
end)
bal.MouseButton1Down:connect(function()
local args = {
    [1] = "HBallistic Shield"
}

game:GetService("ReplicatedStorage").giveTool:FireServer(unpack(args))
end)