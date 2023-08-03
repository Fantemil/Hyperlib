--PLEASE READ FEATURES BEFORE USING THIS!
getgenv().Duration = 4 -- enter ur ts duration here
local Player = game.Players.LocalPlayer
Player.Chatted:Connect(function(Chat)
    if Chat:lower() == "!unts" then
        game.ReplicatedStorage.Untimestop:FireServer()
    end
end)
local Player = game.Players.LocalPlayer
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] then
        if split[1]:lower() == "!heal" and game.Players:FindFirstChild(split[2]) then
            local hum = game.Players[split[2]].Character.Humanoid
            game.ReplicatedStorage.SamuraiDamage2:FireServer(hum, -(hum.MaxHealth - hum.Health))
        end
    end
end)
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] then
        if split[1]:lower() == "die" or split[1]:lower() == "die," and game.Players:FindFirstChild(split[2]) then
                 for i = 1,10 do
                game.ReplicatedStorage.SamuraiDamage2:FireServer(game.Players[split[2]].Character.Humanoid, math.huge)
           end
        end
    end
end)
Player.Chatted:Connect(function(Chat)
    if Chat:lower() == "!god" then
        game.ReplicatedStorage.SamuraiDamage2:FireServer(game.Players.LocalPlayer.Character.Humanoid, -math.huge)
    end
end)
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] then
        if split[1]:lower() == "come," or split[1]:lower() == "bring" and game.Players:FindFirstChild(split[2]) then
                 game.ReplicatedStorage.VampireDamage:FireServer(game.Players[split[2]].Character.Humanoid,0.1)
        end
    end
end)
Player.Chatted:Connect(function(Chat)
    if Chat:lower() == "stop time" then
        local timestopevent = game.ReplicatedStorage.Timestop2
         timestopevent:FireServer(getgenv().Duration, "shadowdio") 
         wait(0.1)
         game.Lighting.TS.Value = false
    end
end)