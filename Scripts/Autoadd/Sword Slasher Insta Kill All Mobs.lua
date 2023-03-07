local RunService = game:GetService("RunService")

RunService.Stepped:Connect(function()
    for Index, Mob in next, workspace.Mobs:GetChildren() do
        if Mob:FindFirstChild("Humanoid") then
            Mob.Humanoid:TakeDamage(9e9)
        end
    end
end)