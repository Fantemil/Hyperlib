--Roblox Pain.
-- Version: 2.82
-- Instances:
local dontstealmyscriptsIworkhardeverdayayayayay = Instance.new("ScreenGui")
local mainroom = Instance.new("ImageLabel")
local ImageLabel = Instance.new("ImageLabel")
local fdummys = Instance.new("TextButton")
local combatag = Instance.new("TextButton")
local charge = Instance.new("TextButton")
local defence = Instance.new("TextButton")
local afk = Instance.new("TextButton")
local blast = Instance.new("TextButton")
--Properties:
dontstealmyscriptsIworkhardeverdayayayayay.Name = "dontstealmyscriptsIworkhardever day ay ay ay ay"
dontstealmyscriptsIworkhardeverdayayayayay.Parent = game.CoreGui

mainroom.Name = "mainroom"
mainroom.Parent = dontstealmyscriptsIworkhardeverdayayayayay
mainroom.BackgroundColor3 = Color3.new(1, 1, 1)
mainroom.Position = UDim2.new(0.312562793, 0, 0.336734742, 0)
mainroom.Size = UDim2.new(0, 420, 0, 214)
mainroom.Image = "rbxassetid://2827753116"
mainroom.ScaleType = Enum.ScaleType.Slice
mainroom.Active = true
mainroom.Draggable = true

ImageLabel.Parent = mainroom
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 0.20000000298023
ImageLabel.BorderColor3 = Color3.new(0.407843, 1, 0.305882)
ImageLabel.Position = UDim2.new(-0.000339329243, 0, 0.81738764, 0)
ImageLabel.Size = UDim2.new(0, 43, 0, 39)
ImageLabel.Image = "rbxassetid://3014355727"
ImageLabel.ScaleType = Enum.ScaleType.Slice

fdummys.Name = "fdummys"
fdummys.Parent = mainroom
fdummys.BackgroundColor3 = Color3.new(0.333333, 1, 1)
fdummys.BackgroundTransparency = 0.60000002384186
fdummys.Position = UDim2.new(0.431490064, 0, 0.0559603982, 0)
fdummys.Size = UDim2.new(0, 199, 0, 28)
fdummys.Font = Enum.Font.Code
fdummys.Text = "Farm Dummy's"
fdummys.TextColor3 = Color3.new(0, 0, 0)
fdummys.TextScaled = true
fdummys.TextSize = 30
fdummys.TextStrokeColor3 = Color3.new(0.333333, 1, 0)
fdummys.TextWrapped = true
fdummys.MouseButton1Down:connect(function()
if Farming == false then
Farming = true
fdummys.BackgroundColor3 = Color3.fromRGB(52, 255, 21)
else
Farming = false
fdummys.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Stepped:Disconnect()
end

local runService = game:GetService('RunService')


if Farming then
Stepped = runService.Stepped:Connect(function()
   for i,v in pairs(workspace:GetChildren()) do
if string.find(v.Name, "D") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame - v.HumanoidRootPart.CFrame.lookVector * 2
end
end
end)
end
wait()
for i,v in pairs(workspace:GetChildren()) do
if string.find(v.Name, "Thug") and v: FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame - v.HumanoidRootPart.CFrame.lookVector * 2
end
end
end)

combatag.Name = "combat/ag"
combatag.Parent = mainroom
combatag.BackgroundColor3 = Color3.new(0.333333, 1, 1)
combatag.BackgroundTransparency = 0.60000002384186
combatag.Position = UDim2.new(0.432807416, 0, 0.464665502, 0)
combatag.Size = UDim2.new(0, 200, 0, 28)
combatag.Font = Enum.Font.Code
combatag.Text = "Auto Combat/Ag"
combatag.TextColor3 = Color3.new(0, 0, 0)
combatag.TextScaled = true
combatag.TextSize = 100
combatag.TextStrokeColor3 = Color3.new(0.333333, 1, 0)
combatag.TextWrapped = true
combatag.MouseButton1Down:connect(function()
if Farming == false then
Farming = true
combatag.BackgroundColor3 = Color3.fromRGB(52, 255, 21)
else
Farming = false
combatag.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Stepped:Disconnect()
end

local runService = game:GetService('RunService')

  while true do
wait()
                local A_1 =
{
        ["LeftLowerArm"] = game:GetService("Workspace")[game.Players[game.Players.LocalPlayer.Name].Name].LeftLowerArm,
        ["RightUpperArm"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].RightUpperArm,
        ["LeftFoot"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].LeftFoot,
        ["RightHand"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].RightHand,
        ["RightLowerArm"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].RightLowerArm,
        ["LeftUpperLeg"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].LeftUpperLeg,
        ["LeftUpperArm"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].LeftUpperArm,
        ["Character"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name],
        ["LeftHand"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].LeftHand,
        ["RightFoot"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].RightFoot,
        ["Humanoid"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].Humanoid,
        ["RightLowerLeg"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].RightLowerLeg,
        ["RightUpperLeg"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].RightUpperLeg,
        ["LeftLowerLeg"] = game:GetService("Workspace")[game.Players.LocalPlayer.Name].LeftLowerLeg
}
local Event = game:GetService("ReplicatedStorage").Remotes.Training.Combat
Event:InvokeServer(A_1)
        end
end)

