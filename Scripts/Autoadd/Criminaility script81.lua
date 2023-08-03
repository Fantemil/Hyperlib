-- Aimbot by Zeyukii
local lowest = 100
local AimbotRange = 500
 
if not game.Players.LocalPlayer.Character then repeat wait() until game.Players.LocalPlayer.Character end
RunService = game:GetService("RunService")
InputService = game:GetService("UserInputService")
AutoLock = function (position)
 
local NearestPlayer = nil
local ViewportSize = game.Workspace.CurrentCamera.ViewportSize
 
for i,v in pairs(game.Players:GetPlayers()) do
if v and v.Character and v~= game.Players.LocalPlayer and v.Character.Humanoid.Health > 0 then
local point = v.Character.PrimaryPart.Position
local offset, onScreen = game.Workspace.CurrentCamera:WorldToScreenPoint(point)
local offsetX, offsetY= offset.X, offset.Y
local viewportX, viewportY = ViewportSize.X, ViewportSize.Y
local dist = math.sqrt(((viewportX/2) - offsetX)^2 + ((viewportY/2) - offsetY)^2)
local distance = (v.Character.PrimaryPart.Position - position).Magnitude
if distance < lowest and dist <= AimbotRange then
NearestPlayer = v.Character
end
end
end
return NearestPlayer
end
 
function KeyHandler(Input,GameProcessed,Started)
if Input.UserInputType == Enum.UserInputType.MouseButton2 and not GameProcessed then
if Started then
Attacking = AutoLock(game.Players.LocalPlayer.Character.PrimaryPart.Position)
else
Attacking = nil
end
end
end
InputService.InputBegan:connect(function(inputObject, gameProcessedEvent)
KeyHandler(inputObject, gameProcessedEvent,true)
end)
InputService.InputEnded:connect(function(inputObject, gameProcessedEvent)
KeyHandler(inputObject, gameProcessedEvent,false)
end)
 
 
 
RunService.RenderStepped:Connect(function()
if Attacking then
game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,Attacking.Torso.Position)
end
end)
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "lol it loaded ",
Text = "Made by zeyukii", 

Button1 = "hi",
Button2 = "bro",
Duration = 30 
})