while wait() do
    game:GetService("ReplicatedStorage").Remotes.StrengthEvent:FireServer("StrengthEvent")
end