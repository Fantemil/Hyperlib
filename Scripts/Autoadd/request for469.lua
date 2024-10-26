-- esp eggs or capsules thing --
 
function ESP(part)
    local Gui = Instance.new("BillboardGui", part)
    Gui.Size = UDim2.new(1,0,1,0)
    Gui.AlwaysOnTop = true
    Gui.Name = "ESP"
    local Frame = Instance.new("Frame", Gui)
    Frame.BackgroundColor3 = Color3.fromRGB(255,80,60)
    Frame.BackgroundTransparency = 0.75
    Frame.Size = UDim2.new(1,0,1,0)
    Frame.BorderSizePixel = 0
    local name = Instance.new("BillboardGui", part)
    name.Size = UDim2.new(3,0,1.5,0)
    name.SizeOffset = Vector2.new(0,1)
    name.AlwaysOnTop = true
    name.Name = "Name"
    local text = Instance.new("TextLabel", name)
    text.Text = part:WaitForChild("Interaction").Action.Value
    text.TextColor3 = Color3.fromRGB(255,80,60)
    text.TextTransparency = 0.25
    text.BackgroundTransparency = 1
    text.TextScaled = true
    text.Size = UDim2.new(1,0,1,0)
    text.Font = Enum.Font.GothamSemibold
    text.Name = "TextName"
end
 
for _,v in pairs(workspace.Eggs.Eggs:GetChildren()) do
    if v:IsA("Model") ~= nil then
        ESP(v)
    end
end
 
 
workspace.Eggs.Eggs.ChildAdded:Connect(function(v)
    if v:IsA("Model") then
        ESP(v)
    end
end)
 
-- the end --