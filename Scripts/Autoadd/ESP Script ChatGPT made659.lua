-- Universal ESP Script

function createESP(player)
    local espBox = Instance.new("BoxHandleAdornment")
    espBox.Size = player.Character:GetExtentsSize() + Vector3.new(0, 2, 0)
    espBox.Adornee = player.Character
    espBox.AlwaysOnTop = true
    espBox.ZIndex = 5
    espBox.Color3 = Color3.new(0, 1, 0) -- You can change the color here
    espBox.Transparency = 0.5

    espBox.Parent = game.Workspace.CurrentCamera
end

function updateESP()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("Humanoid") and player.Character:FindFirstChild("HumanoidRootPart") and not isSameTeam(player) then
            createESP(player)
        end
    end
end

function isSameTeam(player)
    local myPlayer = game.Players.LocalPlayer
    local myTeam = myPlayer.Team

    if myTeam and player.Team then
        return myTeam.Name == player.Team.Name
    end

    return false
end

game:GetService("RunService").RenderStepped:Connect(function()
    for _, espBox in pairs(game.Workspace.CurrentCamera:GetChildren()) do
        if espBox:IsA("BoxHandleAdornment") then
            espBox:Destroy()
        end
    end
    updateESP()
end)
