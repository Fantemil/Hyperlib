local LocalPlayer = game.Players.LocalPlayer
local TeleportOrigin = workspace.Pyramid.Tele.Core2
local TeleportPosition = TeleportOrigin.CFrame

function tp(Pos)
    local Magnitude = LocalPlayer.Character.HumanoidRootPart.Position.Magnitude
    local Start = tick()
    local Connection

    TeleportOrigin.CanCollide = false
    TeleportOrigin.Transparency = 1
    TeleportOrigin.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame

    repeat
        game:GetService("RunService").Heartbeat:Wait()
    until Magnitude ~= LocalPlayer.Character.HumanoidRootPart.Position.Magnitude or tick() - Start > 1.5

    Connection = game:GetService("RunService").Heartbeat:Connect(function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Pos)
    end)

    TeleportOrigin.CanCollide = true
    TeleportOrigin.Transparency = 0
    TeleportOrigin.CFrame = TeleportPosition
    wait(0.4)
    Connection:Disconnect()
    if LocalPlayer.Character:FindFirstChild("AntiTeleport") then
        tp(Pos)
    elseif LocalPlayer.Character.HumanoidRootPart.Position.X - Pos.X > 40 or LocalPlayer.Character.HumanoidRootPart.Position.Y - Pos.Y > 40 then
        tp(Pos)
    else
        wait(0.3)
    end
end

for i,v in pairs(workspace.ObjectSelection:GetChildren()) do
    if v.Name == "Fixed Battery" and v.Battery.Position.Y < 500 then
        tp(v.Battery.Position + Vector3.new(0, 5, 0))
        wait(0.2)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Battery.Position + Vector3.new(0, 5, 0))
        wait(0.2)
        v.Battery.Battery.Event:FireServer()
    end
end

tp(game:GetService("Workspace").ObjectSelection.Generator.Generator.Position)
wait(1)
game:GetService("Workspace").ObjectSelection.Generator.Generator.Generator.Event:FireServer()