for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "BlueStar" then
        v.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
    
    wait(0.3)
end