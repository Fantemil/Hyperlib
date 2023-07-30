local Players = game:GetService("Players")
local playerName = "playernamehere" -- Replace this with the target player's name
local target = Players:FindFirstChild(playerName)

if target then
    local a = Instance.new("BillboardGui", target.Character.Head)
    a.Size = UDim2.new(1, 0, 0.3, 0) -- Change the size to 100% width and 30% height of the Head part
    a.Name = "A"
    a.AlwaysOnTop = true
    
    local b = Instance.new("Frame", a)
    b.Size = UDim2.new(1, 0, 1, 0)
    b.BackgroundTransparency = 0.4
    b.BorderSizePixel = 0
    b.BackgroundColor3 = Color3.new(1, 1, 1) -- Set the box color to white
    
    local c = Instance.new("TextLabel", b)
    c.Text = playerName
    c.Size = UDim2.new(1, 0, 1, 0)
    c.BackgroundTransparency = 1
    c.BorderSizePixel = 0
    c.TextColor3 = Color3.new(1, 0, 0) -- Set the name text color to red
end
