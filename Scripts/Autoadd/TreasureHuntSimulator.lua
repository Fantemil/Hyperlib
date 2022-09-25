local TresureBreakSimulator = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Line = Instance.new("Frame")
local ToolBoxBG = Instance.new("Frame")
local ToolBox = Instance.new("TextBox")
local AutoFarm = Instance.new("TextButton")
local AutoRebirth = Instance.new("TextButton")
local Top = Instance.new("TextLabel")
 
--Toggle
local Farm = false
local Rebirth = false
 
--ButtonToggle
local Click1 = false
local Click2 = false
 
TresureBreakSimulator.Name = "TresureBreakSimulator"
TresureBreakSimulator.Parent = game.CoreGui
TresureBreakSimulator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BG.Name = "BG"
BG.Parent = TresureBreakSimulator
BG.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
BG.BackgroundTransparency = 0.20000000298023
BG.BorderColor3 = Color3.new(0, 0, 0)
BG.BorderSizePixel = 5
BG.Position = UDim2.new(0.604587197, 0, 0.30796814, 0)
BG.Size = UDim2.new(0, 250, 0, 150)
BG.Active = true
BG.Selectable = true
BG.Draggable = true
Line.Name = "Line"
Line.Parent = BG
Line.BackgroundColor3 = Color3.new(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0, 72)
Line.Size = UDim2.new(0, 250, 0, 5)
ToolBoxBG.Name = "ToolBoxBG"
ToolBoxBG.Parent = BG
ToolBoxBG.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
ToolBoxBG.BackgroundTransparency = 0.20000000298023
ToolBoxBG.BorderColor3 = Color3.new(0, 0, 0)
ToolBoxBG.BorderSizePixel = 5
ToolBoxBG.Position = UDim2.new(0, 25, 1, 5)
ToolBoxBG.Size = UDim2.new(0, 200, 0, 50)
ToolBox.Name = "ToolBox"
ToolBox.Parent = ToolBoxBG
ToolBox.BackgroundColor3 = Color3.new(0.490196, 0.490196, 0.490196)
ToolBox.BorderColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
ToolBox.BorderSizePixel = 0
ToolBox.Size = UDim2.new(0, 200, 0, 50)
ToolBox.Font = Enum.Font.GothamBold
ToolBox.PlaceholderColor3 = Color3.new(0, 0, 0)
ToolBox.PlaceholderText = "Tool Name"
ToolBox.Text = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Name
ToolBox.TextColor3 = Color3.new(0, 0, 0)
ToolBox.TextSize = 35
ToolBox.TextWrapped = true
AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = BG
AutoFarm.BackgroundColor3 = Color3.new(0.882353, 0.882353, 0.882353)
AutoFarm.BorderColor3 = Color3.new(1, 0, 0)
AutoFarm.BorderSizePixel = 5
AutoFarm.Position = UDim2.new(0, 25, 0, 5)
AutoFarm.Size = UDim2.new(0, 200, 0, 62)
AutoFarm.Font = Enum.Font.GothamBold
AutoFarm.Text = "Auto Farm"
AutoFarm.TextColor3 = Color3.new(1, 0, 0)
AutoFarm.TextScaled = true
AutoFarm.TextSize = 14
AutoFarm.TextWrapped = true
AutoFarm.MouseButton1Click:Connect(function()
 if Click1 then
  Click1 = false
  Farm = false
  AutoFarm.TextColor3 = Color3.new(1,0,0)
  AutoFarm.BorderColor3 = Color3.new(1,0,0)
 else
        if game.Players.LocalPlayer.Character:FindFirstChild(ToolBox.Text) then
   print('Already EquipTool')
  else
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[ToolBox.Text])
        end
  Click1 = true
  Farm = true
  AutoFarm.TextColor3 = Color3.new(0,1,0)
  AutoFarm.BorderColor3 = Color3.new(0,1,0)
 end
