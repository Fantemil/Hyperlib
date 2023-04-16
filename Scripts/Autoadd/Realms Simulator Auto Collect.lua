getgenv().AutoCollect = true --true/false for on/off

game:GetService("RunService").RenderStepped:Connect(function()
    if not getgenv().AutoCollect then return end
    
    local dropsFolder = workspace:FindFirstChild("DROPS")
    if not dropsFolder or #dropsFolder:GetChildren() == 0 then return end
    
    local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    for _, part in ipairs(dropsFolder:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CFrame = CFrame.new(playerPosition)
        end
    end
end)