-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Pages = Instance.new("TextLabel")
local Generators = Instance.new("TextLabel")
local Slender = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Frame.Position = UDim2.new(0.0873715281, 0, 0.5, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0.100000001, 0, 0.300000012, 0)

UICorner.Parent = Frame

Pages.Name = "Pages"
Pages.Parent = Frame
Pages.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Pages.BorderSizePixel = 0
Pages.Position = UDim2.new(0, 0, 0.119189508, 0)
Pages.Size = UDim2.new(1, 0, 0.189511254, 0)
Pages.Font = Enum.Font.SourceSans
Pages.Text = "Show Pages (Z)"
Pages.TextColor3 = Color3.fromRGB(255, 255, 255)
Pages.TextScaled = true
Pages.TextSize = 14.000
Pages.TextWrapped = true

Generators.Name = "Generators"
Generators.Parent = Frame
Generators.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Generators.BorderSizePixel = 0
Generators.Position = UDim2.new(0, 0, 0.69129914, 0)
Generators.Size = UDim2.new(1, 0, 0.189511254, 0)
Generators.Font = Enum.Font.SourceSans
Generators.Text = "Show Generators (X)"
Generators.TextColor3 = Color3.fromRGB(255, 255, 255)
Generators.TextScaled = true
Generators.TextSize = 14.000
Generators.TextWrapped = true

Slender.Name = "Slender"
Slender.Parent = Frame
Slender.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Slender.BorderSizePixel = 0
Slender.Position = UDim2.new(0, 0, 0.40524435, 0)
Slender.Size = UDim2.new(1, 0, 0.189511254, 0)
Slender.Font = Enum.Font.SourceSans
Slender.Text = "Show Slender (C)"
Slender.TextColor3 = Color3.fromRGB(255, 255, 255)
Slender.TextScaled = true
Slender.TextSize = 14.000
Slender.TextWrapped = true

-- Scripts:

local function TCIFN_fake_script() -- Pages.PageScript
local script = Instance.new('LocalScript', Pages)

local InS = game:GetService("UserInputService")

local function createGuiPages(parent)
if parent.Transparency == 0 then
local BGui = Instance.new("BillboardGui")
BGui.Parent = parent
BGui.AlwaysOnTop = true
BGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BGui.StudsOffset = Vector3.new(0, 3, 0)
BGui.Size = UDim2.new(5, 0, 1.5, 0)

local text = Instance.new("TextLabel")
text.Parent = BGui
text.Text = "Page"
text.TextScaled = true
text.BackgroundTransparency = 1
text.Size = UDim2.new(1, 0, 1, 0)
text.TextColor3 = Color3.fromRGB(255, 0, 0)
else

end
end


InS.InputBegan:Connect(function(input, GPE)
if input.KeyCode == Enum.KeyCode.Z then
if game.Workspace.MAP.Pages ~= nil and game.Workspace.MAP.HPageSpawns ~= nil then

local model1 = game.Workspace.MAP.Pages

for _, v in pairs(model1:GetChildren()) do
createGuiPages(v)

v.Changed:Connect(function()
if v.Transparency == 1 then

local BGui = v.BillboardGui
BGui:Destroy()
end
end)
end

local model2 = game.Workspace.MAP.HPageSpawns

for _, v in pairs(model2:GetChildren()) do
createGuiPages(v)

v.Changed:Connect(function()
if v.Transparency == 1 then

local BGui = v.BillboardGui
BGui:Destroy()
end
end)
end
end
end
end)
end
coroutine.wrap(TCIFN_fake_script)()
local function WBNHNPG_fake_script() -- Generators.GenScript
local script = Instance.new('LocalScript', Generators)

local InS = game:GetService("UserInputService")

local function createGuiGens(parent)
local BGui = Instance.new("BillboardGui")
BGui.Parent = parent
BGui.AlwaysOnTop = true
BGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BGui.StudsOffset = Vector3.new(0, 3, 0)
BGui.Size = UDim2.new(5, 0, 1.5, 0)

local text = Instance.new("TextLabel")
text.Parent = BGui
text.TextScaled = true
text.BackgroundTransparency = 1
text.Size = UDim2.new(1, 0, 1, 0)
text.TextColor3 = Color3.fromRGB(0, 255, 0)
text.Text = "Generator"

if parent:FindFirstChild("On") then

if parent.On.Value == true then
text.Text = "Generator (Activated)"
text.TextColor3 = Color3.fromRGB(255, 150, 0)
end
end
end

InS.InputBegan:Connect(function(input, GPE)
if input.KeyCode == Enum.KeyCode.X then

local model = game.Workspace.MAP.GENS
for _, v in pairs(model:GetChildren()) do
createGuiGens(v)

if v:FindFirstChild("On") then
local isOn = v.On

isOn.Changed:Connect(function()
v.BillboardGui.TextLabel.Text = "Generator (Activated)"
v.BillboardGui.TextLabel.TextColor3 = Color3.fromRGB(255, 150, 0)
end)
else

end
end

end
end)
end
coroutine.wrap(WBNHNPG_fake_script)()
local function DXQRVQV_fake_script() -- Slender.SlenderScript
local script = Instance.new('LocalScript', Slender)

local InS = game:GetService("UserInputService")

local function createGuiSlender(parent)
local BGui = Instance.new("BillboardGui")
BGui.Parent = parent
BGui.AlwaysOnTop = true
BGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BGui.StudsOffset = Vector3.new(0, 3, 0)
BGui.Size = UDim2.new(5, 0, 1.5, 0)

local text = Instance.new("TextLabel")
text.Parent = BGui
text.Text = "SLENDER"
text.TextScaled = true
text.BackgroundTransparency = 1
text.Size = UDim2.new(1, 0, 1, 0)
text.TextColor3 = Color3.fromRGB(255, 255, 255)
end


InS.InputBegan:Connect(function(input, GPE)
if input.KeyCode == Enum.KeyCode.C then

for _, v in pairs(game.Workspace:GetChildren()) do
if v:FindFirstChild("SlenderProp") then
createGuiSlender(v)
end
end
end

end)
end
coroutine.wrap(DXQRVQV_fake_script)()
local function LSGPTFK_fake_script() -- Frame.HideShow
local script = Instance.new('LocalScript', Frame)

local frame = script.Parent
local InS = game:GetService("UserInputService")

InS.InputBegan:Connect(function(input, GPE)
if input.KeyCode == Enum.KeyCode.LeftControl then
if frame.Visible == true then
frame.Visible = false
else
frame.Visible = true
end
end
end)
end
coroutine.wrap(LSGPTFK_fake_script)()