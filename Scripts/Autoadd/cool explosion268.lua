local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Create an explosion at the player's position
local explosion = Instance.new("Explosion")
explosion.Position = humanoidRootPart.Position
explosion.BlastRadius = 10
explosion.BlastPressure = 50000  -- Adjust for the visual effect (harmless)

-- Optional: Add a visual effect or sound
explosion.ExplosionType = Enum.ExplosionType.NoCraters  -- No crater is left behind

-- Parent the explosion to the workspace to make it appear
explosion.Parent = workspace
