local character = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()

local bodyForce = Instance.new("BodyForce")
bodyForce.Name = "AntiGravityForce"
bodyForce.Force = Vector3.new(0, 0, 0)
bodyForce.Parent = character:FindFirstChild("HumanoidRootPart")

local totalMass = 0
for _, part in pairs(character:GetDescendants()) do
    if part:IsA("BasePart") then
        totalMass = totalMass + part:GetMass()
    end
end


local gravity = workspace.Gravity
local antiGravityForce = Vector3.new(0, totalMass * gravity / 2, 0)

bodyForce.Force = antiGravityForce