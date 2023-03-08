if getgenv().outlaster then
return
end
getgenv().outlaster = true
local CoreGui = game:GetService("CoreGui")
local UI = game:GetObjects("rbxassetid://11702874365")[1]
local arrows = {}
local function ProtectGui(toProtect)
if syn then
syn.ProtectGui(toProtect)
toProtect.Parent = CoreGui
else
local hui = gethui()
toProtect.Parent = hui
end
end
local function alreadyHasArrow(object)
for _, arrow in pairs(arrows) do
if arrow.Adornee == object then
return true
end
end
return false
end
local function Verify(object)
task.delay(0.5, function()
if
object:IsA("Model")
and object.Name == "Part"
and object:FindFirstChildOfClass("MeshPart")
and object:FindFirstChild("Part")
and object.Parent.Name == "Bush"
then
if alreadyHasArrow(object) then
return
end
local newArrow = UI:Clone()
newArrow.Adornee = object
ProtectGui(newArrow)
table.insert(arrows, newArrow)
end
end)
end
local function findobjects()
for _, descendant in pairs(workspace:GetDescendants()) do
Verify(descendant)
end
end
findobjects()
workspace.DescendantAdded:Connect(function(descendant)
Verify(descendant)
end)
workspace.DescendantRemoving:Connect(function(descendant)
for _, arrow in pairs(arrows) do
if arrow.Adornee == descendant then
arrow:Destroy()
end
end
end)