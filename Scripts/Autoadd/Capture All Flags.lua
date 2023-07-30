local LP = game.Players.LocalPlayer
local Humanoid = LP.Character.Humanoid
Humanoid.Changed:Connect(function()
    Humanoid.Health = 99999
end)
local function capture(Fortress)
    local Offset = Vector3.zero
    if Fortress.Name == "Fortress" then
        Offset = Vector3.new(0,3,0)
    end
    local FlagPos = CFrame.new(Fortress.WorldPivot.Position + Offset)
    local Loop
    Loop = game:GetService('RunService').Heartbeat:Connect(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FlagPos
        if tostring(Fortress:WaitForChild('Hitbox'):WaitForChild('Owner').Value) == LP.Name then
            Loop:Disconnect()
        end
    end)
end


for _, fortress in pairs(workspace.ControlPoints:GetChildren()) do
    capture(fortress)
end
for i,v in pairs(getconnections(Humanoid.Changed)) do
    v:Disable()
end
