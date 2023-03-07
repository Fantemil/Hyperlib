local GetSnow = function(i)
 return tonumber(string.split(game:GetService("Players").LocalPlayer["PlayerGui"].ScreenGui.Hud.Stats.Snow.Progress.AmountLabel.Text,"/")[i])
end
local GetRandomSnow = function()
 return workspace.Regions.Winterville.Tiles:GetChildren()[math.random(1,#workspace.Regions.Winterville.Tiles:GetChildren())]
end
while true do
 wait()
 repeat task.wait()
  local Snow = GetRandomSnow()
  repeat task.wait() Snow = GetRandomSnow() until Snow.Color == Color3.fromRGB(255, 255, 255)
  game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = Snow.CFrame*CFrame.new(0,7,0)
  local Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
  if not Tool then
   local Got = game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
   if Got and Got:FindFirstChild("Handle") and Got:FindFirstChildOfClass("LocalScript") then
    Tool = Got
   end
  end
  Tool.Parent = game:GetService("Players").LocalPlayer.Character
  local ohString1 = "Shovel"
  local ohInstance2 = Tool
  local ohTable3 = {
   [1] = Snow
  }
  for i=1,35 do
   task.spawn(function()
    game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(ohString1, ohInstance2, ohTable3)
   end)
  end
  wait(.45)
 until GetSnow(1)==GetSnow(2)
 game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(521, 16, -69)
 wait(.7)
 local ohString1 = "SellSnow"
 local ohString2 = "Frosty"
 wait(.1)
 game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(ohString1, ohString2)
 task.spawn(function()
  wait(.7)
  game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(ohString1, ohString2)
 end)
 repeat task.wait() game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(521, 16, -69) until GetSnow(1) ==0
end