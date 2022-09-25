-- shawnjbragdon#0001
-- send me some scripting requests, i'll try to get to them.
-- don't request me some gay rbworld shit

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")

local SeatPart = Humanoid.SeatPart
local Vehicle = SeatPart.Parent
local Wheels = Vehicle:FindFirstChild("Wheels")
local Body = Vehicle:FindFirstChild("Body")

if SeatPart:FindFirstAncestor("Body") then
Vehicle = SeatPart:FindFirstAncestor("Body").Parent
Wheels = (Wheels ~= nil and Wheels) or Vehicle:FindFirstChild("Wheels")
end

if game.PlaceId == 3351674303 then
Wheels = Vehicle:FindFirstChild("Core")
end

Vehicle.PrimaryPart = SeatPart

local function GetWheelVelocity()
if game.PlaceId == 3351674303 then
return Wheels:GetChildren()[1]["Wheel"].Velocity, Wheels:GetChildren()[1]["Wheel"].RotVelocity
end
for index, value in pairs(Wheels:GetDescendants()) do
if value:IsA("BasePart") then
return value.Velocity, value.RotVelocity
end
end
end

local function SetWheelVelocity(Velocity, RotVelocity)
for index, value in pairs(Wheels:GetDescendants()) do
pcall(function()
value.Velocity = Velocity
if RotVelocity ~= nil then
value.RotVelocity = RotVelocity
end
end)
end
end

game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Driving Empire Autofarm",
Text = "Thank you for using, if you have any ideas &/or suggestions please message me @ shawnjbragdon#0001 on discord.",
Duration = 30,
Button1 = "Okay",
})

Connection = game:GetService("RunService").Stepped:Connect(function()
if not Vehicle or not Vehicle.Parent or not Humanoid.SeatPart then
Connection:Disconnect()
return
end
local Speed = ((10/12) * (60/88)) * SeatPart.Velocity.Magnitude
if SeatPart.Position.X > -14294.7607 then
Character.Parent = Vehicle
Vehicle:MoveTo(Vector3.new(-17157.2793, 43.1872673, 2611.22705))
Character.Parent = workspace
end
if Speed < 250 then
local WV = GetWheelVelocity()
SetWheelVelocity(Vector3.new(300, WV["Y"], 300 / -29.1940043308))
end
end)