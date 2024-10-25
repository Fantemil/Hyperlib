local Players = game:GetService("Players")
local Debris = game:GetService("Debris")

-- Function to create an explosion (the "nuke")
local function nuke(player)
    -- Get the player's character and position
    local character = player.Character
    if not character then return end
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return end

    -- Create a large explosion at the player's position
    local explosion = Instance.new("Explosion")
    explosion.Position = rootPart.Position
    explosion.BlastRadius = 50 -- Adjust this for the size of the explosion
    explosion.BlastPressure = 500000 -- Higher pressure for a bigger effect
    explosion.DestroyJointRadiusPercent = 1 -- Completely destroys parts within the blast radius
    explosion.Parent = workspace

    -- Apply effects to all players within the radius
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        local otherCharacter = otherPlayer.Character
        if otherCharacter then
            local otherHumanoid = otherCharacter:FindFirstChild("Humanoid")
            local otherRootPart = otherCharacter:FindFirstChild("HumanoidRootPart")

            if otherHumanoid and otherRootPart then
                local distance = (rootPart.Position - otherRootPart.Position).Magnitude
                if distance <= explosion.BlastRadius then
                    otherHumanoid:TakeDamage(100) -- Apply damage to players within blast radius
                end
            end
        end
    end

    -- Optionally, add visual effects like debris or a shockwave
    local shockwave = Instance.new("Part")
    shockwave.Size = Vector3.new(1, 1, 1)
    shockwave.Position = rootPart.Position
    shockwave.Anchored = true
    shockwave.Transparency = 0.5
    shockwave.Shape = Enum.PartType.Ball
    shockwave.Material = Enum.Material.Neon
    shockwave.BrickColor = BrickColor.new("Bright yellow")
    shockwave.Parent = workspace

    -- Gradually scale the shockwave to create a visual effect
    game:GetService("TweenService"):Create(shockwave, TweenInfo.new(2), {Size = Vector3.new(100, 100, 100)}):Play()
    Debris:AddItem(shockwave, 2) -- Remove the shockwave after 2 seconds

    -- Play a loud explosion sound (optional)
    local explosionSound = Instance.new("Sound")
    explosionSound.SoundId = "rbxassetid://142070127" -- Example explosion sound
    explosionSound.Volume = 10
    explosionSound.Position = rootPart.Position
    explosionSound.Parent = workspace
    explosionSound:Play()
    Debris:AddItem(explosionSound, 5) -- Remove the sound after 5 seconds
end

-- Listen for player commands to trigger the nuke
Players.PlayerAdded:Connect(function(player)
    -- You can trigger the nuke for testing purposes when a player joins
    wait(5) -- Wait for 5 seconds after the player joins
    nuke(player) -- Nuke the player for testing

    -- Optionally, add other ways to trigger the nuke, such as a RemoteEvent
end)