charge.Name = "charge"
charge.Parent = mainroom
charge.BackgroundColor3 = Color3.new(0.333333, 1, 1)
charge.BackgroundTransparency = 0.60000002384186
charge.Position = UDim2.new(0.0238469448, 0, 0.0595081374, 0)
charge.Size = UDim2.new(0, 143, 0, 28)
charge.Font = Enum.Font.Code
charge.Text = "Auto Charge"
charge.TextColor3 = Color3.new(0, 0, 0)
charge.TextScaled = true
charge.TextSize = 30
charge.TextStrokeColor3 = Color3.new(0.333333, 1, 0)
charge.TextWrapped = true
charge.MouseButton1Down:connect(function()
if Farming == false then
Farming = true
charge.BackgroundColor3 = Color3.fromRGB(52, 255, 21)
else
Farming = false
charge.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Stepped:Disconnect()
end

local runService = game:GetService('RunService')

  while true do
wait()
local A_1 = game:GetService("Players")[game.Players.LocalPlayer.Name].Status
local A_2 = game:GetService("Workspace")[game.Players.LocalPlayer.Name].UpperTorso
local A_3 = game:GetService("Workspace")[game.Players.LocalPlayer.Name].Humanoid
local Event = game:GetService("ReplicatedStorage").Remotes.Training.Charge
Event:InvokeServer(A_1, A_2, A_3)
end
end)

defence.Name = "defence"
defence.Parent = mainroom
defence.BackgroundColor3 = Color3.new(0.333333, 1, 1)
defence.BackgroundTransparency = 0.60000002384186
defence.Position = UDim2.new(0.430613041, 0, 0.25669077, 0)
defence.Size = UDim2.new(0, 200, 0, 28)
defence.Font = Enum.Font.Code
defence.Text = "Auto Defense"
defence.TextColor3 = Color3.new(0, 0, 0)
defence.TextScaled = true
defence.TextSize = 30
defence.TextStrokeColor3 = Color3.new(0.333333, 1, 0)
defence.TextWrapped = true
defence.MouseButton1Down:connect(function()
if Farming == false then
Farming = true
defence.BackgroundColor3 = Color3.fromRGB(52, 255, 21)
else
Farming = false
defence.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Stepped:Disconnect()
end

local runService = game:GetService('RunService')

      while true do
wait()
                local A_1 = game:GetService("Players")[game.Players.LocalPlayer.Name].Stats
local A_2 = game:GetService("Players")[game.Players.LocalPlayer.Name].Status
local A_3 = game:GetService("Workspace")[game.Players.LocalPlayer.Name].Humanoid
local A_4 = game:GetService("Workspace")[game.Players.LocalPlayer.Name].RightHand
local Event = game:GetService("ReplicatedStorage").Remotes.Training.Defense
Event:InvokeServer(A_1, A_2, A_3, A_4)
 end

end)

afk.Name = "afk"
afk.Parent = mainroom
afk.BackgroundColor3 = Color3.new(0.333333, 1, 1)
afk.BackgroundTransparency = 0.60000002384186
afk.Position = UDim2.new(0.0234701969, 0, 0.464665502, 0)
afk.Size = UDim2.new(0, 144, 0, 28)
afk.Font = Enum.Font.Code
afk.Text = "FE-AFK"
afk.TextColor3 = Color3.new(0, 0, 0)
afk.TextScaled = true
afk.TextSize = 30
afk.TextStrokeColor3 = Color3.new(0.333333, 1, 0)
afk.TextWrapped = true

blast.Name = "blast"
blast.Parent = mainroom
blast.BackgroundColor3 = Color3.new(0.333333, 1, 1)
blast.BackgroundTransparency = 0.60000002384186
blast.Position = UDim2.new(0.0215618312, 0, 0.260991186, 0)
blast.Size = UDim2.new(0, 144, 0, 28)
blast.Font = Enum.Font.Code
blast.Text = "Auto Blast"
blast.TextColor3 = Color3.new(0, 0, 0)
blast.TextScaled = true
blast.TextSize = 30
blast.TextStrokeColor3 = Color3.new(0.333333, 1, 0)
blast.TextWrapped = true
blast.MouseButton1Down:connect(function()
if Farming == false then
Farming = true
blast.BackgroundColor3 = Color3.fromRGB(52, 255, 21)
else
Farming = false
blast.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Stepped:Disconnect()
end

local runService = game:GetService('RunService')

    
  while true do

wait()
local A_1 = "Left"
local Event = game:GetService("ReplicatedStorage").Remotes.Actions.EnergyBlast
Event:InvokeServer(A_1)
end
end)
-- Scripts: