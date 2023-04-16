print("auto win loaded, made by Finny")

local lp = game.Players.LocalPlayer.Character.HumanoidRootPart
repeat wait(2) until workspace.GroupBuildStructures:FindFirstChild("BlockTower")

print("starting")

for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Block") then
  v.TouchTrigger.CFrame = lp.CFrame
        task.wait(.1)
  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BlockTower.Trigger, 0)
        task.wait(.1)
  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BlockTower.Trigger, 1)
  task.wait(.1)
    end
end

if workspace:FindFirstChild('Block24') then
 workspace:FindFirstChild('Block24').TouchTrigger.CFrame = lp.CFrame
end

wait(1)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BlockTower.Trigger, 0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BlockTower.Trigger, 1)

wait(1)
repeat wait(2) until workspace.GroupBuildStructures:FindFirstChild("FoodCounter")

for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Food") then
  v.TouchTrigger.CFrame = lp.CFrame
        task.wait(.1)
  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FoodCounter.Trigger, 0)
        task.wait(.1)
  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FoodCounter.Trigger, 1)
  task.wait(.1)
    end
end

wait(1)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FoodCounter.Trigger, 0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FoodCounter.Trigger, 1)

wait(1)
repeat wait(2) until workspace.GroupBuildStructures:FindFirstChild("FuseBoard")

for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Fuse") then
  v.TouchTrigger.CFrame = lp.CFrame
        task.wait(.1)
  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FuseBoard.Trigger, 0)
        task.wait(.1)
  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FuseBoard.Trigger, 1)
  task.wait(.1)
    end
end

wait(1)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FuseBoard.Trigger, 0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FuseBoard.Trigger, 1)

wait(1)
repeat wait(2) until workspace.GroupBuildStructures:FindFirstChild("BatteryBox")

for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Battery") then
  v.TouchTrigger.CFrame = lp.CFrame
        task.wait(.1)
  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BatteryBox.Trigger, 0)
        task.wait(.1)
  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BatteryBox.Trigger, 1)
  task.wait(.1)
    end
end

wait(1)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BatteryBox.Trigger, 0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BatteryBox.Trigger, 1)

wait(1)
repeat wait(2) until workspace.GroupBuildStructures:FindFirstChild("TicketMachine")

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.Ticket.TouchTrigger,0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.Ticket.TouchTrigger,1)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.GroupBuildStructures.TicketMachine.Trigger,0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.GroupBuildStructures.TicketMachine.Trigger,1)

while wait(4) do
    lp.CFrame = CFrame.new(Vector3.new(-404, 19, 647))
end

-- made by Finny
-- Original script blox thread: https://scriptblox.com/script/Rainbow-Friends-Auto-Win-BEST-6014 (for others websites that copy from scriptblox)