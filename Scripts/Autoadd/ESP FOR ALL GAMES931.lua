local player = game.Players.LocalPlayer
local camera = game.Workspace.CurrentCamera
local runService = game:GetService("RunService")

local function createESP(player)
    local esp = Instance.new("BillboardGui")
    esp.Size = UDim2.new(2, 0, 2, 0)
    esp.Adornee = player.Character.Head
    esp.AlwaysOnTop = true

    local espFrame = Instance.new("Frame")
    espFrame.Size = UDim2.new(1, 0, 1, 0)
    espFrame.BackgroundTransparency = 0.5
    espFrame.BackgroundColor3 = Color3.new(0, 1, 0)
    espFrame.BorderSizePixel = 5

    espFrame.Parent = esp
    esp.Parent = player.Character.Head
end

local function updateESP()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            if player.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                createESP(player)
            end
        end
    end
end

-- Remove ESP for players who leave
game.Players.PlayerRemoving:Connect(function(player)
    local esp = player.Character and player.Character:FindFirstChild("Head"):FindFirstChild("BillboardGui")
    if esp then
        esp:Destroy()
    end
end)

-- Update ESP regularly
runService.RenderStepped:Connect(function()
    updateESP()
end)
