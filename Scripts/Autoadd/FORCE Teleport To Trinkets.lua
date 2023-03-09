for _,v in pairs(workspace:GetDescendants()) do
    if v:IsA("StringValue") and v.Name == "Rarity" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame*CFrame.new(0, 1, 0)
    end
end