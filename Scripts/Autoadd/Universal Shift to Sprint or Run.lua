local uis = game:GetService("UserInputService")
local ts = game:GetService("TweenService")
local ti = TweenInfo.new(0.5)
local cam = workspace.CurrentCamera
local hum = script.Parent:WaitForChild("Humanoid")

local run1 = ts:Create(cam, ti, {FieldOfView = 80})
local run2 = ts:Create(hum, ti, {WalkSpeed = 30})
local walk1 = ts:Create(cam, ti, {FieldOfView = 70})
local walk2 = ts:Create(hum, ti, {WalkSpeed = 16})

uis.InputBegan:Connect(function(key, processed)
 if key.KeyCode == Enum.KeyCode.LeftShift and not processed then
  run1:Play()
  run2:Play()
 end
end)

uis.InputEnded:Connect(function(key)
 if key.KeyCode == Enum.KeyCode.LeftShift then
  walk1:Play()
  walk2:Play()
 end
end)