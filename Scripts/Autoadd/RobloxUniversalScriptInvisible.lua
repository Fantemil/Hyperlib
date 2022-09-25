local players = game:GetService("Players")
local localplayer = players.LocalPlayer
local playermouse = localplayer:GetMouse()
local character = localplayer.Character
local model = Instance.new("Model")
model.Parent = character
local torso = Instance.new("Part")
torso.Name = 'Torso'
torso.Anchored = true
torso.CanCollide = false
local head = Instance.new("Part")
head.Name = 'Head'
head.Anchored = true
head.CanCollide = false
head.Parent = model
local humanoid = Instance.new("Humanoid")
humanoid.Name = 'Humanoid'
humanoid.Parent = model
torso.Position = Vector3.yAxis * 9999
localplayer.Character = model
task.wait(3)
localplayer.Character = character
task.wait(3)
local humanoid1 = Instance.new("Humanoid")
humanoid1.HipHeight = 2
humanoid1.Parent = character
local root = character:WaitForChild("HumanoidRootPart")
root.Transparency = .5
root.LocalTransparencyModifier = 0
for i, v in pairs(character:GetChildren()) do
 if v ~= root and v.Name ~= 'Humanoid' then
  v:Destroy()
 end
end
local connection; connection = game:GetService("RunService").Stepped:Connect(function(time, deltaTime)
 if typeof(character) == 'Instance' then
  local root = character:FindFirstChild("HumanoidRootPart")
  if root:IsA("BasePart") then
   root.CanCollide = false
  end
 else
  return connection:Disconnect()
 end
end)
humanoid1:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
humanoid1:ChangeState(Enum.HumanoidStateType.Landed)
workspace.CurrentCamera.CameraSubject = root