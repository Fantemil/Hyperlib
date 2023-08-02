while wait() do
	for i,ok in pairs(game:GetService("Workspace"):GetChildren()) do
    if ok.Name == "Coin" then
        if ok:FindFirstChild("TouchInterest") then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, ok, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, ok, 1)
        end
    end 
end
end