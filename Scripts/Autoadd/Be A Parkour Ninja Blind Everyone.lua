if getgenv().autoFlash then getgenv().autoFlash = false else getgenv().autoFlash = true end
while getgenv().autoFlash do
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") and v ~= plr then
            game:GetService("ReplicatedStorage").RemoteTriggers.CreateFlash:FireServer(v.Character.HumanoidRootPart.Position, 21)
        end
        task.wait()
    end
end