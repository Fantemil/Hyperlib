-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainGUI = Instance.new("Frame")
local AutoFarmRock = Instance.new("TextButton")
local AutoPickupItem = Instance.new("TextButton")
local ItemName = Instance.new("TextBox")
local RockName = Instance.new("TextBox")
local AutoSpamTool = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainGUI.Name = "MainGUI"
MainGUI.Active = true
MainGUI.Parent = ScreenGui
MainGUI.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainGUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainGUI.Position = UDim2.new(0.110278368, 0, 0.250501037, 0)
MainGUI.Size = UDim2.new(0, 225, 0, 180)
MainGUI.Draggable = true

AutoFarmRock.Name = "AutoFarmRock"
AutoFarmRock.Parent = MainGUI
AutoFarmRock.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
AutoFarmRock.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoFarmRock.Position = UDim2.new(0, 10, 0, 10)
AutoFarmRock.Size = UDim2.new(0, 100, 0, 50)
AutoFarmRock.Font = Enum.Font.Cartoon
AutoFarmRock.Text = "Auto farm rock"
AutoFarmRock.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFarmRock.TextSize = 14.000
AutoFarmRock.TextSize = 14.000
local toggled = false

AutoFarmRock.MouseButton1Click:Connect(function()
 toggled = not toggled
 while wait(0.001) and toggled == true do
  local args = {
   [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name),
   [2] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  }

  game:GetService("ReplicatedStorage").Events.DestroyModel:FireServer(unpack(args))
  do
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ores[RockName.Text].Reference.CFrame

  end
 end
end)

AutoPickupItem.Name = "AutoPickupItem"
AutoPickupItem.Parent = MainGUI
AutoPickupItem.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
AutoPickupItem.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoPickupItem.Position = UDim2.new(0, 115, 0, 10)
AutoPickupItem.Size = UDim2.new(0, 100, 0, 50)
AutoPickupItem.Font = Enum.Font.Cartoon
AutoPickupItem.Text = "Pickup item"
AutoPickupItem.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoPickupItem.TextSize = 14.000
AutoPickupItem.MouseButton1Click:connect(function()
 for i=1,2 do
  wait(0.1)
  for _,v in next, game.Workspace:GetDescendants() do
   if v.Name == (ItemName.Text) then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")[ItemName.Text].CFrame
    do
     i=1,3 do
      local args = {
       [1] = v
      }

      game:GetService("ReplicatedStorage").Events:FindFirstChild("Pick up"):FireServer(unpack(args))

     end
    end
   end
  end
 end
end)

ItemName.Name = "ItemName"
ItemName.Parent = MainGUI
ItemName.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
ItemName.BorderColor3 = Color3.fromRGB(0, 0, 0)
ItemName.Position = UDim2.new(0.51111114, 0, 0.356666654, 0)
ItemName.Size = UDim2.new(0, 100, 0, 50)
ItemName.Font = Enum.Font.Cartoon
ItemName.Text = ""
ItemName.TextColor3 = Color3.fromRGB(255, 255, 255)
ItemName.TextSize = 14.000

RockName.Name = "RockName"
RockName.Parent = MainGUI
RockName.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
RockName.BorderColor3 = Color3.fromRGB(0, 0, 0)
RockName.Position = UDim2.new(0.0430000015, 0, 0.354444444, 1)
RockName.Size = UDim2.new(0, 100, 0, 50)
RockName.Font = Enum.Font.Cartoon
RockName.Text = ""
RockName.TextColor3 = Color3.fromRGB(255, 255, 255)
RockName.TextSize = 14.000

AutoSpamTool.Name = "AutoSpamTool"
AutoSpamTool.Parent = MainGUI
AutoSpamTool.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
AutoSpamTool.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoSpamTool.Position = UDim2.new(0, 62, 0, 124)
AutoSpamTool.Size = UDim2.new(0, 100, 0, 50)
AutoSpamTool.Font = Enum.Font.Cartoon
AutoSpamTool.Text = "Spam tool"
AutoSpamTool.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoSpamTool.TextSize = 14.000
local toggled = false

AutoSpamTool.MouseButton1Click:Connect(function()
 toggled = not toggled
 while wait(0.1) and toggled == true do
  local args = {
   [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name),
   [2] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  }

  game:GetService("ReplicatedStorage").Events.DestroyModel:FireServer(unpack(args))
 end
end)