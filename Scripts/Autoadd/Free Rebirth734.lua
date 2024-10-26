local function teleportThroughCheckpoints()
    local index = 1
    local player = game.Players.LocalPlayer

    local function teleportToCheckpoint(index)
        local checkpoint = workspace.Checkpoints:FindFirstChild(tostring(index))
        
        if checkpoint then
            player.Character:SetPrimaryPartCFrame(checkpoint.CFrame)
            if index == 101 then
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Rebirth"):FireServer()
                return false
            end
            
            return true
        else
            return false
        end
    end

    while true do
        local continue = teleportToCheckpoint(index)
        
        if not continue then
            break
        end
        
        index = index + 1
        
        wait(0.2)
    end
end

while true do
    teleportThroughCheckpoints()
    wait(2)
end
