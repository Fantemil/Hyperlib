while wait() do
    for _,v in pairs(workspace.Particles:GetChildren()) do
        if v.Name == "Money" then
            game.Players.LocalPlayer.Character.UpperTorso.CFrame = v.Part.CFrame
        end
end
end