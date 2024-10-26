

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

