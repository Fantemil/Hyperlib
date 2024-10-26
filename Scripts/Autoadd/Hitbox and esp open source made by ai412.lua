-- SETTINGS VARIABLES
local hitboxEnabled = true        -- Set to 'true' to enable hitbox expansion, 'false' to disable
local hitboxSize = Vector3.new(10, 10, 10) -- Set hitbox size (adjust as needed)

local espEnabled = true           -- Set to 'true' to enable ESP, 'false' to disable
local espColor = Color3.fromRGB(255, 0, 0) -- Set ESP color (RGB values)

-- Get the folder containing the zombies
local zombieFolder = workspace:WaitForChild("Zombies")

-- Function to create ESP (highlight) for a given zombie model
local function createESP(zombie)
    if espEnabled and zombie:IsA("Model") then
        -- Check if the zombie already has a highlight, if not, create one
        if not zombie:FindFirstChildOfClass("Highlight") then
            local highlight = Instance.new("Highlight")
            highlight.Adornee = zombie -- Attach to the zombie model
            highlight.FillColor = espColor
            highlight.FillTransparency = 0.5 -- Adjust visibility
            highlight.OutlineTransparency = 0.1 -- Set outline transparency
            highlight.Parent = zombie -- Make it visible by parenting it
        end
    end
end

-- Function to expand the hitbox for a given zombie
local function expandHitbox(zombie)
    local hrp = zombie:FindFirstChild("HumanoidRootPart")
    if hrp and hitboxEnabled then
        hrp.Size = hitboxSize -- Increase hitbox size based on the variable
        hrp.Transparency = 0.5 -- Set transparency to visualize the hitbox
        hrp.CanCollide = false -- Ensure it doesn't collide with the player
    end
end

-- Function to handle applying both hitbox and ESP to a zombie
local function applyHitboxAndESP(zombie)
    if zombie:FindFirstChild("HumanoidRootPart") then
        -- Apply hitbox expansion
        expandHitbox(zombie)
        -- Apply ESP to the whole zombie model
        createESP(zombie)
    end
end

-- Initial iteration through all zombies in the Zombies folder
for _, zombie in pairs(zombieFolder:GetChildren()) do
    applyHitboxAndESP(zombie)
end

-- Initial iteration through all m_Zombie instances in workspace.Camera
for _, zombie in pairs(workspace.Camera:GetChildren()) do
    if zombie.Name == "m_Zombie" then
        applyHitboxAndESP(zombie)
    end
end

-- Handle newly spawned zombies in both the Zombies folder and workspace.Camera
zombieFolder.ChildAdded:Connect(function(zombie)
    applyHitboxAndESP(zombie)
end)

workspace.Camera.ChildAdded:Connect(function(zombie)
    if zombie.Name == "m_Zombie" then
        applyHitboxAndESP(zombie)
    end
end)

-- Continuous loop to ensure all zombies have ESP and hitboxes updated (for newly spawned or missed ones)
while true do
    wait(1) -- Repeat every 1 second to apply to new zombies

    -- Apply to all zombies in the Zombies folder
    for _, zombie in pairs(zombieFolder:GetChildren()) do
        applyHitboxAndESP(zombie)
    end

    -- Apply to all m_Zombie instances in workspace.Camera
    for _, zombie in pairs(workspace.Camera:GetChildren()) do
        if zombie.Name == "m_Zombie" then
            applyHitboxAndESP(zombie)
        end
    end
end
