for i,v in pairs(workspace.Mine.Blocks:GetChildren()) do
if v.Name:find("Ore") then
task.wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.CFrame
task.wait(1)
game:GetService("ReplicatedStorage").Remotes.Events.DestroyBlock:FireServer(v)
end
end