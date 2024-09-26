-- Press M to teleport to nearest ore
local showText = true -- Change to false if you don't want to see the esp ore text

-- You can edit the list below to exclude common ores, these below are just examples
excludedOres = {"Magma", "Stone", "Granite", "Obsidian", "Barrier", "Deepslate", "Basalt", "AbyssStone", "Snow", "Lunar", "Core", "SingularityStone", "Void", "Sunlight", "GlitchBlock", "Rhyolite", "CosmicRock", "Granitenium", "Bit", "Fragmentium", "Quartz", "Stardust", "Mythril", "Titanium", "Obsidistone", "Ruby", "Platinum", "Gold", "Lead", "Andesite", "Calcite", "Tungsten", "Diamond", "Potassium", "Voltnium", "Iodine", "Iron", "Silver", "ChargedCore", "Equilateralite", "Coal", "Magmastone", "Magnetite", "Magmatite", "Sodium", "Radium", "BlueCobalt", "Redstone", "Tin", "Copper", "Lithium", "Vanadium"}

-- Don't edit below if you don't know what you're doing --

local folder = game:GetService("Workspace").SpawnedBlocks
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

local function isValidName(name)
    for _, validName in pairs(excludedOres) do
        if name == validName then
            return false
        end
    end
    return true
end

local function createESP(primary, distance)
    local player = game:GetService("Players").LocalPlayer
    local rootPart = player.Character.HumanoidRootPart
    local box = Instance.new("BoxHandleAdornment", game.CoreGui)
    box.Adornee = primary
    box.AlwaysOnTop = true
    box.Color = primary.BrickColor
    box.ZIndex = 10
    box.Size = primary.Size + Vector3.new(0.1, 0.1, 0.1)
    
    local billboard = Instance.new("BillboardGui", game.CoreGui)
    billboard.Adornee = primary
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0, 100, 0, 60)
    billboard.StudsOffset = Vector3.new(0, 3, 0)
    
    local handleRemovedEvent = primary.AncestryChanged:Connect(function(_, parent)
        if not parent then
            billboard:Destroy()
            box:Destroy()
        end
    end)
    
    if showText then
        local nameLabel = Instance.new("TextLabel", billboard)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Size = UDim2.new(1, 0, 0.225, 0)
        nameLabel.Text = primary.Name
        nameLabel.Font = Enum.Font.GothamSemibold
        nameLabel.TextColor3 = primary.Color
        nameLabel.TextScaled = true
        
        local distLabel = Instance.new("TextLabel", billboard)
        distLabel.BackgroundTransparency = 1
        distLabel.Size = UDim2.new(1, 0, 0.175, 0)
        distLabel.Position = UDim2.new(0, 0, 0.225, 0)
        distLabel.Text = "Distance: " .. math.floor(distance)
        distLabel.Font = Enum.Font.GothamSemibold
        distLabel.TextColor3 = primary.Color
        distLabel.TextScaled = true

        local connection = game:GetService("RunService").Heartbeat:Connect(function()
            local newDistance = (rootPart.Position - primary.Position).magnitude
            distLabel.Text = "Distance: " .. math.floor(newDistance)
        end)

        return {Gui = billboard, Connection = connection, HandleRemovedEvent = handleRemovedEvent}
    else
        return {Gui = billboard}
    end
end

function isOreExcluded(block)
    if block:IsA("BasePart") and isValidName(block.Name) then
        local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - block.Position).magnitude
        createESP(block, distance)
    else
        block.Transparency = 0.35
    end
end

function nearestTP(folder)
    local player = game:GetService("Players").LocalPlayer
    local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
    local rootPart = humanoid.RootPart
    local nearestBlock = nil
    local nearestDistance = math.huge

    for _, block in pairs(folder:GetChildren()) do
        if isValidName(block.Name) then
            local distance = (rootPart.Position - block.Position).magnitude
            if distance < nearestDistance then
                nearestDistance = distance
                nearestBlock = block
            end
        end
    end

    if nearestBlock then
        rootPart.CFrame = nearestBlock.CFrame + Vector3.new(0, 15, 0)
    end
end

for _, part in pairs(folder:GetChildren()) do
    part.Transparency = 0.35
    isOreExcluded(part)
end

folder.ChildAdded:Connect(isOreExcluded)

local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(k)
    if k.KeyCode == Enum.KeyCode.M then
        nearestTP(folder)
    end
end)