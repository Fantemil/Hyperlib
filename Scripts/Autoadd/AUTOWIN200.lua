getgenv().Auto_Winning = true -- Turn to false if you want to stop


while getgenv().Auto_Winning do
    Current_Stage = game:GetService("Players").LocalPlayer.leaderstats.Stage.Value
    Spawn_Points = game:GetService("Workspace").Stages
    Find_HumanoidRootPart = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

    if Find_HumanoidRootPart then
        if Spawn_Points:FindFirstChild(Current_Stage+1) then
            Find_HumanoidRootPart.CFrame = Spawn_Points[Current_Stage+1].CFrame
        end
    end
    wait(0.3)
end