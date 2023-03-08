for i,v in pairs(game.workspace.ItemFind:GetDescendants()) do

    if v:IsA("ProximityPrompt") then

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame

        fireproximityprompt(v)

        wait(0.15)

    end

end