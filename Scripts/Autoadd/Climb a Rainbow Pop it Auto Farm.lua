getgenv().collectmoney = true


spawn(function()
    local playerHead = game.Players.LocalPlayer.Character.Head
    while wait(2) do
        if not getgenv().collectmoney then break end
        for i, v in pairs(game:GetService("Workspace").Stairs:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(playerHead, v.Parent,  0)
                firetouchinterest(playerHead, v.Parent,  1)
            end
        end
    end
end)