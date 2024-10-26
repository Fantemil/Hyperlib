local userinputs = game:GetService("UserInputService")
local action = game:GetService("ContextActionService")
local w = game:GetService("Workspace")
local r = game:GetService("RunService")
local d = game:GetService("Debris")
local strength = 400
w.ChildAdded:Connect(function(model)
if model.Name == "GrabParts" then
local part_to_impulse = model["GrabPart"]["WeldConstraint"].Part1
if part_to_impulse then
print("Part found!")
local inputObj
local velocityObj = Instance.new("BodyVelocity", part_to_impulse)
local c1, c2, c3
velocityObj.MaxForce = Vector3.new(0,0,0)
while inputObj == nil and model.Parent do
for _, button in
pairs(game.Players.LocalPlayer.PlayerGui["ContextActionGui"]:GetDescendants()) do
if button:IsA("ImageLabel") then
if button.Image == "http://www.roblox.com/asset/?id=9603678090" then
inputObj = button.Parent
print(inputObj)
end
end
end
r.Heartbeat:Wait()
end
if inputObj then
c1 = inputObj.MouseButton1Up:Connect(function()
print("Launched!")
velocityObj.MaxForce = Vector3.new(math.huge,
math.huge, math.huge)
velocityObj.Velocity =
workspace.CurrentCamera.CFrame.lookVector * strength
end)
c2 = inputObj.MouseButton1Down:Connect(function()
print("Launched!")
velocityObj.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
velocityObj.Velocity = workspace.CurrentCamera.CFrame.lookVector * strength
end)
end
c3 = model:GetPropertyChangedSignal("Parent"):Connect(function()
if not model.Parent then
c3:Disconnect()
d:AddItem(velocityObj, 1)
if c1 then
c1:Disconnect()
if c2 then
c2:Disconnect()
end
end
end
end)
end
end
end)