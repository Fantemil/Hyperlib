local Player = game.Players.LocalPlayer
local DamageEvent = game.ReplicatedStorage.SamuraiDamage2
--game.ReplicatedStorage.SamuraiDamage2
local allowedusers = {}
Player.Chatted:Connect(function(Chat)
  local split = Chat:split(" ")
  if split[1] and split[2] then
   for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "admin" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "mod" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
            if not table.find(allowedusers,v.UserId) then
            table.insert(allowedusers,v.UserId)
            end
        end
   end 
end
end)   
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] then
      for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "stun"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
            plr = v
            local hum = plr.Character.Humanoid
            local args = {
            [1] = hum
            }
            game:GetService("ReplicatedStorage").Knock:FireServer(unpack(args))
            end
        end
    end    
end)
Player.Chatted:Connect(function(Chat)
  local split = Chat:split(" ")
  if split[1] and split[2] then
   for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "unadmin" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "unmod" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
            if table.find(v.UserId) then
            table.remove(allowedusers,v.UserId)
            end
        end
   end 
end
end) 
Player.Chatted:Connect(function(Chat)
    if Chat:lower() == "nots" then
        game.ReplicatedStorage.Untimestop:FireServer()
    end
end)

Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] and split[3] then
        for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "heal"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
         print(v)
         plr = v
          local hum = plr.Character.Humanoid
            DamageEvent:FireServer(hum, -tonumber(split[3]))
        end
        end
    end
end)
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] and split[3] then
        for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "damage"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
         print(v)
         plr = v
          local hum = plr.Character.Humanoid
            DamageEvent:FireServer(hum, tonumber(split[3]))
        end
        end
    end
end)
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] then
       for i,v in pairs(game.Workspace:GetDescendants()) do
         if split[1]:lower() == "killnpc" and v:FindFirstChild("Humanoid") and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "dienpc" and v:FindFirstChild("Humanoid")  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
               plr = v
               DamageEvent:FireServer(plr.Humanoid, math.huge)
        end
        end
    end
end)
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] then
       for i,v in pairs(game.Players:GetChildren()) do
         if split[1]:lower() == "kill" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "nolive,"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
               plr = v
                DamageEvent:FireServer(plr.Character.Humanoid, math.huge)
            end
        end
    end
