 local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local lp = Players.LocalPlayer
local Buttons = workspace:WaitForChild("Buttons")

-- Function to create ESP for a button
local function createESP(button)
    local highlight = Instance.new("BoxHandleAdornment")
    highlight.Adornee = button.Parent
    highlight.AlwaysOnTop = true
    highlight.ZIndex = 5
    highlight.Size = button.Parent.Size
    highlight.Transparency = 0.5
    highlight.Color3 = Color3.new(0, 1, 0) -- Neon green color
    highlight.Parent = button.Parent
    return highlight
end

-- Function to update ESP
local function updateESP()
    -- Remove existing ESP adornments
    for _, child in pairs(Buttons:GetDescendants()) do
        if child:IsA("BoxHandleAdornment") then
            child:Destroy()
        end
    end

    -- Create new ESP adornments
    for _, v in pairs(Buttons:GetDescendants()) do
        if v:IsA("ProximityPrompt") and v.Name == "ButtonPrompt" and v.Parent:FindFirstChild("PointLight") and v.Parent:FindFirstChild("PointLight").Enabled == true then
            createESP(v)
        end
    end
end

-- Function to handle key press
local function onKeyPress(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.B then
        updateESP()
    end
end

-- Connect the input event to the onKeyPress function
UserInputService.InputBegan:Connect(onKeyPress) 