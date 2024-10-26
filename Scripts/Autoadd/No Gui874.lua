while true do
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("TouchTransmitter") then
            local parentPart = v.Parent
            if parentPart and parentPart:IsA("BasePart") then
                character:SetPrimaryPartCFrame(parentPart.CFrame)
                task.wait(5)
            end
        end
    end
end
