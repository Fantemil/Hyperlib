local function Destroyed(x)
if x.Parent then return false end
local _, result = pcall(function() x.Parent = x end)
return result:match("locked") and true or false
end

local function createGui(parent)
local gui = Instance.new("BillboardGui")
local tl = Instance.new("TextLabel")

gui.Parent = parent
gui.AlwaysOnTop = true
gui.Size = UDim2.new(7,0, 4,0)
gui.StudsOffset = Vector3.new(0, 3, 0)

tl.Parent = gui
tl.Size = UDim2.new(1,0, 1,0)
tl.BackgroundTransparency = 1
tl.TextScaled = true
tl.TextColor3 = Color3.new(0, 1, 0)
tl.Text = "Exit"

parent.Changed:Connect(function()
if Destroyed(parent) == true then
gui:Destroy()
end
end)
end

if game.Workspace.Buildings:FindFirstChild("0") then
local part = game.Workspace.Buildings["0"].Exits.Part

createGui(part)
elseif game.Workspace.Buildings:FindFirstChild("1") then
local part = game.Workspace.Buildings.Rendered.Level2Entrance.Gate

createGui(part)
elseif game.Workspace.Buildings:FindFirstChild("2") then
local part = game.Workspace.Buildings["2"].Exits.Part

createGui(part)
elseif game.Workspace.Buildings:FindFirstChild("3") then
local part1 = game.Workspace.Buildings.Rendered.Level4Entrance.EntrancePart
local part = game.Workspace.Buildings.Rendered.Level4Entrance.Part

createGui(part1)
elseif game.Workspace.Buildings:FindFirstChild("4") then
local part = game.Workspace.Buildings["4"].Exit.Part

createGui(part)
elseif game.Workspace.Buildings:FindFirstChild("5") then
local part = game.Workspace.Buildings["5"].Exits.Part

createGui(part)
end