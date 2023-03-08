for i,v in ipairs(game:GetService("Workspace").Ignored.ItemsDrop:GetDescendants()) do
    if v:IsA("TouchTransmitter") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
    end
end