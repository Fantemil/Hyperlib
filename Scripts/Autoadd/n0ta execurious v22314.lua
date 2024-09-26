
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

 local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0.5, 0, 0.5, 0)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 1
Frame.Active = true
Frame.BackgroundTransparency = 0 
Frame.Draggable = true
Frame.Parent = gui




local Input = Instance.new("TextBox")
Input.Size = UDim2.new(0.9, 0.9, 0.7, 0.0)
Input.Position = UDim2.new(0.05, 0, 0.2, 0)
Input.BackgroundColor3 = Color3.new(0, 0, 0)
Input.BorderColor3 = Color3.new(0, 0, 0)
Input.BorderSizePixel = 1
Input.Text = "Text"
Input.TextColor3 = Color3.new(255, 255, 255)
Input.BackgroundTransparency = 0
Input.Font = Enum.Font.Code
Input.TextSize = 15
Input.Parent = Frame

local hellyea = Instance.new("UICorner")
hellyea.CornerRadius = UDim.new(0, 5)
hellyea.Parent = Frame



local run = Instance.new("TextButton")
run.Size = UDim2.new(0.27, 0, 0.09, 0)
run.Position = UDim2.new(0.05, 0, 0.01, 0)
run.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
run.BorderColor3 = Color3.fromRGB(255, 255, 255)
run.BorderSizePixel = 1
run.Text = "run"
run.BackgroundTransparency = 0 
run.TextColor3 = Color3.new(255, 255, 255)
run.Font = Enum.Font.Code
run.Parent = Frame
run.MouseButton1Down:Connect(function()
loadstring(Input.Text)()
end)
local runcorner = Instance.new("UICorner")
runcorner.CornerRadius = UDim.new(0, 5)
runcorner.Parent = run

local clr = Instance.new("TextButton")
clr.Size = UDim2.new(0.27, 0, 0.09, 0)
clr.Position = UDim2.new(0.68, 0, 0.01, 0)
clr.BackgroundColor3 = Color3.new(0, 0, 0)
clr.BorderColor3 = Color3.new(0, 0, 0)
clr.BorderSizePixel = 1
clr.Text = "clear"
clr.BackgroundTransparency = 0 
clr.TextColor3 = Color3.new(255, 255, 255)
clr.Font = Enum.Font.Code
clr.Parent = Frame
clr.MouseButton1Down:Connect(function()
Input.Text = " "
end)

local runc = Instance.new("UICorner")
runc.CornerRadius = UDim.new(0, 5)
runc.Parent = clr


local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 5)
InputCorner.Parent = Input

local HubbT = Instance.new("TextButton")
HubbT.Size = UDim2.new(0.27, 0, 0.09, 0)
HubbT.Position = UDim2.new(0.36, 0, 0.01, 0)
HubbT.BackgroundColor3 = Color3.new(0, 0, 0)
HubbT.BorderColor3 = Color3.new(0, 0, 0)
HubbT.BorderSizePixel = 1
HubbT.Text = "Hub"
HubbT.BackgroundTransparency = 0 
HubbT.TextColor3 = Color3.new(255, 255, 255)
HubbT.Font = Enum.Font.Code
HubbT.Parent = Frame
HubbT.MouseButton1Down:Connect(function()
 --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]

local ngui = Instance.new("ScreenGui")
ngui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")


local HubFrame = Instance.new("Frame")
HubFrame.Size = UDim2.new(0.20, 0, 0.5, 0)
HubFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
HubFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
HubFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
HubFrame.BorderSizePixel = 1
HubFrame.Active = true
HubFrame.BackgroundTransparency = 0 
HubFrame.Draggable = true
HubFrame.Parent = ngui


local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = HubFrame


local qs = Instance.new("TextLabel")
qs.Size = UDim2.new(0.33, 0, 0.12, 0)
qs.Position = UDim2.new(0.3, 0, 0.1, 0)
qs.BackgroundColor3 = Color3.new(0, 0, 0)
qs.BorderColor3 = Color3.new(0, 0, 0)
qs.BorderSizePixel = 1
qs.Text = "what one?"
qs.BackgroundTransparency = 1
qs.TextColor3 = Color3.fromRGB(255, 255, 255)
qs.Font = Enum.Font.Code
qs.Parent = HubFrame
qs.TextScaled = true

local n0taFE = Instance.new("TextButton")
n0taFE.Size = UDim2.new(0.79, 0, 0.3, 0)
n0taFE.Position = UDim2.new(0.1, 0, 0.33, 0)
n0taFE.BackgroundColor3 = Color3.new(0, 0, 0)
n0taFE.BorderColor3 = Color3.new(0, 0, 0)
n0taFE.BorderSizePixel = 1
n0taFE.Text = "n0ta FE"
n0taFE.BackgroundTransparency = 0 
n0taFE.TextColor3 = Color3.new(255, 255, 255)
n0taFE.Font = Enum.Font.Code
n0taFE.Parent = HubFrame
n0taFE.MouseButton1Down:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-n0ta-fe-v2-17324"))()
end)

local c1 = Instance.new("UICorner")
c1.CornerRadius = UDim.new(0, 5)
c1.Parent = n0taFE


local ExeCHub = Instance.new("TextButton")
ExeCHub.Size = UDim2.new(0.79, 0, 0.3, 0)
ExeCHub.Position = UDim2.new(0.1, 0, 0.65, 0)
ExeCHub.BackgroundColor3 = Color3.new(0, 0, 0)
ExeCHub.BorderColor3 = Color3.new(0, 0, 0)
ExeCHub.BorderSizePixel = 1
ExeCHub.Text = "ExeCUrious Hub"
ExeCHub.BackgroundTransparency = 0 
ExeCHub.TextColor3 = Color3.new(255, 255, 255)
ExeCHub.Font = Enum.Font.Code
ExeCHub.Parent = HubFrame
ExeCHub.MouseButton1Down:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/pedroluckygod/Yes/main/ExeCurious%20%5BScript%20Hub%5D"))()
end)

local c2 = Instance.new("UICorner")
c2.CornerRadius = UDim.new(0, 5)
c2.Parent = ExeCHub


end)

local HubC = Instance.new("UICorner")
HubC.CornerRadius = UDim.new(0, 5)
HubC.Parent = HubbT









local an = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
local oc = Instance.new("TextButton")
oc.Size = UDim2.new(0.3, 0, 0.2, 0)
oc.Position = UDim2.new(0.5, 0, 0.5, 0)
oc.BackgroundColor3 = Color3.new(0, 0, 0)
oc.BorderColor3 = Color3.new(0, 0, 0)
oc.BorderSizePixel = 1
oc.Text = "ExECurious v2"
oc.BackgroundTransparency = 0 
oc.TextColor3 = Color3.new(255, 255, 255)
oc.Font = Enum.Font.Code
oc.Parent = an
oc.Draggable = true
oc.TextWrapped = true
oc.MouseButton1Down:Connect(function()
  gui.Enabled = not gui.Enabled
end)

local occorner = Instance.new("UICorner")
occorner.CornerRadius = UDim.new(0, 5)
occorner.Parent = oc






