local ShortestDistance = math.huge
local function GetClosestPlayer()
    local ClosestPlayer
    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                v.Character.Humanoid.Health ~= 0 and
                v.Character:FindFirstChild("HumanoidRootPart") then
            local Position = Camera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local Magnitude = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
            if Magnitude <= ShortestDistance then
                closestPlayer = v
                ShortestDistance = Magnitude
            end
        end
    end
    return ClosestPlayer
end
