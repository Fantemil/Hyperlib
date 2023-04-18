--Use at your own risk.
for i,v in pairs(game:GetService("Workspace").Chests:GetDescendants()) do
    if v.Name == "Giver" and v:FindFirstChild("TouchInterest") then
        firetouchinterest(v,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
        wait(0)
        firetouchinterest(v,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
    end
end