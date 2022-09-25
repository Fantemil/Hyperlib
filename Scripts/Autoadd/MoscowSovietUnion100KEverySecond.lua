-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local border = Instance.new("TextButton")
local auto = Instance.new("TextButton")
local admin = Instance.new("TextButton")
local nkvd = Instance.new("TextButton")
local cit = Instance.new("TextButton")
local HP = Instance.new("TextButton")
local gta = Instance.new("TextButton")
local UM = Instance.new("TextButton")
local heading = Instance.new("TextLabel")
local divider = Instance.new("TextLabel")
local KR = Instance.new("TextButton")
local bt = Instance.new("TextButton")
local sme = Instance.new("TextButton")
local cp = Instance.new("TextButton")
local ps = Instance.new("TextButton")
local af = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(40, 38, 39)
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0, 109, 0, 54)
Frame.Size = UDim2.new(0, 260, 0, 455)
Frame.BorderSizePixel = 0

border.Name = "border"
border.Parent = Frame
border.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
border.BorderSizePixel = 0
border.Position = UDim2.new(0.530769229, 0, 0.129131109, 0)
border.Size = UDim2.new(0, 115, 0, 38)
border.Font = Enum.Font.SourceSans
border.Text = "TP Past Border"
border.TextColor3 = Color3.fromRGB(0, 0, 0)
border.TextSize = 14.000

auto.Name = "auto"
auto.Parent = Frame
auto.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
auto.BorderSizePixel = 0
auto.Position = UDim2.new(0.0230769254, 0, 0.129131109, 0)
auto.Size = UDim2.new(0, 121, 0, 38)
auto.Font = Enum.Font.SourceSans
auto.Text = "Autofarm"
auto.TextColor3 = Color3.fromRGB(0, 0, 0)
auto.TextSize = 14.000

admin.Name = "admin"
admin.Parent = Frame
admin.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
admin.BorderSizePixel = 0
admin.Position = UDim2.new(0.0230769254, 0, 0.31730479, 0)
admin.Size = UDim2.new(0, 121, 0, 38)
admin.Font = Enum.Font.SourceSans
admin.Text = "Soviet Administration"
admin.TextColor3 = Color3.fromRGB(0, 0, 0)
admin.TextSize = 14.000

nkvd.Name = "nkvd"
nkvd.Parent = Frame
nkvd.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
nkvd.BorderSizePixel = 0
nkvd.Position = UDim2.new(0.530769229, 0, 0.31730473, 0)
nkvd.Size = UDim2.new(0, 115, 0, 38)
nkvd.Font = Enum.Font.SourceSans
nkvd.Text = "NKVD"
nkvd.TextColor3 = Color3.fromRGB(0, 0, 0)
nkvd.TextSize = 14.000

cit.Name = "cit"
cit.Parent = Frame
cit.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
cit.BorderSizePixel = 0
cit.Position = UDim2.new(0.530769229, 0, 0.53294462, 0)
cit.Size = UDim2.new(0, 115, 0, 38)
cit.Font = Enum.Font.SourceSans
cit.Text = "Red Army"
cit.TextColor3 = Color3.fromRGB(0, 0, 0)
cit.TextSize = 14.000

HP.Name = "HP"
HP.Parent = Frame
HP.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
HP.BorderSizePixel = 0
HP.Position = UDim2.new(0.0230769254, 0, 0.53294462, 0)
HP.Size = UDim2.new(0, 121, 0, 38)
HP.Font = Enum.Font.SourceSans
HP.Text = "Hostile Powers"
HP.TextColor3 = Color3.fromRGB(0, 0, 0)
HP.TextSize = 14.000

gta.Name = "gta"
gta.Parent = Frame
gta.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
gta.BorderSizePixel = 0
gta.Position = UDim2.new(0.0230769254, 0, 0.425978512, 0)
gta.Size = UDim2.new(0, 121, 0, 38)
gta.Font = Enum.Font.SourceSans
gta.Text = "1st GTA"
gta.TextColor3 = Color3.fromRGB(0, 0, 0)
gta.TextSize = 14.000

UM.Name = "UM"
UM.Parent = Frame
UM.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
UM.BorderSizePixel = 0
UM.Position = UDim2.new(0.530769229, 0, 0.425978512, 0)
UM.Size = UDim2.new(0, 115, 0, 38)
UM.Font = Enum.Font.SourceSans
UM.Text = "Union's Media"
UM.TextColor3 = Color3.fromRGB(0, 0, 0)
UM.TextSize = 14.000

heading.Name = "heading"
heading.Parent = Frame
heading.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
heading.BorderColor3 = Color3.fromRGB(53, 53, 53)
heading.BorderSizePixel = 0
heading.Size = UDim2.new(0, 260, 0, 50)
heading.Font = Enum.Font.SourceSans
heading.Text = "❗ [PAPERS, PLEASE] Moscow, Soviet Union"
heading.TextColor3 = Color3.fromRGB(0, 0, 0)
heading.TextSize = 14.000

divider.Name = "divider"
divider.Parent = Frame
divider.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
divider.BorderSizePixel = 0
divider.Position = UDim2.new(0.0461538471, 0, 0.236667514, 0)
divider.Size = UDim2.new(0, 236, 0, 23)
divider.Font = Enum.Font.SourceSans
divider.Text = "Teams"
divider.TextColor3 = Color3.fromRGB(0, 0, 0)
divider.TextSize = 14.000

