local script = [[
-- Define the required hats
local REQUIRED_HATS = {
    "Brown Hair",
    "Lavender Updo",
    "Chestnut Bun",
    "Red Roblox Cap",
}

-- Define a function to check if a player is wearing all the required hats
local function hasRequiredHats(player)
    for _, hatName in pairs(REQUIRED_HATS) do
        local hat = player.Character and player.Character:FindFirstChild(hatName)
        if not hat then
            return false
        end
    end
    return true
end

-- Define a function to reanimate a player's character and put them on a bicycle
local function putPlayerOnBicycle(player)
    -- Create a new Humanoid and set its properties
    local humanoid = Instance.new("Humanoid")
    humanoid.MaxHealth = 0
    humanoid.Health = 0
    humanoid.Parent = player.Character

    -- Create a new Bicycle and set its properties
    local bicycle = Instance.new("Model")
    bicycle.Name = "Bicycle"
    bicycle.Parent = workspace

    local seat = Instance.new("VehicleSeat")
    seat.Name = "Seat"
    seat.Size = Vector3.new(2, 2, 2)
    seat.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0)
    seat.Anchored = true
    seat.Parent = bicycle

    local frontWheel = Instance.new("Part")
    frontWheel.Name = "FrontWheel"
    frontWheel.Size = Vector3.new(0.5, 1, 1)
    frontWheel.CFrame = seat.CFrame + Vector3.new(0, -1, 1.5)
    frontWheel.Anchored = true
    frontWheel.Parent = bicycle

    local frontWheelJoint = Instance.new("Motor6D")
    frontWheelJoint.Name = "FrontWheelJoint"
    frontWheelJoint.Part0 = frontWheel
    frontWheelJoint.Part1 = seat
    frontWheelJoint.C0 = CFrame.new(0, 0.5, 1.5)
    frontWheelJoint.C1 = CFrame.new(0, 0, 0)
    frontWheelJoint.Axis = Vector3.new(1, 0, 0)
    frontWheelJoint.Parent = frontWheel

    local backWheel = Instance.new("Part")
    backWheel.Name = "BackWheel"
    backWheel.Size = Vector3.new(0.5, 1, 1)
    backWheel.CFrame = seat.CFrame + Vector3.new(0, -1, -1.5)
    backWheel.Anchored = true
    backWheel.Parent = bicycle

    local backWheelJoint = Instance.new("Motor6D")
    backWheelJoint.Name = "BackWheelJoint"
    backWheelJoint.Part0 = backWheel
    backWheelJoint.Part1 = seat
    backWheelJoint.C0 = CFrame.new(0, 0.5, -1.5)
    backWheelJoint.C1 = CFrame.new(0, 0, 0)
    backWheelJoint.Axis = Vector3.new(1, 0, 0)
    backWheelJoint.Parent = backWheel

    -- Attach the player's character to the Bicycle
    local weld = Instance.new("WeldConstraint")
    weld.Name = "Weld"
    weld.Part0 = player.Character.HumanoidRootPart
    weld.Part1 = seat
    weld.Parent = seat

    -- Move the player's character to the Bicycle and set its state to Seated
