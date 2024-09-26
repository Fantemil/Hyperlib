while true do
    local player = game.Players.LocalPlayer

    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= player then
            local JN = v.Character 
            if JN then
                spawn(function()
                    while true do
                        local args = {
                            [1] = JN,
                            [2] = math.huge
                        }
                        
                        game:GetService("ReplicatedStorage").Events.Dmg:FireServer(unpack(args))
                        wait()
                        game:GetService("ReplicatedStorage").Events.Dmg2:FireServer(unpack(args))
                        wait()
                    end
                end)
            end
        end
    end
    wait()
end