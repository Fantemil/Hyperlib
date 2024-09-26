local ESPEnabled = true
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

function createESP(playerTarget)
    local highlight = Instance.new("Highlight")
    highlight.Parent = playerTarget.Character
    highlight.FillColor = Color3.fromRGB(0, 255, 255)
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ESPLabel"
    billboard.Adornee = playerTarget.Character:FindFirstChild("Head")
    billboard.Size = UDim2.new(0, 200, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 3, 0)
    billboard.AlwaysOnTop = true

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Parent = billboard
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = playerTarget.Name
    nameLabel.TextColor3 = Color3.new(1, 1, 1)
    nameLabel.TextSize = 14
    nameLabel.Font = Enum.Font.SourceSans

    billboard.Parent = playerTarget.Character:FindFirstChild("Head")
end

function removeESP(playerTarget)
    if playerTarget.Character:FindFirstChild("Highlight") then
        playerTarget.Character.Highlight:Destroy()
    end
    if playerTarget.Character:FindFirstChild("Head") and playerTarget.Character.Head:FindFirstChild("ESPLabel") then
        playerTarget.Character.Head.ESPLabel:Destroy()
    end
end

function updateESP()
    while ESPEnabled do
        for _, playerTarget in pairs(game.Players:GetPlayers()) do
            if playerTarget ~= player and playerTarget.Character and playerTarget.Character:FindFirstChild("Head") then
                if not playerTarget.Character:FindFirstChild("Highlight") then
                    createESP(playerTarget)
                end
            end
        end

        for _, playerTarget in pairs(game.Players:GetPlayers()) do
            if not playerTarget.Character or not playerTarget.Character:FindFirstChild("Head") then
                removeESP(playerTarget)
            end
        end

        wait(5)
    end
end

function teleportToPlayer(targetPlayer)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local targetPosition = targetPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
        player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
    end
end

mouse.Button1Down:Connect(function()
    local targetPlayer = nil
    local closestDistance = math.huge

    for _, playerTarget in pairs(game.Players:GetPlayers()) do
        if playerTarget ~= player and playerTarget.Character and playerTarget.Character:FindFirstChild("HumanoidRootPart") then
            local screenPos, onScreen = workspace.CurrentCamera:WorldToScreenPoint(playerTarget.Character.HumanoidRootPart.Position)
            local mousePos = Vector2.new(mouse.X, mouse.Y)
            local distance = (mousePos - Vector2.new(screenPos.X, screenPos.Y)).magnitude

            if distance < 50 and distance < closestDistance then
                closestDistance = distance
                targetPlayer = playerTarget
            end
        end
    end

    if targetPlayer then
        teleportToPlayer(targetPlayer)
    end
end)

function showNotification()
    local starterGui = game:GetService("StarterGui")
    starterGui:SetCore("SendNotification", {
        Title = "Notification";
        Text = "Made by thebestpersol, enjoy.";
        Duration = 5;
    })
end

showNotification()
spawn(updateESP)