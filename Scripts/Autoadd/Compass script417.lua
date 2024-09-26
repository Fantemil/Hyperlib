--// https://discord.com/invite/Yb6JNPAm3u \\--
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

local screenGui = Instance.new("ScreenGui")
local compassFrame = Instance.new("Frame")

screenGui.Name = "CompassGui"
screenGui.Parent = player:WaitForChild("PlayerGui")

compassFrame.Name = "CompassFrame"
compassFrame.Parent = screenGui
compassFrame.AnchorPoint = Vector2.new(0.5, 0)
compassFrame.Position = UDim2.new(0.5, 0, 0.02, 0)  
compassFrame.Size = UDim2.new(0.8, 0, 0.06, 0)  
compassFrame.BackgroundTransparency = 1
compassFrame.BorderSizePixel = 0

local directions = {
    [0] = "N",
    [45] = "NE",
    [90] = "E",
    [135] = "SE",
    [180] = "S",
    [225] = "SW",
    [270] = "W",
    [315] = "NW"
}

local function createLabel(parent, text, isCardinal)
    local label = Instance.new("TextLabel")
    label.Parent = parent
    label.Size = UDim2.new(0.1, 0, 1, 0)
    label.AnchorPoint = Vector2.new(0.5, 0.5)
    label.Font = Enum.Font.SourceSansBold
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextScaled = true
    label.BackgroundTransparency = 1
    return label
end

local function createSeparator(parent)
    local label = Instance.new("TextLabel")
    label.Parent = parent
    label.Size = UDim2.new(0.05, 0, 1, 0) 
    label.AnchorPoint = Vector2.new(0.5, 0.5)
    label.Font = Enum.Font.SourceSansBold
    label.Text = "|"
    label.TextColor3 = Color3.fromRGB(255, 255, 255) 
    label.TextScaled = true
    label.BackgroundTransparency = 1
    return label
end

local labels = {}
local separators = {}
for i = 0, 360, 15 do
    if directions[i] then
        labels[i] = createLabel(compassFrame, directions[i], true)
    else
        labels[i] = createLabel(compassFrame, tostring(i), false)
    end
    separators[i] = createSeparator(compassFrame)
end

local function updateCompass()
    local cameraDirection = camera.CFrame.LookVector
    local angle = math.atan2(cameraDirection.X, cameraDirection.Z)
    local degrees = (math.deg(angle) + 360) % 360
 
    for i = 0, 360, 15 do
        local offset = math.abs(degrees - i)
        local scaleFactor = 1 - (offset / 90) 
        
        if scaleFactor < 0.5 then
            scaleFactor = 0.5
        end
        
        local label = labels[i]
        local separator = separators[i]
       
        label.Position = UDim2.new(0.5 + ((i - degrees) / 90), 0, 0.5, 0)
        label.Size = UDim2.new(0.1 * scaleFactor, 0, scaleFactor, 0)
        label.TextTransparency = 1 - scaleFactor  
        
        separator.Position = UDim2.new(0.5 + ((i - degrees) / 90) + (0.05 * scaleFactor), 0, 0.5, 0)
        separator.Size = UDim2.new(0.05 * scaleFactor, 0, scaleFactor, 0)
        separator.TextTransparency = 1 - scaleFactor

        if directions[i] then
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
        else
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(updateCompass)