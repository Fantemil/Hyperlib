local Admins = {"Admin1", "Admin2", "Admin3"} -- Add the usernames of the admins here
local Prefix = "!" -- Change this to your desired prefix

game.Players.PlayerAdded:Connect(function(Player)
    for _,Admin in pairs(Admins) do
        if Player.Name == Admin then
            Player.Chatted:Connect(function(Message)
                if string.sub(Message, 1, #Prefix) == Prefix then
                    local Command = string.sub(Message, #Prefix + 1)
                    if Command == "kickall" then
                        for _,p in pairs(game.Players:GetPlayers()) do
                            if p.Name ~= Admin then
                                p:Kick("You have been kicked by an admin.")
                            end
                        end
                    elseif Command == "banall" then
                        for _,p in pairs(game.Players:GetPlayers()) do
                            if p.Name ~= Admin then
                                p:Kick("You have been banned by an admin.")
                                game:GetService("Players"):SetAsync("Banned/"..p.UserId, true)
                            end
                        end
                    elseif Command == "kill" then
                        local Target = game.Players:GetPlayerByName(string.sub(Message, #Prefix + 5))
                        if Target then
                            Target.Character:BreakJoints()
                        end
                    elseif Command == "respawn" then
                        local Target = game.Players:GetPlayerByName(string.sub(Message, #Prefix + 8))
                        if Target then
                            Target:LoadCharacter()
                        end
                    elseif Command == "speed" then
                        local Target = game.Players:GetPlayerByName(string.sub(Message, #Prefix + 6))
                        local Speed = tonumber(string.sub(Message, #Prefix + 7))
                        if Target and Speed then
                            Target.Character.Humanoid.WalkSpeed = Speed
                        end
                    elseif Command == "jump" then
                        local Target = game.Players:GetPlayerByName(string.sub(Message, #Prefix + 5))
                        local Jump = tonumber(string.sub(Message, #Prefix + 6))
                        if Target and Jump then
                            Target.Character.Humanoid.JumpPower = Jump
                        end
                    end
                end
            end)
        end
    end
end)
