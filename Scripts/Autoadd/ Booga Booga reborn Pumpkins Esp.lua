for i,v in pairs(game:GetService("Workspace").pumpkins:GetDescendants()) do
local BillboardGui = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")

BillboardGui.Parent = v
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.Active = true
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1.000
BillboardGui.Size = UDim2.new(0, 15, 0, 50)

Frame.Parent = BillboardGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.200
Frame.Size = UDim2.new(0, 15, 0, 50)
end