KR.Name = "KR"
KR.Parent = Frame
KR.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
KR.BorderSizePixel = 0
KR.Position = UDim2.new(0.0230769254, 0, 0.864812732, 0)
KR.Size = UDim2.new(0, 121, 0, 38)
KR.Font = Enum.Font.SourceSans
KR.Text = "Kremlin Regiment"
KR.TextColor3 = Color3.fromRGB(0, 0, 0)
KR.TextSize = 14.000

bt.Name = "bt"
bt.Parent = Frame
bt.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
bt.BorderSizePixel = 0
bt.Position = UDim2.new(0.530769229, 0, 0.864812732, 0)
bt.Size = UDim2.new(0, 115, 0, 38)
bt.Font = Enum.Font.SourceSans
bt.Text = "Border Troops"
bt.TextColor3 = Color3.fromRGB(0, 0, 0)
bt.TextSize = 14.000

sme.Name = "sme"
sme.Parent = Frame
sme.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
sme.BorderSizePixel = 0
sme.Position = UDim2.new(0.530769229, 0, 0.757846653, 0)
sme.Size = UDim2.new(0, 115, 0, 38)
sme.Font = Enum.Font.SourceSans
sme.Text = "SMERSH"
sme.TextColor3 = Color3.fromRGB(0, 0, 0)
sme.TextSize = 14.000

cp.Name = "cp"
cp.Parent = Frame
cp.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
cp.BorderSizePixel = 0
cp.Position = UDim2.new(0.0230769254, 0, 0.757846653, 0)
cp.Size = UDim2.new(0, 121, 0, 38)
cp.Font = Enum.Font.SourceSans
cp.Text = "Communist Party"
cp.TextColor3 = Color3.fromRGB(0, 0, 0)
cp.TextSize = 14.000

ps.Name = "ps"
ps.Parent = Frame
ps.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
ps.BorderSizePixel = 0
ps.Position = UDim2.new(0.0230769254, 0, 0.6469751, 0)
ps.Size = UDim2.new(0, 121, 0, 38)
ps.Font = Enum.Font.SourceSans
ps.Text = "Prison Service"
ps.TextColor3 = Color3.fromRGB(0, 0, 0)
ps.TextSize = 14.000

af.Name = "af"
af.Parent = Frame
af.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
af.BorderSizePixel = 0
af.Position = UDim2.new(0.530769229, 0, 0.6469751, 0)
af.Size = UDim2.new(0, 115, 0, 38)
af.Font = Enum.Font.SourceSans
af.Text = "Air Force"
af.TextColor3 = Color3.fromRGB(0, 0, 0)
af.TextSize = 14.000

-- Scripts:

local function OUSV_fake_script() -- Frame.Dragify 
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
coroutine.wrap(OUSV_fake_script)()
cp.MouseButton1Down:connect(function()
    -- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.

local args = {
    [1] = 10569234,
    [2] = "Communist Party of the Soviet Union"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
end)

UM.MouseButton1Down:connect(function()
    -- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.

local args = {
    [1] = 10569234,
    [2] = "The Union's Media"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
end)

admin.MouseButton1Down:connect(function()
local args = {
    [1] = 10569234,
    [2] = "Soviet Administration"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
-- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.
end)

cit.MouseButton1Down:connect(function()
local args = {
    [1] = 10569234,
    [2] = "Red Army"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
-- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.
end)
af.MouseButton1Down:connect(function()
local args = {
    [1] = 10569234,
    [2] = "Air Force"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
-- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.
end)
af.MouseButton1Down:connect(function()
local args = {
    [1] = 10569234,
    [2] = "Soviet Navy"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
-- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.
end)
gta.MouseButton1Down:connect(function()
local args = {
    [1] = 10569234,
    [2] = "1st Guards Tank Army"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
-- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.
end)
sme.MouseButton1Down:connect(function()
local args = {
    [1] = 10569234,
    [2] = "SMERSH"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
-- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.
end)
KR.MouseButton1Down:connect(function()
local args = {
    [1] = 10569234,
    [2] = "Kremlin Regiment"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
-- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.
end)
nkvd.MouseButton1Down:connect(function()
local args = {
    [1] = 10569234,
    [2] = "NKVD"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
-- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.
end)
HP.MouseButton1Down:connect(function()
local args = {
    [1] = 0,
    [2] = "Hostile Powers",
    [3] = true
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
-- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.
end)
bt.MouseButton1Down:connect(function()
    -- Script generated by SimpleSpy - fixed version for exploits other than synapse & krnl made by stummy#002 credits to exx#9394 for originally creating the script.

local args = {
    [1] = 10569234,
    [2] = "Border Troops"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
end)
ps.MouseButton1Down:connect(function()
    local args = {
    [1] = 10569234,
    [2] = "Prison Service"
}

game:GetService("ReplicatedStorage").ChangeTeam:FireServer(unpack(args))
end)
border.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(34.6576691, 17.0499897, 61.4946976, -0.0808697641, 8.79370461e-08, -0.996724665, -2.60718203e-09, 1, 8.84375524e-08, 0.996724665, 9.75056658e-09, -0.0808697641)
end)
auto.MouseButton1Down:connect(function()
    while true do
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))
local args = {
    [1] = "Doctor"
}

game:GetService("ReplicatedStorage").Jobs.Done:FireServer(unpack(args))

wait(0.1)
end
end)