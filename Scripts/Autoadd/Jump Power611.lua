local jp = 100 -- ur jump power
-- and make toggle urself its easy

local plr = game:GetService("Players").LocalPlayer
local humanoid = plr.Character:WaitForChild("Humanoid")

humanoid.UseJumpPower = false

humanoid.Jumping:Connect(function(isActive)
    if isActive then
        plr.Character.HumanoidRootPart.Velocity = plr.Character.HumanoidRootPart.Velocity * Vector3.new(1,0,1) + Vector3.new(0,jp,0)
    end
end)