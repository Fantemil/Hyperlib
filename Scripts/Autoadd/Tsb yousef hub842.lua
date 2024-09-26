-- Create and set up the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "HighlightGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create and set up the Frame
local frame = Instance.new("Frame")
frame.Name = "HighlightFrame"
frame.Size = UDim2.new(0, 200, 0, 150)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Parent = screenGui

-- Create and set up the Highlight Button
local highlightButton = Instance.new("TextButton")
highlightButton.Name = "HighlightButton"
highlightButton.Size = UDim2.new(1, -20, 0, 50)
highlightButton.Position = UDim2.new(0, 10, 0, 10)
highlightButton.Text = "Highlight Players"
highlightButton.BackgroundColor3 = Color3.fromRGB(0, 128, 255)
highlightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
highlightButton.Parent = frame

-- Create and set up the Respawn Button
local respawnButton = Instance.new("TextButton")
respawnButton.Name = "RespawnButton"
respawnButton.Size = UDim2.new(1, -20, 0, 50)
respawnButton.Position = UDim2.new(0, 10, 0, 70)
respawnButton.Text = "Handle Respawn"
respawnButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
respawnButton.TextColor3 = Color3.fromRGB(255, 255, 255)
respawnButton.Parent = frame

-- Function to highlight players
local function highlightPlayers()
    local player = game.Players.LocalPlayer

    -- Iterate through all players
    for _, p in pairs(game.Players:GetPlayers()) do
        if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            -- Create a BillboardGui if it doesn't exist
            local billboardGui = p.Character:FindFirstChild("BillboardGui")
            if not billboardGui then
                billboardGui = Instance.new("BillboardGui")
                billboardGui.Name = "BillboardGui"
                billboardGui.Adornee = p.Character.HumanoidRootPart
                billboardGui.Size = UDim2.new(0, 200, 0, 50)
                billboardGui.StudsOffset = Vector3.new(0, 3, 0)
                billboardGui.AlwaysOnTop = true
                billboardGui.Parent = p.Character

                local textLabel = Instance.new("TextLabel")
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.Text = p.Name
                textLabel.BackgroundTransparency = 1
                textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                textLabel.TextStrokeTransparency = 0.5
                textLabel.Parent = billboardGui

                print("BillboardGui created for", p.Name)
            else
                print("BillboardGui already exists for", p.Name)
            end
        else
            print("Character or HumanoidRootPart missing for", p.Name)
        end
    end
end

-- Function to handle the player's respawn
local function handleRespawn()
    local player = game.Players.LocalPlayer

    -- Function to handle the player's character addition
    local function onCharacterAdded(character)
        local humanoid = character:WaitForChild("Humanoid")
        local head = character:FindFirstChild("Head")

        -- Function to handle the player's death
        local function onCharacterDied()
            -- Save the position where the player died
            player:SetAttribute("LastDeathPosition", character.PrimaryPart.Position)
        end

        -- Connect the death event
        humanoid.Died:Connect(onCharacterDied)

        -- Teleport the player to the last death position if it exists
        local lastDeathPosition = player:GetAttribute("LastDeathPosition")
        if lastDeathPosition then
            -- Set the character's position to the saved position
            character:SetPrimaryPartCFrame(CFrame.new(lastDeathPosition))
            player:SetAttribute("LastDeathPosition", nil) -- Clear the attribute

            -- Make the character say a message in the chat
            if head then
                local chatService = game:GetService("Chat")
                chatService:Chat(head, "Reverse Cursed Technique", Enum.ChatColor.Red)
            end
        end
    end

    -- Connect the CharacterAdded event
    player.CharacterAdded:Connect(onCharacterAdded)

    -- Ensure the script handles cases where the character might already exist when the script runs
    if player.Character then
        onCharacterAdded(player.Character)
    end
end

-- Connect button click events
highlightButton.MouseButton1Click:Connect(highlightPlayers)
respawnButton.MouseButton1Click:Connect(handleRespawn)
