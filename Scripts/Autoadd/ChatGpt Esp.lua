local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local esp_settings = {
    enabled = true,
    color = Color3.new(1, 0, 0),
    transparency = 5,
    offset = 1,
}

local function createBox()
    local box = Drawing.new("Square")
    box.Visible = false
    box.Filled = false
    box.Color = esp_settings.color
    box.Transparency = esp_settings.transparency
    box.Thickness = 1.
    return box
end

local function updateESP(player, character)
    local rootPart = character:WaitForChild("HumanoidRootPart", 10)
    local head = character:WaitForChild("Head", 10)
    if rootPart and head then
        local box = createBox()
        box.Position = Vector2.new(1, 1)
        box.Visible = esp_settings.enabled

        local function update()
            local connection
            connection = game:GetService("RunService").RenderStepped:Connect(function()
                if character and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0 then
                    local rootPartPos, onScreenRootPart = workspace.CurrentCamera:WorldToViewportPoint(rootPart.Position)
                    local headPos, onScreenHead = workspace.CurrentCamera:WorldToViewportPoint(head.Position)

                    if onScreenRootPart and onScreenHead then
                        local boxWidth = math.abs(headPos.X - rootPartPos.X) * 3 -- Adjusted for R15 proportions
                        local boxHeight = math.abs(headPos.Y - rootPartPos.Y) * 2.5 -- Adjusted for R15 proportions

                        local offset = esp_settings.offset
                        box.Position = Vector2.new(rootPartPos.X - (boxWidth / 2), rootPartPos.Y - (boxHeight / 2))
                        box.Size = Vector2.new(boxWidth + offset, boxHeight + offset)
                        box.Visible = esp_settings.enabled
                    else
                        box.Visible = false
                    end
                else
                    box.Visible = false
                end
            end)

            character.AncestryChanged:Connect(function(_, parent)
                if parent == nil then
                    box:Remove()
                    connection:Disconnect()
                end
            end)
        end

        coroutine.wrap(update)()
    end
end

local function onPlayerAdded(player)
    if player ~= LocalPlayer and player.Character then
        updateESP(player, player.Character)
        player.CharacterAdded:Connect(function(character)
            updateESP(player, character)
        end)
    end
end

local function onPlayerRemoving(player)
    for _, box in ipairs(player.Character:GetDescendants()) do
        if box:IsA("Drawing") and box.Name == "Square" then
            box:Remove()
        end
    end
end

Players.PlayerAdded:Connect(onPlayerAdded)
Players.PlayerRemoving:Connect(onPlayerRemoving)

for _, player in ipairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end