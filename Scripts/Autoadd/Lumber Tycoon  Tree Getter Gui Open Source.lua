-- Gui to Lua
-- Version: 1

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
Frame.BorderSizePixel = 4
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 186, 0, 250)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 186, 0, 50)
TextLabel.Font = Enum.Font.Bangers
TextLabel.Text = "COOPER TRE GETTR"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextSize = 28.000

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.200000003, 0)
ScrollingFrame.Size = UDim2.new(0, 186, 0, 200)
ScrollingFrame.ScrollBarThickness = 2
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

UIPadding.Parent = ScrollingFrame
UIPadding.PaddingBottom = UDim.new(0, 8)

UIListLayout.Parent = ScrollingFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

-- cooper get trre
local cooper = game.Players.LocalPlayer
local treeregins = {}
local treclases = {}
local replicatedfarts = game.ReplicatedStorage
local axeclasses = replicatedfarts:WaitForChild("AxeClasses")

for _, cooper in next, workspace:GetChildren() do
 if cooper.Name == "TreeRegion" then
  table.insert(treeregins, cooper)
 end
end

for _, cooper in next, treeregins do
 for _, cooper in next, cooper:GetChildren() do
  if cooper:FindFirstChild("TreeClass") and not table.find(treclases, cooper.TreeClass.Value) then
   table.insert(treclases, cooper.TreeClass.Value)
  end
 end
end

function getAxStats(axName, treClas)
 local coopermodule = axeclasses:FindFirstChild("AxeClass_"..axName)
 if not coopermodule then return end
 local axStats = require(coopermodule).new()
 if axStats.SpecialTrees and axStats.SpecialTrees[treClas] then
  for mini, cooper in next, axStats.SpecialTrees[treClas] do
   axStats[mini] = cooper
  end
 end
 return axStats
end

function getModlMass(model)
 local total = 0
 local woodsextions = 0
 for _, v in next, model:GetDescendants() do
  if v:IsA("BasePart") and v.Name ~= "Leaves" then
   if v.Name == "WoodSection" then woodsextions = woodsextions + 1 end
   total = total + v.Mass
  end
 end
 return total, woodsextions
end

function getTrreOfClas(clas)
 local posibilitys = {}
 for _, cooper1 in next, treeregins do
  for _, cooper2 in next, cooper1:GetChildren() do
   if cooper2:IsA("Model") and cooper2:FindFirstChild("CutEvent") then
    local trreclas = cooper2:FindFirstChild("TreeClass")
    local onwer = cooper2:FindFirstChild("Owner")
    if onwer and trreclas and onwer.Value == nil and trreclas.Value == clas then
     local mas, secs = getModlMass(cooper2)
     if secs > 1 then
      table.insert(posibilitys, {
       tre = cooper2,
       mass = mas
      })
     end
    end
   end
  end
 end
 table.sort(posibilitys, function(cooper1, cooper2)
  return cooper1.mass > cooper2.mass
 end)
 return posibilitys[1] and posibilitys[1].tre or false, "No tree found."
end

function choppy(tre, ax)
 task.wait()
 cooper.Character.HumanoidRootPart.CFrame = CFrame.new(tre.WoodSection.Position + Vector3.new(5, 0, 0))
 task.wait(0.25)
 local axStats = getAxStats(ax.ToolName.Value, tre.TreeClass.Value)
 local propertys = {
  tool = ax,
  height = 0.3,
  faceVector = Vector3.new(1, 0, 0),
  sectionId = 1,
  hitPoints = axStats.Damage,
  cooldown = axStats.SwingCooldown,
  cuttingClass = "Axe"
 }

 local newtre, trecon = nil, nil
 trecon = workspace.LogModels.ChildAdded:Connect(function(tre)
  task.wait()
  if tre.Owner.Value == cooper then
   newtre = tre
   trecon:Disconnect()
   trecon = nil
  end
 end)
 repeat
  replicatedfarts.Interaction.RemoteProxy:FireServer(tre.CutEvent, propertys)
  task.wait(axStats.SwingCooldown)
 until newtre ~= nil
 return newtre
end

function hahafunnygod()
 local rootjoint = cooper.Character.HumanoidRootPart.RootJoint
 rootjoint:Clone().Parent = rootjoint.Parent
 rootjoint:Destroy()
 task.wait()
