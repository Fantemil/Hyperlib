local GameScriptGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Tittle = Instance.new("Frame")
local Header = Instance.new("TextLabel")
local isw = Instance.new("TextButton")
local HGSP = Instance.new("TextButton")
local afk = Instance.new("TextButton")
local xButton = Instance.new("TextButton")
local OpenFrame = Instance.new("Frame")
local Open = Instance.new("TextButton")

GameScriptGui.Name = "GameScriptGui"
GameScriptGui.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = GameScriptGui
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
MainFrame.BorderSizePixel = 0
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0.39118838, 0, 0.0474308431, 0)
MainFrame.Size = UDim2.new(0, 240, 0, 240)
MainFrame.Visible = false
Tittle.Name = "Tittle"
Tittle.Parent = MainFrame
Tittle.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Tittle.BorderSizePixel = 0
Tittle.Size = UDim2.new(0, 230, 0, 36)

Header.Name = "Header"
Header.Parent = MainFrame
Header.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Header.BorderSizePixel = 0
Header.Position = UDim2.new(0.0549645387, 0, 0, 0)
Header.Size = UDim2.new(0, 226, 0, 36)
Header.Font = Enum.Font.SciFi
Header.Text = "Scripts"
Header.TextColor3 = Color3.new(0.333333, 1, 1)
Header.TextSize = 14

HGSP.Name = "HighSpeed"
HGSP.Parent = MainFrame
HGSP.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
HGSP.BorderSizePixel = 0
HGSP.Position = UDim2.new(0.0283687934, 0, 0.180921048, 0)
HGSP.Size = UDim2.new(0, 229, 0, 50)
HGSP.Font = Enum.Font.SciFi
HGSP.Text = "High Speed"
HGSP.TextColor3 = Color3.new(0.333333, 1, 1)
HGSP.TextSize = 14

isw.Name = "isw"
isw.Parent = MainFrame
isw.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
isw.BorderSizePixel = 0
isw.Position = UDim2.new(0.0283687934, 0, 0.417763174, 0)
isw.Size = UDim2.new(0, 229, 0, 50)
isw.Font = Enum.Font.SciFi
isw.Text = "Instant Win"
isw.TextColor3 = Color3.new(0.333333, 1, 1)
isw.TextSize = 14

afk.Name = "afk"
afk.Parent = MainFrame
afk.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
afk.BorderSizePixel = 0
afk.Position = UDim2.new(0.0283687934, 0, 0.65663174, 0)
afk.Size = UDim2.new(0, 229, 0, 50)
afk.Font = Enum.Font.SciFi
afk.Text = "AFK Farm"
afk.TextColor3 = Color3.new(0.333333, 1, 1)
afk.TextSize = 14

xButton.Name = "xButton"
xButton.Parent = MainFrame
xButton.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
xButton.BorderSizePixel = 0
xButton.Size = UDim2.new(0, 31, 0, 36)
xButton.Font = Enum.Font.SourceSans
xButton.Text = "X"
xButton.TextColor3 = Color3.new(0.333333, 1, 1)
xButton.TextSize = 20

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = GameScriptGui
OpenFrame.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
OpenFrame.BorderSizePixel = 0
OpenFrame.Position = UDim2.new(0, 0, 0.707509875, 0)
OpenFrame.Size = UDim2.new(0, 160, 0, 40)

Open.Name = "Open"
Open.Parent = OpenFrame
Open.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.075000003, 0)
Open.Size = UDim2.new(0, 158, 0, 37)
Open.Font = Enum.Font.SciFi
Open.Text = "Open"
Open.TextColor3 = Color3.new(0.333333, 1, 1)
Open.TextSize = 14

HGSP.MouseButton1Down:connect(function()
 _G.WS = "22";
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
    Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    Humanoid.WalkSpeed = _G.WS;
    end)
    Humanoid.WalkSpeed = _G.WS;
end)

isw.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-118.98053741455, 254.00015258789, 47.062557220459)

wait(1,5)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-22.591833114624, -10.999859809875, 49.991184234619)

end)

afk.MouseButton1Down:connect(function()
while true do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-118.98053741455, 254.00015258789, 47.062557220459)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-22.591833114624, -10.999859809875, 49.991184234619)
wait(10)
end
end)

xButton.MouseButton1Down:connect(function()
MainFrame:TweenPosition(UDim2.new(0.384,0,-1,0), 'Out', 'Elastic', 3)
MainFrame.Visible = false
OpenFrame.Visible = true
end)

Open.MouseButton1Down:connect(function()
OpenFrame.Visible = false
MainFrame.Visible = true
MainFrame:TweenPosition(UDim2.new(0.384,0,0.377,0), 'Out', 'Elastic', 3)
end)