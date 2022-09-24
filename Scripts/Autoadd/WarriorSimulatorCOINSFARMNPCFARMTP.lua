-- Instances:

local sautosfvarm = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local options = Instance.new("ScrollingFrame")
local grassland = Instance.new("TextButton")
local egypt = Instance.new("TextButton")
local future = Instance.new("TextButton")
local moon = Instance.new("TextButton")
local overseer = Instance.new("TextButton")
local lavaland = Instance.new("TextButton")
local desert = Instance.new("TextButton")
local iceland = Instance.new("TextButton")
local mars = Instance.new("TextButton")
local toggle = Instance.new("TextButton")
local exit = Instance.new("TextButton")
local coins = Instance.new("TextButton")

--Properties:

sautosfvarm.Name = "sautosfvarm"
sautosfvarm.Parent = game.CoreGui
sautosfvarm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = sautosfvarm
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.Position = UDim2.new(0.0611183383, 0, 0.373848975, 0)
main.Size = UDim2.new(0, 225, 0, 288)

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Position = UDim2.new(0.0533333346, 0, 0.027777778, 0)
TextLabel.Size = UDim2.new(0, 152, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "my firsrt sautosfvarm"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

options.Name = "options"
options.Parent = main
options.Active = true
options.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
options.Position = UDim2.new(0.0444444455, 0, 0.149305552, 0)
options.Size = UDim2.new(0, 202, 0, 151)

grassland.Name = "grassland"
grassland.Parent = options
grassland.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
grassland.Position = UDim2.new(0.0594059415, 0, 0.0206135698, 0)
grassland.Size = UDim2.new(0, 163, 0, 24)
grassland.Font = Enum.Font.SourceSans
grassland.Text = "grassland"
grassland.TextColor3 = Color3.fromRGB(0, 0, 0)
grassland.TextSize = 14.000

egypt.Name = "egypt"
egypt.Parent = options
egypt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
egypt.Position = UDim2.new(0.0594059415, 0, 0.0779052451, 0)
egypt.Size = UDim2.new(0, 163, 0, 24)
egypt.Font = Enum.Font.SourceSans
egypt.Text = "egypt"
egypt.TextColor3 = Color3.fromRGB(0, 0, 0)
egypt.TextSize = 14.000

future.Name = "future"
future.Parent = options
future.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
future.Position = UDim2.new(0.0594059415, 0, 0.135196909, 0)
future.Size = UDim2.new(0, 163, 0, 24)
future.Font = Enum.Font.SourceSans
future.Text = "future"
future.TextColor3 = Color3.fromRGB(0, 0, 0)
future.TextSize = 14.000

moon.Name = "moon"
moon.Parent = options
moon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
moon.Position = UDim2.new(0.0594059415, 0, 0.199433029, 0)
moon.Size = UDim2.new(0, 163, 0, 24)
moon.Font = Enum.Font.SourceSans
moon.Text = "moon"
moon.TextColor3 = Color3.fromRGB(0, 0, 0)
moon.TextSize = 14.000

overseer.Name = "overseer"
overseer.Parent = options
overseer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
overseer.Position = UDim2.new(0.0594059415, 0, 0.263669133, 0)
overseer.Size = UDim2.new(0, 163, 0, 24)
overseer.Font = Enum.Font.SourceSans
overseer.Text = "overseer"
overseer.TextColor3 = Color3.fromRGB(0, 0, 0)
overseer.TextSize = 14.000

lavaland.Name = "lavaland"
lavaland.Parent = options
lavaland.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lavaland.Position = UDim2.new(0.0594059415, 0, 0.331377476, 0)
lavaland.Size = UDim2.new(0, 163, 0, 24)
lavaland.Font = Enum.Font.SourceSans
lavaland.Text = "lavaland"
lavaland.TextColor3 = Color3.fromRGB(0, 0, 0)
lavaland.TextSize = 14.000

desert.Name = "desert"
desert.Parent = options
desert.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
desert.Position = UDim2.new(0.0594059415, 0, 0.397349715, 0)
desert.Size = UDim2.new(0, 163, 0, 24)
desert.Font = Enum.Font.SourceSans
desert.Text = "desert"
desert.TextColor3 = Color3.fromRGB(0, 0, 0)
desert.TextSize = 14.000

iceland.Name = "iceland"
iceland.Parent = options
iceland.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
iceland.Position = UDim2.new(0.0594059415, 0, 0.46158582, 0)
iceland.Size = UDim2.new(0, 163, 0, 24)
iceland.Font = Enum.Font.SourceSans
iceland.Text = "iceland"
iceland.TextColor3 = Color3.fromRGB(0, 0, 0)
iceland.TextSize = 14.000

mars.Name = "mars"
mars.Parent = options
mars.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mars.Position = UDim2.new(0.0594059415, 0, 0.52408582, 0)
mars.Size = UDim2.new(0, 163, 0, 24)
mars.Font = Enum.Font.SourceSans
mars.Text = "mars"
mars.TextColor3 = Color3.fromRGB(0, 0, 0)
mars.TextSize = 14.000

toggle.Name = "toggle"
toggle.Parent = main
toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggle.Position = UDim2.new(0.0444444455, 0, 0.839838326, 0)
toggle.Size = UDim2.new(0, 202, 0, 30)
toggle.Font = Enum.Font.SourceSans
toggle.Text = "toggle sautosfvarm"
toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
toggle.TextSize = 14.000

exit.Name = "exit"
exit.Parent = main
exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exit.Position = UDim2.new(0.822222233, 0, 0.027777778, 0)
exit.Size = UDim2.new(0, 27, 0, 28)
exit.Font = Enum.Font.SourceSans
exit.Text = "X"
exit.TextColor3 = Color3.fromRGB(0, 0, 0)
exit.TextScaled = true
exit.TextSize = 14.000
exit.TextWrapped = true

coins.Name = "coins"
coins.Parent = main
coins.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
coins.Position = UDim2.new(0.0444444455, 0, 0.704421639, 0)
coins.Size = UDim2.new(0, 202, 0, 30)
coins.Font = Enum.Font.SourceSans
coins.Text = "farm coins"
coins.TextColor3 = Color3.fromRGB(0, 0, 0)
coins.TextSize = 14.000

local lplr = game.Players.LocalPlayer
local plr = lplr.Name


local Toggle = false
local farmOption = nil
local enemieTarget = nil
local farmZone = nil
local attacking = false

grassland.MouseButton1Click:Connect(function()
 farmOption = "Grassland"
end)

egypt.MouseButton1Click:Connect(function()
 farmOption = "Egypt"
end)

future.MouseButton1Click:Connect(function()
 farmOption = "Future"
end)

moon.MouseButton1Click:Connect(function()
 farmOption = "Moon"
end)

overseer.MouseButton1Click:Connect(function()
 farmOption = "Overseer"
end)

lavaland.MouseButton1Click:Connect(function()
 farmOption = "Lavaland"
end)

desert.MouseButton1Click:Connect(function()
 farmOption = "Desert"
end)

iceland.MouseButton1Click:Connect(function()
 farmOption = "Iceland"
end)

mars.MouseButton1Click:Connect(function()
 farmOption = "Mars"
end)

toggle.MouseButton1Click:Connect(function()
 Toggle = not Toggle
end)

coins.MouseButton1Click:Connect(function()
 farmZone = game.Workspace.newMap.Zones[farmOption]

 for i,v in pairs(farmZone.CoinStorage:GetChildren()) do
  lplr.Character.HumanoidRootPart.CFrame = v.Detector.CFrame
  wait(.8)
 end
end)

exit.MouseButton1Click:Connect(function()
 sautosfvarm:Destroy()
end)    


local function checkHealth(npc)
 if npc.Humanoid.Health == 0 then
  attacking = false
 end  
end   


if game.Workspace[plr]:FindFirstChild("Basic Sword") then
 enemieTarget = "Warrior"
 farmOption = "Grassland"
end

--[[

if lplr.Data.Backpack.Value == lplr.Data.Capacity.Value then
 lplr.Character.HumanoidRootPart.CFrame = CFrame.new(-73.8923492, 4.82500696, 138.237549, -0.38339889, -1.59785678e-08, -0.923582852, 4.37895444e-08, 1, -3.54786067e-08, 0.923582852, -5.40457314e-08, -0.38339889)
end
  
]]

while wait() do
 if Toggle == true then
  if attacking then
   return -- already attacking a npc
  else
   if farmOption ~= nil then
    farmZone = game.Workspace.newMap.Zones[farmOption]

    for i,v in pairs(farmZone.Enemies:GetChildren()) do
     if enemieTarget ~= nil then
      if v.Name == enemieTarget then
       attacking = true
       lplr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
       mouse1click(MOUSE_CLICK)
       repeat wait() checkHealth(v) until attacking == false
      end   
     else
      attacking = true
      lplr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
      mouse1click(MOUSE_CLICK)
      repeat wait() checkHealth(v) mouse1click(MOUSE_CLICK) until attacking == false
     end    
    end    
   end
  end
  
  if attacking == false then
   if lplr.Data.Backpack.Value == lplr.Data.Capacity.Value then
    lplr.Character.HumanoidRootPart.CFrame = CFrame.new(-73.8923492, 4.82500696, 138.237549, -0.38339889, -1.59785678e-08, -0.923582852, 4.37895444e-08, 1, -3.54786067e-08, 0.923582852, -5.40457314e-08, -0.38339889)
   end
  end
 else
     
 end
 
 
end