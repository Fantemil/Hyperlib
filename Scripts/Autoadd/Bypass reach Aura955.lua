-- Created by  MrOrmsman
-- Bypass reach aura

-- Define the player
local player = game.Players.LocalPlayer

-- Create the reach aura function
local function createReachAura()
    -- Create a part to represent the aura
    local auraPart = Instance.new("Part")
    auraPart.Name = "ReachAura"
    auraPart.Size = Vector3.new(10, 10, 10)
    auraPart.Transparency = 0.5
    auraPart.BrickColor = BrickColor.new("Bright red")
    auraPart.Anchored = true
    auraPart.CanCollide = false
    auraPart.Parent = workspace

    -- Create a proximity prompt to activate the aura
    local proximityPrompt = Instance.new("ProximityPrompt")
    proximityPrompt.Name = "ReachAuraPrompt"
    proximityPrompt.ActionText = "Activate Reach Aura"
    proximityPrompt.Parent = auraPart

    -- Define the function to activate the aura
    local function activateAura()
        -- Set the player's reach to a high value
        player.Character.Humanoid.MaxHealth = math.huge
        player.Character.Humanoid.WalkSpeed = 100
        player.Character.Humanoid.JumpPower = 100
        player.Character.Humanoid.HipHeight = 100
        player.Character.Humanoid.AutoRotate = true
        player.Character.Humanoid.AutoRotateSpeed = 100
    end

    -- Connect the proximity prompt to the activateAura function
    proximityPrompt.Triggered:Connect(activateAura)
end

-- Call the createReachAura function to create the aura
createReachAura()