end

function bringy(treclas)
 local curpos = cooper.Character.HumanoidRootPart.CFrame
 cooper.Character.Humanoid:UnequipTools()
 task.wait()
 local axs = {}
 for _, cooper in next, cooper.Backpack:GetChildren() do
  if cooper.Name ~= "BlueprintTool" and cooper:FindFirstChild("ToolName") then
   table.insert(axs, {
    ax = cooper,
    stats = getAxStats(cooper.ToolName.Value, treclass)
   })
  end
 end
 if #axs == 0 then return false, "Pleas pickup a ax." end
 table.sort(axs, function(cooper1, cooper2)
  return cooper1.stats.Damage > cooper2.stats.Damage
 end)
 local ax = axs[1].ax
 local tre, msg = getTrreOfClas(treclas)
 if not tre then
  return false, msg
 end
 if treclas == "LoneCave" then
  if ax.ToolName.Value ~= "EndTimesAxe" then
   return false, "2 get this tre u need end axe loser."
  end
  hahafunnygod()
 end
 local loptp = nil
 if treclas ~= "LoneCave" then
  loptp = game["Run Service"].Heartbeat:Connect(function()
   cooper.Character.HumanoidRootPart.CFrame = CFrame.new(tre.WoodSection.Position + Vector3.new(5, 3, 0))
  end)
 end
 tre = choppy(tre, ax)
 if treclas ~= "LoneCave" then
  loptp:Disconnect()
  loptp = nil
 end
 task.wait(0.15)
 task.spawn(function()
  for cooper=1, 60 do
   replicatedfarts.Interaction.ClientIsDragging:FireServer(tre)
   task.wait()
  end
 end)
 task.wait(0.1)
 tre.PrimaryPart = tre.WoodSection
 for i=1, 60 do
  tre.PrimaryPart.Velocity = Vector3.new(0, 0, 0)
  tre:PivotTo(curpos)
  task.wait()
 end
 if treclas == "LoneCave" then
  cooper.Character.Humanoid:UnequipTools()
  task.wait()
  cooper.Character.Head:Destroy()
  cooper.CharacterAdded:Wait()
  task.wait(1.5)
 end
 cooper.Character.HumanoidRootPart.CFrame = tre.WoodSection.CFrame
 return true, "Don get tre!"
end

local notfy = function(titl, tex, durashin)
 game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = titl,
  Text = tex,
  Duration = durashin,
 })
end

local addtre = function(tre)
 local TreBButon = Instance.new("TextButton")
 TreBButon.Name = "TreBButon"
 TreBButon.Parent = ScrollingFrame
 TreBButon.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
 TreBButon.Position = UDim2.new(0.0483870953, 0, 0, 0)
 TreBButon.Size = UDim2.new(0, 168, 0, 36)
 TreBButon.Font = Enum.Font.Bangers
 TreBButon.Text = tre
 TreBButon.TextColor3 = Color3.fromRGB(0, 0, 255)
 TreBButon.TextScaled = true
 TreBButon.TextSize = 28.000
 TreBButon.TextWrapped = true
 TreBButon.MouseButton1Click:Connect(function()
  local suces, mesg = bringy(tre)
  if suces == true then
   notfy("Suces!", mesg, 5)
  elseif not (suces == true) then
   notfy("Not suces!", mesg, 5)
  end
 end)
end

for _, cooper in next, treclases do
 addtre(cooper)
end

local UserInputService = game:GetService("UserInputService")

        local gui = Frame

        local dragging
        local dragInput
        local dragStart
        local startPos

        local function update(input)
         local delta = input.Position - dragStart
         gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        gui.InputBegan:Connect(function(input)
         if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
          dragging = true
          dragStart = input.Position
          startPos = gui.Position
          
          input.Changed:Connect(function()
           if input.UserInputState == Enum.UserInputState.End then
            dragging = false
           end
          end)
         end
        end)

        gui.InputChanged:Connect(function(input)
         if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
          dragInput = input
         end
        end)

        UserInputService.InputChanged:Connect(function(input)
         if input == dragInput and dragging then
          update(input)
         end
        end)