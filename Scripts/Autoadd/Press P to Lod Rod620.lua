local function teleportToPart(part)
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 3, 0)
    end
end

local roadsModel = game.Workspace.models.roads

local function findAndTeleport()
    if roadsModel then
        local highestNumber = 0
        local targetPart = nil

        for _, part in pairs(roadsModel:GetChildren()) do
            local partNumber = tonumber(part.Name)
            if partNumber and part:IsA("Part") then
higher
                if partNumber > highestNumber then
                    highestNumber = partNumber
                    targetPart = part
                end
            end
        end

        if targetPart then
            teleportToPart(targetPart)
        else
            print("No numeric parts found in the roads model.")
        end
    else
        print("Roads model not found in Workspace.")
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.P and not gameProcessedEvent then
        findAndTeleport()
    end
end)
