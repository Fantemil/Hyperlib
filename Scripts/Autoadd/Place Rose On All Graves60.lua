for i, v in pairs(game:GetService("Workspace").Graves:GetChildren()) do
       game:GetService("ReplicatedStorage").LeosRemotes.PlaceRose:FireServer(v)
    end