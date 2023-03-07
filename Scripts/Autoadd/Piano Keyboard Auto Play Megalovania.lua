local CounterGui = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Notif = Instance.new("Frame")
local PlayingNotif = Instance.new("TextLabel")
local NotifDesc = Instance.new("TextLabel")
local audio = Instance.new("Sound")

audio.Parent = game:GetService("Workspace")
audio.SoundId = "rbxassetid://344101086"

CounterGui.Name = "CounterGui"
CounterGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CounterGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

BG.Name = "BG"
BG.Parent = CounterGui
BG.AnchorPoint = Vector2.new(0.5, 0.5)
BG.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BG.BackgroundTransparency = 0.400
BG.Position = UDim2.new(0.5, 0, 0.400000006, 0)
BG.Size = UDim2.new(1, 0, 1.20000005, 0)

Title.Name = "Title"
Title.Parent = BG
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.5, 0, 0.600000024, 0)
Title.Size = UDim2.new(1, 0, 1, 0)
Title.Font = Enum.Font.GothamBlack
Title.Text = "3"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Notif.Name = "Notif"
Notif.Parent = CounterGui
Notif.AnchorPoint = Vector2.new(0.5, 0.5)
Notif.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notif.BackgroundTransparency = 1.000
Notif.Position = UDim2.new(0.5, 0, 0.5, 0)
Notif.Size = UDim2.new(1, 0, 1, 0)
Notif.Visible = false

PlayingNotif.Name = "PlayingNotif"
PlayingNotif.Parent = Notif
PlayingNotif.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayingNotif.BackgroundTransparency = 1.000
PlayingNotif.Position = UDim2.new(0, 0, 0.800000012, 0)
PlayingNotif.Size = UDim2.new(0.300000012, 0, 0.0700000003, 0)
PlayingNotif.Font = Enum.Font.Gotham
PlayingNotif.Text = "Now Playing:"
PlayingNotif.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayingNotif.TextScaled = true
PlayingNotif.TextSize = 14.000
PlayingNotif.TextWrapped = true
PlayingNotif.TextXAlignment = Enum.TextXAlignment.Left

NotifDesc.Name = "NotifDesc"
NotifDesc.Parent = Notif
NotifDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotifDesc.BackgroundTransparency = 1.000
NotifDesc.Position = UDim2.new(0, 0, 0.850000024, 0)
NotifDesc.Size = UDim2.new(0.300000012, 0, 0.150000006, 0)
NotifDesc.Font = Enum.Font.Gotham
NotifDesc.Text = "Megalovania"
NotifDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
NotifDesc.TextScaled = true
NotifDesc.TextSize = 14.000
NotifDesc.TextWrapped = true
NotifDesc.TextXAlignment = Enum.TextXAlignment.Left
audio:Play()
task.wait(1)
Title.Text = "2"
audio:Play()
task.wait(1)
Title.Text = "1"
audio:Play()
task.wait(1)
BG.Visible = false
audio:Play()
Notif.Visible = true

local function press(key)
    keypress(key)
 keyrelease(key)
end
local function shiftPress(key)
 keypress(0x10)
 press(key)
 keyrelease(0x10)
end
press(0x59)
task.wait(0.12)
press(0x59)
task.wait(0.07)
press(0x44)
task.wait(0.3)
press(0x50)
task.wait(0.35)
shiftPress(0x4F)
task.wait(0.25)
press(0x4F)
task.wait(0.2)
press(0x49)
task.wait(0.25)
press(0x59)
task.wait(0.09)
press(0x49)
task.wait(0.18)
press(0x4F)
task.wait(0.1)
press(0x54)
task.wait(0.12)
press(0x54)
task.wait(0.08)
press(0x44)
task.wait(0.3)
press(0x50)
task.wait(0.37)
shiftPress(0x4F)
task.wait(0.25)
press(0x4F)
task.wait(0.2)
press(0x49)
task.wait(0.22)
press(0x59)
task.wait(0.08)
press(0x49)
task.wait(0.2)
press(0x4F)
task.wait(0.1)
press(0x52)
task.wait(0.1)
press(0x52)
task.wait(0.1)
press(0x44)
task.wait(0.3)
press(0x50)
task.wait(0.4)
shiftPress(0x4F)
task.wait(0.2)
press(0x4F)
task.wait(0.2)
pess(0x49)
task.wait(0.15)
press(0x59)
task.wait(0.12)
pess(0x49)
task.wait(0.2)
press(0x4F)

Notif.Visible = false