-- anti fling
local function antiFling(player)
    player.CharacterAppearanceLoaded:Wait()
            
    for _, child in pairs(player.Character:GetChildren()) do
        if child:IsA("BasePart") then
            child.CanCollide = false
                    
            if child.Name == "Torso" then
                child.Massless = true
            end
                    
            local vector = Vector3.new()
                    
            child.Velocity = vector
            child.RotVelocity = vector
        end
    end
end

for _, player in pairs(game:GetService("Players"):GetPlayers()) do
    if player ~= game:GetService("Players").LocalPlayer then
        antiFling(player)
    end
end

game.Players.PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Connect(function()
        antiFling(Player)
    end)
end)