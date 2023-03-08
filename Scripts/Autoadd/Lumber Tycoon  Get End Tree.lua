-- cooper get trre
local cooper = game.Players.LocalPlayer
local treeregins = {}
local replicatedfarts = game.ReplicatedStorage
local axeclasses = replicatedfarts:WaitForChild("AxeClasses")

for _, cooper in next, workspace:GetChildren() do
  if cooper.Name == "TreeRegion" then
    table.insert(treeregins, cooper)
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

warn(bringy("LoneCave"))