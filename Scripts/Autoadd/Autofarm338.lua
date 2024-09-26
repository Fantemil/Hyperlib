while true do
    game.ReplicatedStorage.Events.UpgradeEvent:FireServer("MoneyGain")
    game.ReplicatedStorage.Events.UpgradeEvent:FireServer("NPCS")
    game.ReplicatedStorage.Events.PlayEvent:FireServer()
    wait(.3)
    for i, v in workspace.Npcs:GetChildren() do
        local car = workspace.Cars:WaitForChild(game.Players.LocalPlayer:GetAttribute("CurrentCar"))
        if v:FindFirstChild("HumanoidRootPart") then
            v.HumanoidRootPart.CFrame = car:WaitForChild("Hitbox").CFrame
        end
        game.ReplicatedStorage.Events.UpgradeEvent:FireServer("MoneyGain")
        wait(.05)
    end
end