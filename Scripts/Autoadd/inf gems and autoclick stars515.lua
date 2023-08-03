--Inf gems--
local args = {
   [1] = "Upgrade2",
   [2] = -62500000000000000000000
}

game:GetService("ReplicatedStorage").GameClient.Remotes.Upgrader:InvokeServer(unpack(args))

--Autoclick--
getgenv().MainStars = true
getgenv().BeachStars = true
getgenv().JungleStars = true
getgenv().HellStars = true
getgenv().CaveStars = true
getgenv().IceStars = true
getgenv().CandyStars = true
    
    
    spawn(function()
     local playerHead = game.Players.LocalPlayer.Character.Head
     while wait() do
        if not getgenv().MainStars then break end
        for i, v in pairs(game:GetService("Workspace").Spawners.Candy:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
            wait()
            end
        end
     end
end)

    
    spawn(function()
     local playerHead = game.Players.LocalPlayer.Character.Head
     while wait() do
        if not getgenv().BeachStars then break end
        for i, v in pairs(game:GetService("Workspace").Spawners.Candy:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
            wait()
            end
        end
     end
end)
    
    
    spawn(function()
     local playerHead = game.Players.LocalPlayer.Character.Head
     while wait() do
        if not getgenv().JungleStars then break end
        for i, v in pairs(game:GetService("Workspace").Spawners.Candy:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
            wait()
            end
        end
     end
end)


spawn(function()
     local playerHead = game.Players.LocalPlayer.Character.Head
     while wait() do
        if not getgenv().HellStars then break end
        for i, v in pairs(game:GetService("Workspace").Spawners.Candy:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
            wait()
            end
        end
     end
end)


spawn(function()
     local playerHead = game.Players.LocalPlayer.Character.Head
     while wait() do
        if not getgenv().CaveStars then break end
        for i, v in pairs(game:GetService("Workspace").Spawners.Candy:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
            wait()
            end
        end
     end
end)


spawn(function()
     local playerHead = game.Players.LocalPlayer.Character.Head
     while wait() do
        if not getgenv().IceStars then break end
        for i, v in pairs(game:GetService("Workspace").Spawners.Candy:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
            wait()
            end
        end
     end
end)


spawn(function()
     local playerHead = game.Players.LocalPlayer.Character.Head
     while wait() do
        if not getgenv().CandyStars then break end
        for i, v in pairs(game:GetService("Workspace").Spawners.Candy:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
            wait()
            end
        end
     end
end)