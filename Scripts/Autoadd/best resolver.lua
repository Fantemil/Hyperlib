local Target = "username" 

local Y = -0
game:GetService("RunService").RenderStepped:Connect(function()
    for i,v in pairs(game.Players:GetPlayers()) do
        Target = v.Name 
        if Target ~= game.Players.LocalPlayer.Name then
        old_vel = game.Players[Target].Character.HumanoidRootPart.Velocity
        game.Players[Target].Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Y, old_vel.Z)
    end
    end
end) 