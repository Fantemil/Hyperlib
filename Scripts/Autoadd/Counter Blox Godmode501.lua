getgenv().godmode = true 

game.RunService.RenderStepped:Connect(function()
    if getgenv().godmode == true then 
        for _, plr in ipairs(game.Players:GetPlayers()) do
            if (plr:FindFirstChild("DamageLogs") and not plr.DamageLogs:FindFirstChild(game.Players.LocalPlayer.Name)) then
                game.ReplicatedStorage.MapVoting.Submit:FireServer(plr, "DamageLogs")
            end
        end
    else
        game.ReplicatedStorage.MapVoting.Submit:FireServer(plr, "")
    end 
end)