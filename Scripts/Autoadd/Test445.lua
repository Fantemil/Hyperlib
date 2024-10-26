local Players = game:GetService("Players")

local function onTouch(other)
    local player = Players:GetPlayerFromCharacter(other.Parent)
    local touchingPlayer = Players:GetPlayerFromCharacter(script.Parent) -- O jogador que possui este script

    if player and touchingPlayer then
        local humanoid = other.Parent:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:TakeDamage(100) -- Causa a perda de 100 HP
        end
    end
end

script.Parent.Touched:Connect(onTouch)