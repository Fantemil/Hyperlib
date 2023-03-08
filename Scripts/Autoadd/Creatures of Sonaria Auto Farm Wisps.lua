-- Set to false to stop the farm

getgenv().DroppedWisps = true

-- Steal them eggs

task.spawn(function()
    while getgenv().DroppedWisps == true do
        task.wait(0.5)
        for i,v in pairs(workspace.DroppedWisps:GetDescendants()) do
    if v:IsA("TouchTransmitter") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
end
end
end
end)