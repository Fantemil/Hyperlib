local player = game.Players.LocalPlayer

player.Character.HumanoidRootPart.CFrame=workspace.Maps.Portal.LobbyTouchPart.CFrame

game:GetService("RunService").Heartbeat:Connect(function()
    player.Character:WaitForChild("Humanoid").StateChanged:Connect(function()
        player.Character:WaitForChild("HumanoidRootPart").CFrame=workspace.Maps.Portal.LobbyTouchPart.CFrame
    end)
    for i,v in pairs(player.Backpack:GetChildren()) do
        if v.Name == "KingsPunch" then
            player.Character.Humanoid:EquipTool(v)
        end
    end
    if player.Character:FindFirstChildOfClass("Tool") then
        allplayers = game:GetService("Players")
        for u,z in pairs(allplayers:GetPlayers()) do
            for i,v in pairs(workspace:GetChildren()) do
                if v.Name == z.Name and v.Name ~= player.Character.Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChildOfClass("Tool") then
                    if v:FindFirstChildOfClass("Tool") then
                        player.Character.HumanoidRootPart.CFrame=CFrame.new(v.HumanoidRootPart.Position+Vector3.new(0,-4,0)) * CFrame.Angles(math.rad(90), 0, 0)
                        player.Character.KingsPunch.Punch.MoveTrigger:FireServer("Z")
                    end
                end
            end
        end
    end
end)