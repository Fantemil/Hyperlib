local MouseLock = {
    Settings = {
        Enabled = false,
        Key = 'x',
        Prediction = 0.135,
        AimPart = 'HumanoidRootPart'
    }
}

local CurrentCamera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local Mouse = game.Players.LocalPlayer:GetMouse()
local Plr

function FindClosestPlayer()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
            v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local pos = CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end

Mouse.KeyDown:Connect(function(KeyPressed)
    if KeyPressed == (MouseLock.Settings.Key) then
        if MouseLock.Settings.Enabled == true then
            MouseLock.Settings.Enabled = false
            Plr = FindClosestPlayer()
        else
            Plr = FindClosestPlayer()
            MouseLock.Settings.Enabled = true

        end
    end
end)

RunService.Stepped:connect(function()
    if MouseLock.Settings.Enabled == true then
        local Vector = CurrentCamera:WorldToScreenPoint(Plr.Character[MouseLock.Settings.AimPart].Position +
                                                            (Plr.Character[MouseLock.Settings.AimPart].Velocity *
                                                                MouseLock.Settings.Prediction))
        mousemoverel(Vector.X - Mouse.X, Vector.Y - Mouse.Y)
    end

end)