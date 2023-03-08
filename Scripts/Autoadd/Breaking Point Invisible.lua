-- Gui to Lua
-- Version: 3.2

-- Instances:

local main = Instance.new("ScreenGui")
local back = Instance.new("Frame")
local invis = Instance.new("TextButton")
local vis = Instance.new("TextButton")
local ghost = Instance.new("TextButton")
local plr = Instance.new("TextBox")

--Properties:

main.Name = "main"
main.Parent = game.CoreGui
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

back.Name = "back"
back.Parent = main
back.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
back.Position = UDim2.new(0.621887267, 0, 0.591549277, 0)
back.Size = UDim2.new(0, 437, 0, 98)
back.Active = true
back.Draggable = true

invis.Name = "invis"
invis.Parent = back
invis.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
invis.Position = UDim2.new(0.0246807504, 0, 0.602040768, 0)
invis.Size = UDim2.new(0, 128, 0, 33)
invis.Font = Enum.Font.SourceSans
invis.Text = "Invisible"
invis.TextColor3 = Color3.fromRGB(247, 247, 247)
invis.TextSize = 20.000
invis.MouseButton1Click:connect(function()
 local victim = plr.Text
 local invis = 1

 local humanoid = game.Players[victim].Character
 local inv = game.Players:FindFirstChild("OddPotion",true)

 for i,v in pairs(humanoid:GetDescendants()) do
  inv.TransEvent:FireServer(v,invis)
  inv.TransEvent:FireServer(v:FindFirstChild("HumanoidRootPart"),1)
 end
 inv.TransEvent:FireServer(humanoid.HumanoidRootPart,1)
end)

vis.Name = "vis"
vis.Parent = back
vis.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
vis.Position = UDim2.new(0.683683276, 0, 0.602040768, 0)
vis.Size = UDim2.new(0, 128, 0, 33)
vis.Font = Enum.Font.SourceSans
vis.Text = "Visible"
vis.TextColor3 = Color3.fromRGB(247, 247, 247)
vis.TextSize = 20.000
vis.MouseButton1Click:connect(function()
 local victim = plr.Text
 local invis = 0

 local humanoid = game.Players[victim].Character
 local inv = game.Players:FindFirstChild("OddPotion",true)

 for i,v in pairs(humanoid:GetDescendants()) do
  inv.TransEvent:FireServer(v,invis)
  inv.TransEvent:FireServer(v:FindFirstChild("HumanoidRootPart"),1)
 end
 inv.TransEvent:FireServer(humanoid.HumanoidRootPart,1)
end)

ghost.Name = "ghost"
ghost.Parent = back
ghost.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
ghost.Position = UDim2.new(0.347427189, 0, 0.602040827, 0)
ghost.Size = UDim2.new(0, 135, 0, 33)
ghost.Font = Enum.Font.SourceSans
ghost.Text = "Ghost"
ghost.TextColor3 = Color3.fromRGB(247, 247, 247)
ghost.TextSize = 20.000
ghost.MouseButton1Click:connect(function()
 local victim = plr.Text
 local invis = 0.7

 local humanoid = game.Players[victim].Character
 local inv = game.Players:FindFirstChild("OddPotion",true)

 for i,v in pairs(humanoid:GetDescendants()) do
  inv.TransEvent:FireServer(v,invis)
  inv.TransEvent:FireServer(v:FindFirstChild("HumanoidRootPart"),1)
 end
 inv.TransEvent:FireServer(humanoid.HumanoidRootPart,1)
end)

plr.Name = "plr"
plr.Parent = back
plr.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
plr.Position = UDim2.new(0.024680689, 0, 0.0918367356, 0)
plr.Size = UDim2.new(0, 414, 0, 41)
plr.Font = Enum.Font.SourceSans
plr.Text = "Target..."
plr.TextColor3 = Color3.fromRGB(225, 225, 225)
plr.TextSize = 24.000