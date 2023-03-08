for _,v in pairs(game.Workspace:GetDescendants()) do
local rare = {"Astatine", "Morganite", "Moonstone", "Dumortierite", "Stormite", "Pure Crystal", "Grass", "Dirt"}
if v.Name == "MineableRock" and table.find(rare, v.RockString.Value) then
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")
BillboardGui.Parent = v.Part
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 50, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = "Rare here!!!"
TextLabel.TextColor3 = Color3.new(0, 5, 0)
TextLabel.TextScaled = true
end
end