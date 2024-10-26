for _, v in pairs(workspace:GetDescendants()) do
    if v.Parent.Name == "Badge Giver (open me)" and v.Name == "TouchInterest" then
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent)
    end
end 