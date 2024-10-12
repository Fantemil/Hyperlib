local function createESPforTorso(player)
    -- Wait until the player's character is added
    player.CharacterAdded:Connect(function(character)
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart") -- Or "UpperTorso" for R15 rigs

        -- Create the BoxHandleAdornment
        local box = Instance.new("BoxHandleAdornment")
        box.Size = humanoidRootPart.Size -- Match the size of the HumanoidRootPart
        box.Adornee = humanoidRootPart -- Attach to the torso
        box.Color3 = Color3.new(0, 1, 0) -- Green color for the box
        box.Transparency = 0.5 -- Semi-transparent
        box.AlwaysOnTop = true -- Make sure it's always visible
        box.ZIndex = 5 -- Ensures it's drawn over other UI elements
        box.Parent = humanoidRootPart -- Parent it to the torso
    end)
end

-- Loop through all players currently in the game
for _, player in pairs(game.Players:GetPlayers()) do
    createESPforTorso(player)
end

-- Apply ESP to players who join later
game.Players.PlayerAdded:Connect(function(player)
    createESPforTorso(player)
end)
