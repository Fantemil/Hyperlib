
local a = Instance.new("ScreenGui")
local b = Instance.new("Frame")
local c = Instance.new("UICorner")
local d = Instance.new("TextButton")
local e = Instance.new("TextButton")

a.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
a.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

b.Parent = a
b.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
b.Size = UDim2.new(0, 288, 0, 200)
b.Position = UDim2.new(0.25, -144, 0.5, -100)
b.Active = true
b.Draggable = true

c.CornerRadius = UDim.new(0, 12)
c.Parent = b

local function f(g, h, i, j)
    local k = Instance.new("TextButton")
    k.Parent = g
    k.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
    k.Position = i
    k.Size = UDim2.new(0, 200, 0, 50)
    k.Font = Enum.Font.SourceSans
    k.Text = h
    k.TextColor3 = Color3.fromRGB(255, 0, 0)
    k.TextSize = 20.0
    k.MouseButton1Click:Connect(j)
end

f(b, "Prison Life", UDim2.new(0.5, -100, 0, 10), function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua'))()
end)

f(b, "Prison Life 2", UDim2.new(0.5, -100, 0, 70), function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/Prison-Life-Tiger-admin-v3-13501"))()
end)

f(b, "Prison Life 3", UDim2.new(0.5, -100, 0, 130), function()
    loadstring(game:HttpGet("https://pastebin.com/raw/sgP7zUzC", true))()
end)

d.Parent = b
d.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
d.Position = UDim2.new(1, -30, 0, 0)
d.Size = UDim2.new(0, 30, 0, 30)
d.Font = Enum.Font.SourceSans
d.Text = "-"
d.TextColor3 = Color3.fromRGB(255, 255, 255)
d.TextSize = 24.0

d.MouseButton1Click:Connect(function()
    b.Visible = false
    e.Visible = true
end)

e.Parent = a
e.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
e.Position = UDim2.new(0.25, -15, 0.5, -15)
e.Size = UDim2.new(0, 30, 0, 30)
e.Font = Enum.Font.SourceSans
e.Text = "+"
e.TextColor3 = Color3.fromRGB(255, 255, 255)
e.TextSize = 24.0
e.Visible = false
e.Active = true
e.Draggable = true

e.MouseButton1Click:Connect(function()
    b.Visible = true
    e.Visible = false
end)

local l = Instance.new("Frame")
local m = Instance.new("UICorner")
local n = Instance.new("TextButton")
local o = Instance.new("TextButton")

l.Parent = a
l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
l.Size = UDim2.new(0, 200, 0, 150)
l.Position = UDim2.new(0.75, -100, 0.5, -75)
l.Active = true
l.Draggable = true

m.CornerRadius = UDim.new(0, 12)
m.Parent = l

f(l, "Flee The Facility beta", UDim2.new(0.5, -100, 0.5, -25), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
end)

n.Parent = l
n.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
n.Position = UDim2.new(1, -30, 0, 0)
n.Size = UDim2.new(0, 30, 0, 30)
n.Font = Enum.Font.SourceSans
n.Text = "-"
n.TextColor3 = Color3.fromRGB(255, 255, 255)
n.TextSize = 24.0

n.MouseButton1Click:Connect(function()
    l.Visible = false
    o.Visible = true
end)

o.Parent = a
o.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
o.Position = UDim2.new(0.75, -15, 0.5, -15)
o.Size = UDim2.new(0, 30, 0, 30)
o.Font = Enum.Font.SourceSans
o.Text = "+"
o.TextColor3 = Color3.fromRGB(255, 255, 255)
o.TextSize = 24.0
o.Visible = false
o.Active = true
o.Draggable = true

o.MouseButton1Click:Connect(function()
    l.Visible = true
    o.Visible = false
end)