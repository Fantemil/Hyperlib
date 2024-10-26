getgenv().VelocityChanger = true 
getgenv().XVelocity = 90
getgenv().YVelocity = 90
getgenv().ZVelocity = 90

game:GetService("RunService").PostSimulation:Connect(function()
        local PlayerVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
        if getgenv().VelocityChanger then
                game.Players.LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(getgenv().XVelocity, getgenv().YVelocity, getgenv().ZVelocity) 
    game:GetService("RunService").PreRender:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = PlayerVelocity
    end 
end)