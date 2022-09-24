--//Variables

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--//Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.400
Frame.Position = UDim2.new(0, 0, 0.5, -160)
Frame.Size = UDim2.new(0, 326, 0, 321)

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0, 0, 0.379204899, -25)
TextButton.Size = UDim2.new(0, 132, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Gain Steps On"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Name = "TextButton_2"
TextButton_2.Parent = ScreenGui
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(0.107224599, 0, 0.379204899, -25)
TextButton_2.Size = UDim2.new(0, 132, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Gain Steps Off"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Name = "TextButton_3"
TextButton_3.Parent = ScreenGui
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.Position = UDim2.new(0, 0, 0.5, -25)
TextButton_3.Size = UDim2.new(0, 132, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Gain Orbs On"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextButton_4.Name = "TextButton_4"
TextButton_4.Parent = ScreenGui
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.Position = UDim2.new(0.107224599, 0, 0.5, -25)
TextButton_4.Size = UDim2.new(0, 132, 0, 50)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Gain Orbs Off"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

TextButton_6.Name = "TextButton_6"
TextButton_6.Parent = ScreenGui
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.Position = UDim2.new(0.107224599, 0, 0.636085629, -25)
TextButton_6.Size = UDim2.new(0, 132, 0, 50)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "Gain Gems Off"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true

TextButton_5.Name = "TextButton_5"
TextButton_5.Parent = ScreenGui
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.Position = UDim2.new(0, 0, 0.636085629, -25)
TextButton_5.Size = UDim2.new(0, 132, 0, 50)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Gain Gems On"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0404580161, 0, 0.255351692, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "ewo#1337"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true


--//Main
function SCRIPT_EWOEWO_FAKESCRIPT() -- TextButton.LocalScript
local script = Instance.new('LocalScript')
script.Parent = TextButton
script.Parent.MouseButton1Click:connect(function()
_G.StepFarm = true
while _G.StepFarm == true do
local A_1 = "collectOrb"
local A_2 = "Red Orb"
local A_3 = "City"
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
wait()
end
end)

end
coroutine.resume(coroutine.create(SCRIPT_EWOEWO_FAKESCRIPT))
function SCRIPT_ZVZEWO_FAKESCRIPT() -- TextButton_2.LocalScript
local script = Instance.new('LocalScript')
script.Parent = TextButton_2
script.Parent.MouseButton1Click:Connect(function()
_G.StepFarm = false
while _G.StepFarm == true do
local A_1 = "collectOrb"
local A_2 = "Red Orb"
local A_3 = "City"
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
wait()
end
end)

end
coroutine.resume(coroutine.create(SCRIPT_ZVZEWO_FAKESCRIPT))
function EWO_1456_SCRIPT()
local script = Instance.new('LocalScript')
script.Parent = TextButton_3
script.Parent.MouseButton1Click:Connect(function()
_G.GemFarm = true
while _G.GemFarm == true do
local A_1 = "collectOrb"
local A_2 = "Gem"
local A_3 = "City"
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
wait()
end
end)

end
coroutine.resume(coroutine.create(EWO_1456_SCRIPT))
function SCRIPT_EWOS79_FAKESCRIPT()
local script = Instance.new('LocalScript')
script.Parent = TextButton_4
script.Parent.MouseButton1Click:Connect(function()
_G.GemFarm = false
while _G.GemFarm == true do
local A_1 = "collectOrb"
local A_2 = "Gem"
local A_3 = "City"
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
wait()
end
end)

end
coroutine.resume(coroutine.create(SCRIPT_EWOS79_FAKESCRIP))
function SCRIPT_509_FAKESCRIPT()
local script = Instance.new('LocalScript')
script.Parent = TextButton_5
script.Parent.MouseButton1Click:Connect(function()
_G.EXPFarm = true
while _G.EXPFarm == true do
local A_1 = "collectOrb"
local A_2 = "Yellow Orb"
local A_3 = "City"
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
wait()
end
end)

end
coroutine.resume(coroutine.create(SCRIPT_509_FAKESCRIPT))
function SCRIPT_zvz_FAKESCRIPT()
local script = Instance.new('LocalScript')
script.Parent = TextButton_6
script.Parent.MouseButton1Click:Connect(function()
_G.EXPFarm = false
while _G.EXPFarm == true do
local A_1 = "collectOrb"
local A_2 = "Yellow Orb"
local A_3 = "City"
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
wait()
end
end)

end
coroutine.resume(coroutine.create(SCRIPT_zvz_FAKESCRIPT))