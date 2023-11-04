local plr = game.Players.LocalPlayer.Character.Head

while true do
    for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(plr, v.Parent, 0)
        end
    end
    wait(1)  -- time before loop. (adjust as needed)
end