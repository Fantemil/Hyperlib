repeat wait() until workspace.GroupBuildStructures:FindFirstChild("BlockTower") ~= nil
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Block1:WaitForChild'TouchTrigger'.CFrame
wait(1)
for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Block") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.TouchTrigger.CFrame
        task.wait(.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.GroupBuildStructures.BlockTower.Trigger.CFrame
        task.wait(.2)
    end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.GroupBuildStructures.BlockTower.Trigger.CFrame

repeat wait() until workspace.GroupBuildStructures:FindFirstChild("FoodCounter") ~= nil
wait(1)
for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Food") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.TouchTrigger.CFrame
        task.wait(.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.GroupBuildStructures.FoodCounter.Trigger.CFrame
        task.wait(.2)
    end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.GroupBuildStructures.FoodCounter.Trigger.CFrame

repeat wait() until workspace.GroupBuildStructures:FindFirstChild("FuseBoard") ~= nil
wait(1)
for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Fuse") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.TouchTrigger.CFrame
        task.wait(.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.GroupBuildStructures.FuseBoard.Trigger.CFrame
        task.wait(.2)
    end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.GroupBuildStructures.FuseBoard.Trigger.CFrame

repeat wait() until workspace.GroupBuildStructures:FindFirstChild("BatteryBox") ~= nil
wait(1)
for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Battery") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.TouchTrigger.CFrame
        task.wait(.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.GroupBuildStructures.BatteryBox.Trigger.CFrame
        task.wait(.2)
    end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.GroupBuildStructures.BatteryBox.Trigger.CFrame

repeat wait() until workspace.GroupBuildStructures:FindFirstChild("TicketMachine") ~= nil
wait(1)
firetouchinterest(game.Players.LocalPlayer.Character.Head,workspace.Ticket.TouchTrigger,0)
task.wait(.2)
firetouchinterest(game.Players.LocalPlayer.Character.Head,workspace.GroupBuildStructures.TicketMachine.Trigger,0)

while wait() do
    pcall(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-404, 19, 647))
    end)
end