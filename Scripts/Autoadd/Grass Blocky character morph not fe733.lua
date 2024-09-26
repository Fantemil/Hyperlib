local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function changeToGrass()
    local head = Instance.new("Part")
    head.Name = "Head"
    head.Size = Vector3.new(2, 1, 1)
    head.BrickColor = BrickColor.new("Bright green")
    head.Material = Enum.Material.Grass
    head.Parent = character

    local torso = Instance.new("Part")
    torso.Name = "Torso"
    torso.Size = Vector3.new(2, 2, 1)
    torso.BrickColor = BrickColor.new("Bright green")
    torso.Material = Enum.Material.Grass
    torso.Parent = character

    local leftArm = Instance.new("Part")
    leftArm.Name = "Left Arm"
    leftArm.Size = Vector3.new(1, 2, 1)
    leftArm.BrickColor = BrickColor.new("Bright green")
    leftArm.Material = Enum.Material.Grass
    leftArm.Parent = character

    local rightArm = Instance.new("Part")
    rightArm.Name = "Right Arm"
    rightArm.Size = Vector3.new(1, 2, 1)
    rightArm.BrickColor = BrickColor.new("Bright green")
    rightArm.Material = Enum.Material.Grass
    rightArm.Parent = character

    local leftLeg = Instance.new("Part")
    leftLeg.Name = "Left Leg"
    leftLeg.Size = Vector3.new(1, 2, 1)
    leftLeg.BrickColor = BrickColor.new("Bright green")
    leftLeg.Material = Enum.Material.Grass
    leftLeg.Parent = character

    local rightLeg = Instance.new("Part")
    rightLeg.Name = "Right Leg"
    rightLeg.Size = Vector3.new(1, 2, 1)
    rightLeg.BrickColor = BrickColor.new("Bright green")
    rightLeg.Material = Enum.Material.Grass
    rightLeg.Parent = character

    for _, part in pairs(character:GetChildren()) do
        if part:IsA("Part") or part:IsA("MeshPart") then
            part:Destroy()
        end
    end

    head.Parent = character
    torso.Parent = character
    leftArm.Parent = character
    rightArm.Parent = character
    leftLeg.Parent = character
    rightLeg.Parent = character
end

changeToGrass()