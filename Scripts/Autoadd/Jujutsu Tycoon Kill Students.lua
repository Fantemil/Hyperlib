for i,v in pairs(workspace.Characters:GetChildren()) do
    if v.Name == "Student" then
        game:GetService("ReplicatedStorage").DamagePlayer:FireServer(v.Humanoid, 1000)
    end
end