getgenv().Halloween = true




    spawn(function()
     local playerHead = game.Players.LocalPlayer.Character.Head
     while wait() do
        if not getgenv().Halloween then break end
        for i, v in pairs(game:GetService("Workspace").Spawners.Halloween:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
            wait()
            end
        end
     end
end)