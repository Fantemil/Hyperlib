-- Gui to Lua
-- Version: 3.2

-- Instances:

local s9HSkVv1l1xazfli = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local idk = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local DropShadowHolder_2 = Instance.new("Frame")
local DropShadow_2 = Instance.new("ImageLabel")

--Properties:

s9HSkVv1l1xazfli.Name = "s9HSkVv1l1xazfli"
s9HSkVv1l1xazfli.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
s9HSkVv1l1xazfli.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
s9HSkVv1l1xazfli.ResetOnSpawn = false

Frame.Parent = s9HSkVv1l1xazfli
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0086767897, 0, 0.0897435918, 0)
Frame.Size = UDim2.new(0, 198, 0, 96)

UICorner.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(11, 6, 140)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.0365717337, 0, 0.0929487571, 0)
Frame_2.Size = UDim2.new(0, 182, 0, 78)

UICorner_2.Parent = Frame_2

idk.Name = "idk"
idk.Parent = Frame_2
idk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
idk.BackgroundTransparency = 1.000
idk.BorderColor3 = Color3.fromRGB(0, 0, 0)
idk.BorderSizePixel = 0
idk.Position = UDim2.new(-4.19197512e-08, 0, 0, 0)
idk.Size = UDim2.new(0, 182, 0, 78)
idk.Font = Enum.Font.FredokaOne
idk.Text = "Sigma Hub" -- Change if you want
idk.TextColor3 = Color3.fromRGB(255, 255, 255)
idk.TextScaled = true
idk.TextSize = 14.000
idk.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 157)), ColorSequenceKeypoint.new(0.10, Color3.fromRGB(12, 109, 66)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
UIGradient.Parent = idk

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = Frame_2
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6015897843"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

DropShadowHolder_2.Name = "DropShadowHolder"
DropShadowHolder_2.Parent = Frame
DropShadowHolder_2.BackgroundTransparency = 1.000
DropShadowHolder_2.BorderSizePixel = 0
DropShadowHolder_2.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder_2.ZIndex = 0

DropShadow_2.Name = "DropShadow"
DropShadow_2.Parent = DropShadowHolder_2
DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow_2.BackgroundTransparency = 1.000
DropShadow_2.BorderSizePixel = 0
DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow_2.Size = UDim2.new(1, 47, 1, 47)
DropShadow_2.ZIndex = 0
DropShadow_2.Image = "rbxassetid://6015897843"
DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow_2.ImageTransparency = 0.500
DropShadow_2.ScaleType = Enum.ScaleType.Slice
DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)