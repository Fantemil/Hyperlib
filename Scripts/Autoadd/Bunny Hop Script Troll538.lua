while true do
    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.F) then
        local nearestPlayer, minDistance = nil, math.huge
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("Head") then
                local distance = (player.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).magnitude
                if distance < minDistance then
                    nearestPlayer = player
                    minDistance = distance
                end
            end
        end
        if nearestPlayer then
            local target = nearestPlayer.Character.Head
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = target.CFrame
        end
    end
    wait()
end