end)
AutoRebirth.Name = "AutoRebirth"
AutoRebirth.Parent = BG
AutoRebirth.BackgroundColor3 = Color3.new(0.882353, 0.882353, 0.882353)
AutoRebirth.BorderColor3 = Color3.new(1, 0, 0)
AutoRebirth.BorderSizePixel = 5
AutoRebirth.Position = UDim2.new(0, 25, 0, 82)
AutoRebirth.Size = UDim2.new(0, 200, 0, 62)
AutoRebirth.Font = Enum.Font.GothamBold
AutoRebirth.Text = "Auto Rebirth"
AutoRebirth.TextColor3 = Color3.new(1, 0, 0)
AutoRebirth.TextScaled = true
AutoRebirth.TextSize = 14
AutoRebirth.TextWrapped = true
AutoRebirth.MouseButton1Click:Connect(function()
 if Click1 then
  Click1 = false
  Rebirth = false
  AutoRebirth.TextColor3 = Color3.new(1,0,0)
  AutoRebirth.BorderColor3 = Color3.new(1,0,0)
 else
  Click1 = true
  Rebirth = true
  AutoRebirth.TextColor3 = Color3.new(0,1,0)
  AutoRebirth.BorderColor3 = Color3.new(0,1,0)
 end
end)
Top.Name = "Top"
Top.Parent = BG
Top.Active = true
Top.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
Top.BorderColor3 = Color3.new(0, 0, 0)
Top.BorderSizePixel = 5
Top.Position = UDim2.new(0, 25, 0, -30)
Top.Selectable = true
Top.Size = UDim2.new(0, 200, 0, 25)
Top.Font = Enum.Font.GothamBold
Top.Text = "Treasure Break Simulator"
Top.TextColor3 = Color3.new(0, 0, 0)
Top.TextScaled = true
Top.TextSize = 14
Top.TextWrapped = true
 
local Character = game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
 
function Sell()
 local OldPos = Character.HumanoidRootPart.CFrame
 Character.HumanoidRootPart.CFrame = CFrame.new(3, 10, -160)
 game.ReplicatedStorage.Events.AreaSell:FireServer()
 wait(0.1)
 Character.HumanoidRootPart.CFrame = OldPos
end
 
local function RE()
 while true do
  wait(1)
  if Rebirth == true then
   local a = game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text:gsub(',','')
   local b = game.Players.LocalPlayer.PlayerGui.Gui.Rebirth.Needed.Coins.Amount.Text:gsub(',','')
   print(tonumber(a))
   print(tonumber(b))
   if tonumber(a) > tonumber(b) then 
    warn('Calculation Complete!')
    game.ReplicatedStorage.Events.Rebirth:FireServer()
    ToolBox.Text = "Bucket"
    repeat wait(.1) until game.Players.LocalPlayer.PlayerGui.Gui.Popups.GiveReward.Visible == true
    game.Players.LocalPlayer.PlayerGui.Gui.Popups.GiveReward.Visible = false
    wait()
   end
  end
 end
end
 
spawn(RE)
 
while true do
 wait()
 if Farm then
  local Sand = nil
  local SandName = ""
  for i,v in pairs (game.Workspace.SandBlocks:GetChildren()) do
   if not Farm then 
    Sell()
    break 
   end
   if v:FindFirstChild("Chest") then
    if v.CFrame.X > -40 and v.CFrame.X < 20 and v.CFrame.Z < -175 and v.CFrame.Z > -235 then
     local Next = false
     if v == nil then
      Next = false
     else
      Next = true
      Sand = v
      SandName = v.Name
     end
     if Next == true then
      local Success,Problem = pcall(function()
      if game.Players[game.Players.LocalPlayer.Name].PlayerGui.Gui.Popups.BackpackFull.Visible == true then Sell() end
       Sand.CanCollide = false
       local Coins = game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text
       repeat
        if game.Players[game.Players.LocalPlayer.Name].PlayerGui.Gui.Popups.BackpackFull.Visible == true then Sell() end
        if not Farm then 
         wait(.1)
         Character.HumanoidRootPart.CFrame = CFrame.new(3, 10, -160)
         wait(1)
         break 
        end
        Character.HumanoidRootPart.Anchored = true
        wait()
        Character.HumanoidRootPart.CFrame = Sand.CFrame
        wait()
        Character.HumanoidRootPart.Anchored = false
        Character:WaitForChild(ToolBox.Text)['RemoteClick']:FireServer(game.Workspace.SandBlocks[SandName])
        wait()
       until game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text ~= Coins
       Next = false
      end)
      if Success then
       print('Worked')
      else
       warn(Problem)
      end
     end
    end
   end
  end
 end
end