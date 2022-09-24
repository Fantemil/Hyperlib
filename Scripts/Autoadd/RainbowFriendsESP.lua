local itemsOfInterest = Instance.new("Model", workspace)
itemsOfInterest.Name = "Items of Interest"

for i, v in pairs (workspace:GetChildren()) do
if v.Name == "Battery" or (v.Name:find("^Block") and v:IsA("Model")) or (v.Name:find("^Food") and v:IsA("Model")) or (v.Name:find("^Fuse") and v:IsA("Model")) then
v.Parent = itemsOfInterest
end
end

for i, v in pairs (workspace.Monsters:GetChildren()) do
local highlight = Instance.new("Highlight")
highlight.Parent = v
highlight.Adornee = v
highlight.FillColor = Color3.new(255, 0, 0)
highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
highlight.FillTransparency = 0.5
end

local highlight = Instance.new("Highlight")
highlight.Parent = itemsOfInterest
highlight.Adornee = itemsOfInterest
highlight.FillColor = Color3.new(0, 255, 0)
highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
highlight.FillTransparency = 0.5