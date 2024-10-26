-- No gravity script made by Jinxx enjoy!

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")

local bodyVel = Instance.new("BodyVelocity")
bodyVel.Velocity = Vector3.new(0, 50, 0)
bodyVel.MaxForce = Vector3.new(0, math.huge, 0)
bodyVel.Parent = root

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = root.CFrame
bodyGyro.Parent = root

game:GetService("RunService").Heartbeat:Connect(function()
    bodyGyro.CFrame = root.CFrame
end)