end)
Player.Chatted:Connect(function(Chat)
  local split = Chat:split(" ")
  for i,v in pairs(game.Players:GetChildren()) do
         if split[1]:lower() == "ungod" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "nogod"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
              print(v)
              plr = v
              if plr.Character.Humanoid.Health > 9501 then
              DamageEvent:FireServer(plr.Character.Humanoid, 9500)
              end
        end
      end
end)
Player.Chatted:Connect(function(Chat)
  local split = Chat:split(" ")
  for i,v in pairs(game.Players:GetChildren()) do
         if split[1]:lower() == "god" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "immortal"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
                print(v)
                plr = v
                DamageEvent:FireServer(plr.Character.Humanoid, -10000)
        end
        end
end)
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] then
        for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "goto" and v.Name:lower():sub(1,#split[2]) == split[2]:lower()  then
            plr = v
            Player.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame + plr.Character.HumanoidRootPart.CFrame.LookVector *3

        end
        end
    end
end)
Player.Chatted:Connect(function(Chat)
    local split = Chat:split(" ")
    if split[1] and split[2] and split[3] then
        for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "teleport," and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "teleport" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
            local oldpos = Player.Character.HumanoidRootPart.CFrame
                 plr = v
                 Player.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame + plr.Character.HumanoidRootPart.CFrame.LookVector *-3
                  wait(0.2)
                  game.ReplicatedStorage.VampireDamage:FireServer(plr.Character.Humanoid,0.1)
                  wait(0.5)
                 for i,v in pairs(game.Players:GetChildren()) do
                 if split[1]:lower() == "move," and v.Name:lower():sub(1,#split[3]) == split[3]:lower() or split[1]:lower() == "teleport" and v.Name:lower():sub(1,#split[3]) == split[3]:lower() then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                 end
                    end
        
        end
        end
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
     if split[1] == "ts" then
        local timestopevent = game.ReplicatedStorage.Timestop2
         timestopevent:FireServer(tonumber(split[2]), "shadowdio") 
         wait(0.1)
         game.Lighting.TS.Value = false
    end
end)
local chatEvents = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents")
local messageDoneFiltering = chatEvents:WaitForChild("OnMessageDoneFiltering")


messageDoneFiltering.OnClientEvent:Connect(function(message)
   local player = game.Players:FindFirstChild(message.FromSpeaker)
   local Chat = message.Message or ""
      if player and table.find(allowedusers, player.UserId) then
    if Chat:lower() == "nots" then
        game.ReplicatedStorage.Untimestop:FireServer()
    end
    local split = Chat:split(" ")
    if split[1] and split[2] and split[3] then
        for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "heal"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
         plr = v
          local hum = plr.Character.Humanoid
            DamageEvent:FireServer(hum, -tonumber(split[3]))
        end
        end
    end
    local split = Chat:split(" ")
    if split[1] and split[2] and split[3] then
        for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "damage"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
         print(v)
         plr = v
          local hum = plr.Character.Humanoid
            DamageEvent:FireServer(hum, tonumber(split[3]))
        end
        end
    end

    local split = Chat:split(" ")
    if split[1] and split[2] then
       for i,v in pairs(game.Players:GetChildren()) do
         if split[1]:lower() == "kill" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "nolive,"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
               plr = v
            for i = 1,10 do
                DamageEvent:FireServer(plr.Character.Humanoid, math.huge)
           end
        end
        end
    end

  local split = Chat:split(" ")
  for i,v in pairs(game.Players:GetChildren()) do
         if split[1]:lower() == "ungod" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "nogod"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
              print(v)
              plr = v
                DamageEvent:FireServer(plr.Character.Humanoid, 950)
        end
     end

  local split = Chat:split(" ")
  for i,v in pairs(game.Players:GetChildren()) do
         if split[1]:lower() == "god" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "immortal"  and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
                plr = v
                DamageEvent:FireServer(plr.Character.Humanoid, -1000)
        end
 end
    local split = Chat:split(" ")
    if split[1] and split[2] then
        for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "goto" and v.Name:lower():sub(1,#split[2]) == split[2]:lower()  then
            plr = v
            Player.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame + plr.Character.HumanoidRootPart.CFrame.LookVector *3

        end
        end
    end
    local split = Chat:split(" ")
    if split[1] and split[2] and split[3] then
        for i,v in pairs(game.Players:GetChildren()) do
        if split[1]:lower() == "teleport," and v.Name:lower():sub(1,#split[2]) == split[2]:lower() or split[1]:lower() == "teleport" and v.Name:lower():sub(1,#split[2]) == split[2]:lower() then
            local oldpos = Player.Character.HumanoidRootPart.CFrame
                 plr = v
                 Player.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame + plr.Character.HumanoidRootPart.CFrame.LookVector *-3
                  wait(0.2)
                  game.ReplicatedStorage.VampireDamage:FireServer(plr.Character.Humanoid,0.1)
                  wait(0.5)
                 for i,v in pairs(game.Players:GetChildren()) do
                 if split[1]:lower() == "move," and v.Name:lower():sub(1,#split[3]) == split[3]:lower() or split[1]:lower() == "teleport" and v.Name:lower():sub(1,#split[3]) == split[3]:lower() then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                 end
                    end
        
        end
        end
    end
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
                  Player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
        end
        end
    end
     local split = Chat:split(" ")
     if split[1] == "ts" then
        local timestopevent = game.ReplicatedStorage.Timestop2
         timestopevent:FireServer(tonumber(split[2]), "shadowdio") 
         wait(0.1)
         game.Lighting.TS.Value = false
    end
    end
end)