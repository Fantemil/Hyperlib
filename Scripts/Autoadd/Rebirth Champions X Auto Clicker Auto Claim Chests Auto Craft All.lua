_G.Auto_Chest = true --true/false 

while wait() do
    pcall(function()
        if _G.Auto_Chest then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "Chest" then
     fireproximityprompt(v.Hitbox.ProximityPrompt)
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Hitbox.CFrame
                end
            end
        end
    end)
end