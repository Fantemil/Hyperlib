local ScreenGui = Instance.new("ScreenGui")
local OpenF = Instance.new("Frame")
local OpenB = Instance.new("TextButton")
local MainF = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local AutoFarm = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local WalkSpeed = Instance.new("TextButton")
local Close = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.CoreGui

OpenF.Name = "OpenF"
OpenF.Parent = ScreenGui
OpenF.Active = true
OpenF.BackgroundColor3 = Color3.new(0, 0, 0)
OpenF.BackgroundTransparency = 0.40000000596046
OpenF.Position = UDim2.new(0.92768085, 0, 0.626178563, 0)
OpenF.Size = UDim2.new(0, 98, 0, 28)

OpenB.Name = "OpenB"
OpenB.Parent = OpenF
OpenB.BackgroundColor3 = Color3.new(1, 1, 1)
OpenB.BackgroundTransparency = 1
OpenB.Position = UDim2.new(0.0102040814, 0, 0.0357142873, 0)
OpenB.Size = UDim2.new(0, 103, 0, 25)
OpenB.Font = Enum.Font.Gotham
OpenB.Text = "Open"
OpenB.TextColor3 = Color3.new(1, 1, 1)
OpenB.TextSize = 14
OpenB.MouseButton1Click:connect(function()
OpenF.Visible = false
MainF.Visible = true
end)

MainF.Name = "MainF"
MainF.Parent = ScreenGui
MainF.Active = true
MainF.BackgroundColor3 = Color3.new(0, 0, 0)
MainF.BackgroundTransparency = 0.40000000596046
MainF.Position = UDim2.new(0.369627506, 0, 0.30831641, 0)
MainF.Size = UDim2.new(0, 170, 0, 224)
MainF.Draggable = True

Title.Name = "Title"
Title.Parent = MainF
Title.Active = true
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.BackgroundTransparency = 0.40000000596046
Title.Size = UDim2.new(0, 170, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = "Attack On Zombies"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = MainF
AutoFarm.BackgroundColor3 = Color3.new(0, 0, 0)
AutoFarm.BackgroundTransparency = 0.40000000596046
AutoFarm.Position = UDim2.new(0.0588235334, 0, 0.214285731, 0)
AutoFarm.Size = UDim2.new(0, 150, 0, 26)
AutoFarm.Font = Enum.Font.Gotham
AutoFarm.Text = "Auto Farm"
AutoFarm.TextColor3 = Color3.new(1, 1, 1)
AutoFarm.TextSize = 14
AutoFarm.MouseButton1Click:connect(function()
 local groundDistance = 8
local Player = game:GetService("Players").LocalPlayer
local function getNearest()
local nearest, dist = nil, 99999
for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
for _,v in pairs(game.Workspace.enemies:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
return nearest
end
_G.farm2 = true
Player.Chatted:Connect(function(m)
if(m==";autofarm false")then
_G.farm2 = false
elseif(m==";autofarm true")then
_G.farm2 = true
end
end)
_G.globalTarget = nil
game:GetService("RunService").RenderStepped:Connect(function()
if(_G.farm2==true)then
local target = getNearest()
if(target~=nil)then
game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, target.Head.Position)
Player.Character.HumanoidRootPart.CFrame = (target.HumanoidRootPart.CFrame * CFrame.new(0, groundDistance, 9))
_G.globalTarget = target
end
end
end)
spawn(function()
while wait() do
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
game.Players.LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0)
end
end)
while wait() do
if(_G.farm2==true and _G.globalTarget~=nil and _G.globalTarget:FindFirstChild("Head") and Player.Character:FindFirstChildOfClass("Tool"))then
local target = _G.globalTarget
game.ReplicatedStorage.Gun:FireServer({["Normal"] = Vector3.new(0, 0, 0), ["Direction"] = target.Head.Position, ["Name"] = Player.Character:FindFirstChildOfClass("Tool").Name, ["Hit"] = target.Head, ["Origin"] = target.Head.Position, ["Pos"] = target.Head.Position,})
wait()
end
end
end)

Noclip.Name = "Noclip"
Noclip.Parent = MainF
Noclip.BackgroundColor3 = Color3.new(0, 0, 0)
Noclip.BackgroundTransparency = 0.40000000596046
Noclip.Position = UDim2.new(0.0588235334, 0, 0.504464269, 0)
Noclip.Size = UDim2.new(0, 150, 0, 26)
Noclip.Font = Enum.Font.Gotham
Noclip.Text = "Noclip [\"n\"]"
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextSize = 14
Noclip.MouseButton1Click:connect(function()
 local plr = game:service'Players'.LocalPlayer
local char = plr.Character
local hum = char:FindFirstChildOfClass'Humanoid'
local mouse = plr:GetMouse()
on = false

mouse.KeyDown:connect(function(key)
    if key == "n" then
        if not on then
            on = true
        elseif on then
            on = false
        end
    end
end)

while wait() do
    if char then
        hum = char:FindFirstChildOfClass'Humanoid'
    end
    if on then
        hum:ChangeState(11)
    end
end

end)

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = MainF
WalkSpeed.BackgroundColor3 = Color3.new(0, 0, 0)
WalkSpeed.BackgroundTransparency = 0.40000000596046
WalkSpeed.Position = UDim2.new(0.0588235334, 0, 0.8125, 0)
WalkSpeed.Size = UDim2.new(0, 150, 0, 26)
WalkSpeed.Font = Enum.Font.Gotham
WalkSpeed.Text = "Walkspeed"
WalkSpeed.TextColor3 = Color3.new(1, 1, 1)
WalkSpeed.TextSize = 14
WalkSpeed.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

Close.Name = "Close"
Close.Parent = MainF
Close.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0.841176391, 0, -0.0223214328, 0)
Close.Size = UDim2.new(0, 27, 0, 39)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 0, 0.0156863)
Close.TextSize = 48
Close.MouseButton1Click:connect(function()
 MainF.Visible = false
 OpenF.Visible = true
end)