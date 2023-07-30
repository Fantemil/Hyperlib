local uis = game:GetService("UserInputService")

_G.Enabled = true

uis.InputBegan:Connect(function(input, gp)
if not gp then
if input.KeyCode == Enum.KeyCode.V then
if _G.Enabled == true then
_G.Enabled = false
elseif _G.Enabled == false then
_G.Enabled = true
end
end
end
end)

for i,v in pairs(game:GetService("ReplicatedStorage").Player:GetDescendants()) do
if v:IsA("MeshPart") or v:IsA("Part") then
local adornment = Instance.new("BoxHandleAdornment")
adornment.Adornee = v
adornment.AlwaysOnTop = true
adornment.ZIndex = 1
adornment.Size = v.Size
adornment.Color = BrickColor.new("Bright green")
adornment.Transparency = 0.3
adornment.Parent = v
end
end
for i,v in pairs(game.Workspace:GetChildren()) do
if  v:FindFirstChild("Head") then

for i,v in pairs(v:GetChildren()) do
if v:IsA("Part") then


local adornment = Instance.new("BoxHandleAdornment")
adornment.Adornee = v
adornment.AlwaysOnTop = true
adornment.ZIndex = 1
adornment.Size = v.Size
adornment.Color = BrickColor.new("Bright green")
adornment.Transparency = 0.3
adornment.Parent = v

end
end
for i,v in pairs(v:GetChildren()) do
if v:IsA("MeshPart") then

local adornment = Instance.new("BoxHandleAdornment")
adornment.Adornee = v
adornment.AlwaysOnTop = true
adornment.ZIndex = 1
adornment.Size = v.Size
adornment.Color = BrickColor.new("Bright green")
adornment.Transparency = 0.3
adornment.Parent = v
end
end
end
end

while wait() do
if _G.Enabled == true then

for i,v in pairs(game:GetService("ReplicatedStorage").Player:GetDescendants()) do
if v:IsA("MeshPart") or v:IsA("Part") then
if v:FindFirstChild("BoxHandleAdornment") then
v:FindFirstChild("BoxHandleAdornment").Transparency = 0.3
end
end
end

for i,v in pairs(game.Workspace:GetChildren()) do
if  v:FindFirstChild("Head") then

for i,v in pairs(v:GetChildren()) do
if v:IsA("Part") then
if v:FindFirstChild("BoxHandleAdornment") then
v:FindFirstChild("BoxHandleAdornment").Transparency = 0.3
end
end
end
end
for i,v in pairs(v:GetChildren()) do
if v:IsA("MeshPart") then

if v:FindFirstChild("BoxHandleAdornment") then
v:FindFirstChild("BoxHandleAdornment").Transparency = 0.3
end
end
end
end
end


if _G.Enabled == false then

for i,v in pairs(game:GetService("ReplicatedStorage").Player:GetDescendants()) do
if v:IsA("MeshPart") or v:IsA("Part") then
if v:FindFirstChild("BoxHandleAdornment") then
v:FindFirstChild("BoxHandleAdornment").Transparency = 1
end
end
end

for i,v in pairs(game.Workspace:GetChildren()) do
if  v:FindFirstChild("Head") then

for i,v in pairs(v:GetChildren()) do
if v:IsA("Part") then
if v:FindFirstChild("BoxHandleAdornment") then
v:FindFirstChild("BoxHandleAdornment").Transparency = 1
end
end
end
end
for i,v in pairs(v:GetChildren()) do
if v:IsA("MeshPart") then

if v:FindFirstChild("BoxHandleAdornment") then
v:FindFirstChild("BoxHandleAdornment").Transparency = 1
end
end
end
end
end
end