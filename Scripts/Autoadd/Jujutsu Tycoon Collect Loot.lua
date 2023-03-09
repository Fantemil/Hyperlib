for i,v in pairs(workspace:GetChildren()) do
    if v.Name == "BasicLoot" or v.Name == "NpcBossLoot" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        fireproximityprompt(v.ProximityPrompt)
    end
end