local PiggyGui = Instance.new("ScreenGui")
PiggyGui.Name = "PiggyGui"
PiggyGui.Parent = game.StarterGui

local ScrollingFrame = Instance.new("ScrollingFrame", PiggyGui)
ScrollingFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
ScrollingFrame.Position = UDim2.new(0.08, 0, 0.42, 0)
ScrollingFrame.Size = UDim2.new(0, 296, 0, 388)




local PiggyGui = Instance.new("ScreenGui")
PiggyGui.Name = "PiggyGui"
PiggyGui.Parent = game.CoreGui

local ScrollingFrame = Instance.new("ScrollingFrame", PiggyGui)
ScrollingFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
ScrollingFrame.Position = UDim2.new(0.08, 0, 0.42, 0)
ScrollingFrame.Size = UDim2.new(0, 296, 0, 388)

local UIGridLayout = Instance.new("UIGridLayout", ScrollingFrame)
UIGridLayout.CellSize = UDim2.new(0,90,0,90)

while wait(1) do
local a = workspace:getDescendants()
local items = {}
local itemframes = ScrollingFrame:getChildren()
for i=1,#itemframes do
if itemframes[i].ClassName == "TextButton" then
itemframes[i]:remove()
end
end
for i=1,#a do
if a[i].Name == "ItemPickupScript" and a[i].Parent:findFirstChild("ClickDetector") then
table.insert(items, a[i].Parent)
end
end
for i=1,#items do
local ItemFrame = Instance.new("TextButton", ScrollingFrame)
ItemFrame.Name = "ItemFrame"
ItemFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ItemFrame.BackgroundTransparency = 0.95
ItemFrame.Size = UDim2.new(0, 100, 0, 100)
ItemFrame.Text = ""
local View = Instance.new("ViewportFrame", ItemFrame)
View.Name = "View"
View.Size = UDim2.new(1,0,1,0)
View.BackgroundTransparency = 1
View.BorderSizePixel = 0
local object = items[i]
local viewportclone = object:Clone()
viewportclone.Parent = View
local cam = Instance.new("Camera", viewportclone)
cam.CameraType = Enum.CameraType.Fixed
local objectPosition = object.Position
local cameraPosition = objectPosition + Vector3.new(0,3,0)
cam.CoordinateFrame = CFrame.new(cameraPosition, objectPosition)
View.CurrentCamera = cam

ItemFrame.MouseButton1Down:connect(function()
if items[i]:findFirstChild("ClickDetector") then
local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.05)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = items[i].CFrame
wait(0.1)
fireclickdetector(items[i].ClickDetector)
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end
end)
end
end