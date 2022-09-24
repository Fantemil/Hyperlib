local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

function nearestPlayer()
    local d1 = math.huge
    local t = nil
    for i, v in pairs(Players:GetChildren()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Head") ~= nil then
            local d2 = (LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude
            if d1 > d2 then
                d1 = d2
                t = v
            end
        end
    end
    
    return t, d1
end

while task.wait() do
    local getTool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
    if getTool ~= nil and getTool:FindFirstChild("hit") then
        local nearestTarget, nearestDistance = nearestPlayer()
        if nearestTarget and nearestDistance < 15 then
            wait(getTool.Cooldowntime.Value)
            getTool.swing:FireServer()
            getTool.hit:FireServer(nearestTarget.Character.Humanoid)
        end
    end
end