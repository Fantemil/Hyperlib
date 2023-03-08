getgenv().autoCandy = true

while autoCandy do
    task.wait()
    for i, v in next, game:GetService("Workspace").Candy.Holder:GetChildren() do
        task.wait()
        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end