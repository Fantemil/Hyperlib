game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        local Position = game.Players.LocalPlayer:GetMouse().Hit
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1000,3009,3900)
        task.wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Position.X,Position.Y,Position.Z)
    end
end)