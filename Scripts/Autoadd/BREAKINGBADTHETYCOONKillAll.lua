--Made by 4DOA on v3rm
local BreakingBadTycoonPulverizer = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local credit = Instance.new("TextLabel")
local killall = Instance.new("TextButton")
local playerlist = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local kill = Instance.new("TextButton")

BreakingBadTycoonPulverizer.Name = "Breaking Bad Tycoon Pulverizer"
BreakingBadTycoonPulverizer.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
BreakingBadTycoonPulverizer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BreakingBadTycoonPulverizer.ResetOnSpawn = false

Frame.Parent = BreakingBadTycoonPulverizer
Frame.Active = true
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 266, 0, 303)

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(135, 151, 255)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 266, 0, 34)
title.Font = Enum.Font.Gotham
title.Text = "Breaking Bad Tycoon Pulverizer"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 17.000
title.TextStrokeColor3 = Color3.fromRGB(35, 35, 35)
title.TextStrokeTransparency = 0.000
title.TextWrapped = true

credit.Name = "credit"
credit.Parent = Frame
credit.BackgroundColor3 = Color3.fromRGB(255, 87, 58)
credit.BorderSizePixel = 0
credit.Position = UDim2.new(0, 0, 0.88683635, 0)
credit.Size = UDim2.new(0, 266, 0, 34)
credit.Font = Enum.Font.Gotham
credit.Text = "By 4DOA on V3RM"
credit.TextColor3 = Color3.fromRGB(255, 255, 255)
credit.TextSize = 20.000
credit.TextStrokeColor3 = Color3.fromRGB(35, 35, 35)
credit.TextStrokeTransparency = 0.000
credit.TextWrapped = true

killall.Name = "killall"
killall.Parent = Frame
killall.BackgroundColor3 = Color3.fromRGB(255, 87, 58)
killall.BorderSizePixel = 0
killall.Position = UDim2.new(0.124060154, 0, 0.165777206, 0)
killall.Size = UDim2.new(0, 200, 0, 29)
killall.Font = Enum.Font.Gotham
killall.Text = "Kill All"
killall.TextColor3 = Color3.fromRGB(255, 255, 255)
killall.TextSize = 20.000
killall.TextStrokeColor3 = Color3.fromRGB(35, 35, 35)
killall.TextStrokeTransparency = 0.000
killall.TextWrapped = true

playerlist.Name = "playerlist"
playerlist.Parent = Frame
playerlist.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
playerlist.BorderSizePixel = 0
playerlist.Position = UDim2.new(0.124060154, 0, 0.306930691, 0)
playerlist.Size = UDim2.new(0, 200, 0, 162)

UIListLayout.Parent = playerlist
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

kill.Name = "kill"
kill.Parent = UIListLayout
kill.BackgroundColor3 = Color3.fromRGB(135, 151, 255)
kill.BorderSizePixel = 0
kill.Size = UDim2.new(0, 200, 0, 20)
kill.Font = Enum.Font.Gotham
kill.Text = "Kill Player"
kill.TextColor3 = Color3.fromRGB(255, 255, 255)
kill.TextSize = 15.000
kill.TextStrokeColor3 = Color3.fromRGB(35, 35, 35)
kill.TextStrokeTransparency = 0.000
kill.TextWrapped = true

local function VLWVO_fake_script()
 local script = Instance.new('LocalScript', Frame)

 script.Parent.Draggable = true
 
 function kill(humanoid)
  local ohString1 = "Damage"
  local ohInstance2 = humanoid
  local ohNumber3 = 9999
  game:GetService("Players").LocalPlayer.Backpack.Revolver.Receiver:FireServer(ohString1, ohInstance2, ohNumber3)
 end
 
 function updateList()
  for i,v in pairs(script.Parent.playerlist:GetChildren()) do
   if v:IsA("TextButton") then
    v:Destroy()
   end
  end
  for i,v in pairs(game.Players:GetChildren()) do
   local newUI = script.Parent.playerlist.UIListLayout.kill:Clone()
   newUI.Name = v.Name
   newUI.Text = "Kill " .. v.Name
   newUI.Parent = script.Parent.playerlist
   newUI.MouseButton1Click:Connect(function()
    kill(game.Players[v.Name].Character.Humanoid)
   end)
  end
 end
 
 function updateLoop()
  while wait(5) do
   updateList()
  end
 end
 
 spawn(updateLoop)
 
 
 script.Parent.killall.MouseButton1Click:Connect(function()
  for i,v in pairs(game.Players:GetChildren()) do
   if v == game.Players.LocalPlayer then
   else
    kill(v.Character.Humanoid)
   end
  end
 end)
end
coroutine.wrap(VLWVO_fake_script)()