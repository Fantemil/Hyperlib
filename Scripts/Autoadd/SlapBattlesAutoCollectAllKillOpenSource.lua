local charac = game.Players.LocalPlayer.Character
for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool") then
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
        wait(.2)
        charac.Humanoid:EquipTool(v)
        v.Equipped:Connect(function()
            if v.Name ~= "Bomb" and v.Name ~= "First Aid Kit" then
                v:Activate()
            end
        end)
    end
end
charac.HumanoidRootPart.CFrame = workspace.Map.MountainBlock.CFrame
wait(2)
local replStorage = game:GetService("ReplicatedStorage")
for i,v in pairs(game.Players:GetPlayers()) do
    wait(1)
    task.wait()
    if v.Name ~= game.Players.LocalPlayer.Name then
        repeat wait(.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
            wait(.1)
            replStorage.Events.Slap:FireServer(v.Character:FindFirstChild("Right Arm"))
        until v.Character.Humanoid.Health == 0
    end
end