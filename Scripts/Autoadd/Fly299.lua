local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Fly = Instance.new("TextButton")
local walkspeed = Instance.new("TextButton")
local wsframe = Instance.new("Frame")
local wsinput = Instance.new("TextBox")
local setws = Instance.new("TextButton")
local rews = Instance.new("TextButton")
local wsclose = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Open = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(255, 170, 255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.14777948, 0, 0.194278911, 0)
Main.Size = UDim2.new(0, 360, 0, 413)
 
Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(226, 151, 226)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 360, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "6uz's Gui"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeTransparency = 0.000
Title.TextWrapped = true
 
Fly.Name = "Fly"
Fly.Parent = Main
Fly.BackgroundColor3 = Color3.fromRGB(255, 119, 242)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.0472222194, 0, 0.198731437, 0)
Fly.Size = UDim2.new(0, 153, 0, 55)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Fly"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextScaled = true
Fly.TextSize = 14.000
Fly.TextStrokeTransparency = 0.000
Fly.TextWrapped = true
Fly.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/9tZMx4SW"))()
end)
 
walkspeed.Name = "walkspeed"
walkspeed.Parent = Main
walkspeed.BackgroundColor3 = Color3.fromRGB(255, 119, 242)
walkspeed.BorderSizePixel = 0
walkspeed.Position = UDim2.new(0.508333325, 0, 0.198731437, 0)
walkspeed.Size = UDim2.new(0, 153, 0, 55)
walkspeed.Font = Enum.Font.SourceSans
walkspeed.Text = "Set Speed"
walkspeed.TextColor3 = Color3.fromRGB(255, 255, 255)
walkspeed.TextScaled = true
walkspeed.TextSize = 14.000
walkspeed.TextStrokeTransparency = 0.000
walkspeed.TextWrapped = true
walkspeed.MouseButton1Click:Connect(function()
wsframe.Visible = true
Fly.Visible = false
end)
 
wsframe.Name = "wsframe"
wsframe.Parent = walkspeed
wsframe.BackgroundColor3 = Color3.fromRGB(255, 170, 255)
wsframe.BorderSizePixel = 0
wsframe.Position = UDim2.new(-1.19607842, 0, -0.583201468, 0)
wsframe.Size = UDim2.new(0, 360, 0, 362)
wsframe.Visible = false
 
wsinput.Name = "wsinput"
wsinput.Parent = wsframe
wsinput.BackgroundColor3 = Color3.fromRGB(231, 154, 231)
wsinput.BorderSizePixel = 0
wsinput.Position = UDim2.new(0.163888887, 0, 0.0883977935, 0)
wsinput.Size = UDim2.new(0, 241, 0, 63)
wsinput.Font = Enum.Font.SourceSans
wsinput.Text = "Speed Value"
wsinput.TextColor3 = Color3.fromRGB(255, 255, 255)
wsinput.TextScaled = true
wsinput.TextSize = 14.000
wsinput.TextStrokeTransparency = 0.000
wsinput.TextWrapped = true
wsclose.MouseButton1Click:Connect(function()
wsframe.Visible = false
Fly.Visible = true
end)
 
setws.Name = "setws"
setws.Parent = wsframe
setws.BackgroundColor3 = Color3.fromRGB(221, 147, 221)
setws.BorderSizePixel = 0
setws.Position = UDim2.new(0.0472222231, 0, 0.331491709, 0)
setws.Size = UDim2.new(0, 143, 0, 51)
setws.Font = Enum.Font.SourceSans
setws.Text = "Set Walk Speed"
setws.TextColor3 = Color3.fromRGB(255, 255, 255)
setws.TextScaled = true
setws.TextSize = 14.000
setws.TextStrokeTransparency = 0.000
setws.TextWrapped = true
setws.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = wsinput.Text
end)
 
rews.Name = "rews"
rews.Parent = wsframe
rews.BackgroundColor3 = Color3.fromRGB(221, 147, 221)
rews.BorderSizePixel = 0
rews.Position = UDim2.new(0.508333325, 0, 0.331491709, 0)
rews.Size = UDim2.new(0, 153, 0, 51)
rews.Font = Enum.Font.SourceSans
rews.Text = "Reset Walk Speed"
rews.TextColor3 = Color3.fromRGB(255, 255, 255)
rews.TextScaled = true
rews.TextSize = 14.000
rews.TextStrokeTransparency = 0.000
rews.TextWrapped = true
rews.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
 
wsclose.Name = "wsclose"
wsclose.Parent = wsframe
wsclose.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wsclose.BorderSizePixel = 0
wsclose.Position = UDim2.new(0.891666651, 0, 0, 0)
wsclose.Size = UDim2.new(0, 39, 0, 39)
wsclose.Font = Enum.Font.SourceSans
wsclose.Text = "X"
wsclose.TextColor3 = Color3.fromRGB(255, 255, 255)
wsclose.TextScaled = true
wsclose.TextSize = 14.000
wsclose.TextStrokeTransparency = 0.500
wsclose.TextWrapped = true
 
Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.891666651, 0, 0, 0)
Close.Size = UDim2.new(0, 39, 0, 39)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextStrokeTransparency = 0.500
Close.TextWrapped = true
Close.MouseButton1Click:Connect(function()
Main.Visible = false
Open.Visible = true
end)
 
Open.Name = "Open"
Open.Parent = ScreenGui
Open.BackgroundColor3 = Color3.fromRGB(255, 170, 255)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.566150188, 0)
Open.Size = UDim2.new(0, 92, 0, 22)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextStrokeTransparency = 0.500
Open.TextWrapped = true
Open.MouseButton1Click:Connect(function()
Main.Visible = true
Open.Visible = false
end)
 
-- Scripts:
 
local function NLNLEP_fake_script() -- ScreenGui.Script
local script = Instance.new('Script', ScreenGui)
 
frame = script.Parent.Main -- Take out {}s, and put name of frame
frame.Draggable = true
frame.Active = true
frame.Selectable = true
end
