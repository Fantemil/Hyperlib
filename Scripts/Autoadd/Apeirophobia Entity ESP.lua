local folder = game.Workspace.Entities

local function Destroyed(x)
if x.Parent then return false end
local _, result = pcall(function() x.Parent = x end)
return result:match("locked") and true or false
end

for i, v in pairs(folder:GetChildren()) do
if v.Name ~= "Studio" then
local gui = Instance.new("BillboardGui")
local tl = Instance.new("TextLabel")

gui.Parent = v
gui.AlwaysOnTop = true
gui.Size = UDim2.new(5,0, 3,0)
gui.StudsOffset = Vector3.new(0, 3, 0)

tl.Parent = gui
tl.Size = UDim2.new(1,0, 1,0)
tl.BackgroundTransparency = 1
tl.TextScaled = true
tl.TextColor3 = Color3.new(185, 0, 0)
tl.Text = v.Name
end
end