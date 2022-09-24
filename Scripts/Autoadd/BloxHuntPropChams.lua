for _,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Character:FindFirstChild("Object") then
local Highlight = Instance.new("Highlight", v.Character.Object)
Highlight.FillColor = Color3.fromRGB(255, 255, 0)
end

v.Character.ChildAdded:Connect(function(child)
if child.Name == "Object" then
local Highlight = Instance.new("Highlight", v.Character.Object)
Highlight.FillColor = Color3.fromRGB(255, 255, 0)
end
end)
end

game:GetService("Players").PlayerAdded:Connect(function(player)
if player.Character:FindFirstChild("Object") then
local Highlight = Instance.new("Highlight", player.Character.Object)
Highlight.FillColor = Color3.fromRGB(255, 255, 0)
end

player.Character.ChildAdded:Connect(function(child)
if child.Name == "Object" then
local Highlight = Instance.new("Highlight", player.Characterv.Object)
Highlight.FillColor = Color3.fromRGB(255, 255, 0)
end
end)
end)