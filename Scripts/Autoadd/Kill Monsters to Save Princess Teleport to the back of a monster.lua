while wait(0.1) do
    for i,v in pairs(game.Workspace.Waves:GetDescendants()) do
        if v.Name == "HumanoidRootPart" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,0,5)
        end
    end
end