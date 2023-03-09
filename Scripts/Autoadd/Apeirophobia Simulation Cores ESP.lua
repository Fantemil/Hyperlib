local folder = game.Workspace.Ignored.Trophies

local function Destroyed(x)
if x.Parent then return false end
local _, result = pcall(function() x.Parent = x end)
return result:match("locked") and true or false
end

for _, v in pairs(folder:GetChildren()) do
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
tl.TextColor3 = Color3.new(0, 20, 255)
tl.Text = "S. Core"

v.Changed:Connect(function()
if Destroyed(v) == true then
gui:Destroy()
end
end)
end