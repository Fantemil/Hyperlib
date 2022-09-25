 local RefreshTime = 5 --How many seconds to refresh esp!
local IgnoreOreList = {
  --Here you can change what ores will not be esped! (if the value is true it will ignore this ore)
  ["Clay"] = true,
  ["Coal"] = false,
  ["Ametyst"] = false,
  ["Sapphire"] = false,
  ["Emerald"] = false,
  ["Ruby"] = false,
  ["Bones"] = false,
  ["Life Fruit"] = false,
  ["Crystal Heart"] = false,
  ["Vine Crystal"] = false,
  ["Plantmite"] = false,
  ["Silver"] = false,
  ["Magma Ore"] = false,
  ["Kyanite"] = false,
  ["Meteroid"] = false,
  ["Obsidian"] = false,
  ["Gold"] = false,
  ["Malachite"] = false,
  ["Uranium"] = false,
  ["Atomanium"] = false,
  ["Mythril Ore"] = false,
  ["Palladium"] = false,
  ["Azurite"] = false,
  ["Adamantite"] = false,
  ["Magma Crystal"] = false,
  ["Carnelian"] = false,
  ["Stone"] = false,
  ["Tungsten"] = false,
  ["Iron Ore"] = false,
  ["Chlorophyte"] = false,
  ["Platinum"] = false,
  ["Cloaxium"] = false,
  ["Copper"] = false,
  ["Quartz"] = false,
  ["Nephrite"] = false,
  ["Mesolite"] = false,
  ["Orpiment"] = false,
  ["Halographic Ore"] = false,
  ["Meteroid"] = false,
  ["Moonrite"] = false,
  ["Moonrite Ore"] = false,
  ["Metal Core"] = false,
  ["Moon Crystal"] = false,
  ["Aluminium"] = false,
  ["Hardened Meteorite"] = false,
  ["Radioactive Obsidian"] = false,
  ["Coesite"] = false,
  ["Kernite"] = false,
  ["Luminite"] = false,
  ["Zinc"] = false,
  ["Diamonium"] = false,
}







while wait(RefreshTime) do
for i,v in pairs(game:GetService("Workspace").Mine.Ores:GetChildren()) do
pcall(function()
if not IgnoreOreList[v.Name] then
local pog = v:FindFirstChildOfClass("MeshPart")
if not pog:FindFirstChild("KSIUJKSLNMIKBVUKLSIAUIVBKA")then
  local BillboardGui = Instance.new("BillboardGui")
  local TextLabel = Instance.new("TextLabel")
  BillboardGui.Parent = v:FindFirstChildOfClass("MeshPart")
  BillboardGui.Name = "KSIUJKSLNMIKBVUKLSIAUIVBKA"
  BillboardGui.AlwaysOnTop = true
  BillboardGui.LightInfluence = 1
  BillboardGui.Size = UDim2.new(0, 50, 0, 50)
  BillboardGui.StudsOffset = Vector3.new(0, 0, 0)
  TextLabel.Parent = BillboardGui
  TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
  TextLabel.BackgroundTransparency = 1
  TextLabel.Size = UDim2.new(1, 0, 1, 0)
  TextLabel.Text = v.Name
  TextLabel.TextColor3 = v:FindFirstChildOfClass("MeshPart").Color
  TextLabel.TextScaled = true
end
end
end)
end
end