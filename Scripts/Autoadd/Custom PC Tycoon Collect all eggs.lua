for _,v in next, workspace.Eggs:GetDescendants() do 
    if v.Name == 'Egg' and v:FindFirstChild("ProximityPrompt") then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        wait(1)
        fireproximityprompt(v.ProximityPrompt)
    end
end