local triggerBotEnabled = true
local shootDelay = 0.2

function isCrosshairOverPlayer()
    local mouse = game.Players.LocalPlayer:GetMouse()
    local target = mouse.Target

    if target and target.Parent:FindFirstChild("Humanoid") then
        local player = game.Players:GetPlayerFromCharacter(target.Parent)
        if player then
            return player
        end
    end
    return nil
end

game:GetService("RunService").RenderStepped:Connect(function()
    if triggerBotEnabled then
        local targetPlayer = isCrosshairOverPlayer()
        if targetPlayer then
            mouse1press()
            wait(shootDelay)
            mouse1release()
            wait(shootDelay)
        end
    end
end)