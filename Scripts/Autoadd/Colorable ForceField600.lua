local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local forceField = Instance.new("ForceField")
forceField.Color = Color3.fromRGB(0, 0, 225)  -- your color here 
forceField.Parent = character