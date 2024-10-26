local max_player_distance = 200
local distance = 3
local current_player = nil
local aimbot = true

while task.wait() do
    if current_player == nil then
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            local character = v.Character
            local local_player = game.Players.LocalPlayer
            local local_character = local_player.Character
            
            -- Verificar que el jugador local y el jugador objetivo tienen personajes vÃ¡lidos y no son el mismo jugador
            if character and local_character and local_character ~= character then
                local root = character:FindFirstChild("HumanoidRootPart")
                local local_root = local_character:FindFirstChild("HumanoidRootPart")
                
                -- Verificar que el jugador objetivo estÃ¡ dentro de la distancia mÃ¡xima y pertenece a un equipo diferente
                if root and local_root and v.Team ~= local_player.Team then
                    if (root.Position - local_root.Position).Magnitude <= max_player_distance then
                        local humanoid = character:FindFirstChild("Humanoid")
                        
                        if humanoid and humanoid.Health > 0 then
                            -- Verificar que el jugador objetivo no estÃ© muy cerca del jugador local
                            if (root.Position - local_root.Position).Magnitude > 10 then
                                current_player = character
                                break  -- Salir del bucle al encontrar un jugador objetivo vÃ¡lido
                            end
                        end
                    end
                end
            end
        end
    else
        local local_player = game.Players.LocalPlayer
        local local_character = local_player.Character
        
        if local_character then
            local humanoid = current_player:FindFirstChild("Humanoid")
            
            if humanoid and humanoid.Health > 0 then
                local local_root = local_character:FindFirstChild("HumanoidRootPart")
                local enemy_root = current_player:FindFirstChild("HumanoidRootPart")
                
                if local_root and enemy_root then
                    -- Teletransportar al jugador local hacia el jugador objetivo
                    local_root.CFrame = enemy_root.CFrame * CFrame.new(0, 0, distance)
                    
                    if aimbot then
                        -- Apuntar la cÃ¡mara y el personaje local hacia el jugador objetivo
                        game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position, enemy_root.CFrame.Position)
                        local_root.CFrame = CFrame.new(local_root.Position, enemy_root.CFrame.Position)
                    end
                end
            else
                current_player = nil
            end
        end
    end
end
