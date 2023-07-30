local plyhead = game.Players.LocalPlayer.Character.Head -- Players Head

for i, v in pairs(game:GetService("Workspace").GameObjects:GetDescendants()) do 
    if v.Name == "TouchInterest" and v.Parent then 
        firetouchinterest(plyhead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(plyhead, v.Parent, 1)
    end
end