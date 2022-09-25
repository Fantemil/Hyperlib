a=game.Players:FindFirstChild("OddPotion",true)
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local backpack = localPlayer:WaitForChild("Backpack")
 
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Parent = backpack
tool.Name = "Invisible Object"
tool.Equipped:Connect(function(mouse)
mouse.Button1Down:Connect(function()
if mouse.Target and mouse.Target.Parent then
a.TransEvent:FireServer(mouse.Target,1)
end
end)
end)
a=game.Players:FindFirstChild("OddPotion",true)
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local backpack = localPlayer:WaitForChild("Backpack")
 
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Parent = backpack
tool.Name = "Visible Object"
tool.Equipped:Connect(function(mouse)
mouse.Button1Down:Connect(function()
if mouse.Target and mouse.Target.Parent then
a.TransEvent:FireServer(mouse.Target,0)
end
end)
end)