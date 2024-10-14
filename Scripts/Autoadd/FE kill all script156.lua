local player = game.Players.LocalPlayer

while wait(0.1) do
    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= player and v.Character and v.Team ~= player.Team then
            local jn = v.Character:FindFirstChild("Torso")
            local jnr = v.Character:FindFirstChildOfClass("Humanoid")
            if jn and jnr.Health > 0 then
                local args = {
                    [1] = Vector3.new(0, 0, 0),
                    [2] = Vector3.new(0, 0, 0),
                    [3] = jn
                }
                
                game:GetService("Players").LocalPlayer.Backpack.Gun.FIRE:FireServer(unpack(args))       
            end
        end
    end
end

spawn(function()
    while wait(0.1) do
        for _, v in pairs(game.Players:GetPlayers()) do
            if v ~= player and v.Character and v.Team ~= player.Team then
                local jn = v.Character:FindFirstChild("Torso")
                local jnr = v.Character:FindFirstChildOfClass("Humanoid")
                if jn and jnr.Health > 0 then
                    local args = {
                        [1] = Vector3.new(0, 0, 0),
                        [2] = Vector3.new(0, 0, 0),
                        [3] = jn
                    }
                    
                    game:GetService("Players").LocalPlayer.Character.Gun.FIRE:FireServer(unpack(args))       
                end
            end
        end
    end
end)