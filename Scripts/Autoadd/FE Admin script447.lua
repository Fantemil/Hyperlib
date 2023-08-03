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
     for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "!heal" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then 
            plr = v
            local hum = plr.Character.Humanoid
            game.ReplicatedStorage.RTZDamage:FireServer(hum, -(hum.MaxHealth - hum.Health))
              end
           end
        end
    end)
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] then
           for i,v in pairs(game.Players:GetChildren()) do
           if v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
        if split[1]:lower() == "die"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "die," and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
             plr = v
                game.ReplicatedStorage.RTZDamage:FireServer(plr.Character.Humanoid, math.huge)
           end
        end
      end
    end
end)

Player.Chatted:Connect(function(Chat)
    if Chat:lower() == "!god" then
        game.ReplicatedStorage.RTZDamage:FireServer(Player.Character.Humanoid,-math.huge)
    end
end)
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] then
        for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "come," and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "bring" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
            local oldpos = Player.Character.HumanoidRootPart.CFrame
                 plr = v
                 Player.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame + plr.Character.HumanoidRootPart.CFrame.LookVector *-3
                  wait(0.2)
                  game.ReplicatedStorage.VampireDamage:FireServer(plr.Character.Humanoid,0.1)
                  wait(0.5)
                  Player.Character.HumanoidRootPart.CFrame = oldpos
        end
        end
    end
end)
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1]:lower() == "!ts" then
        local timestopevent = game.ReplicatedStorage.Timestop2
                    if type(tonumber(split[2])) == "number" then
                timestopevent:FireServer(tonumber(split[2]), "diooh")
         wait(0.2)
         game.Lighting.TS.Value = false
        end
    end
end)