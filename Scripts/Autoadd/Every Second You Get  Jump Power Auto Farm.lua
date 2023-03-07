local plr = game:GetService("Players").LocalPlayer
while wait(1) do
    if plr.leaderstats.Wins.Value == plr.requiredwins.value then
        game:GetService("ReplicatedStorage"):WaitForChild("RebirthEvent"):FireServer()
        print("Rebirthed!")
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(194584.453, 122862.148, 326.917)
    end
end