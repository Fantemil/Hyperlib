getgenv().hearts = true
while getgenv().hearts == true do
    task.wait()
for i,v in pairs(game:service"Workspace".LevelSections.Start.Coins:GetDescendants()) do
    if v:IsA("TouchTransmitter") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        wait()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
    end
end
end