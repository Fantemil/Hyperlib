--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- File path: /mnt/data/readme.md

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local function createButton(name, position, size, parent, scriptToExecute)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Text = name
    button.Position = position
    button.Size = size
    button.Parent = parent
    button.ZIndex = 10  -- Ensure it overlays other GUIs
    button.BackgroundColor3 = Color3.fromRGB(255, 170, 0)  -- Button color
    button.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Text color
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 24

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 10)
    uicorner.Parent = button

    local uistroke = Instance.new("UIStroke")
    uistroke.Color = Color3.fromRGB(0, 0, 0)
    uistroke.Thickness = 2
    uistroke.Parent = button

    local dragging = false
    local dragInput, mousePos, framePos

    button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            mousePos = input.Position
            framePos = button.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    button.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - mousePos
            button.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
        end
    end)

    button.MouseButton1Click:Connect(function()
        local success, err = pcall(function()
            loadstring(scriptToExecute)()
        end)
        if not success then
            warn("Error executing script for button " .. name .. ": " .. err)
        end
    end)
end

local function createToggleButton(name, position, size, parent, targetGui, isCloseButton)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Text = name
    button.Position = position
    button.Size = size
    button.Parent = parent
    button.ZIndex = 10  -- Ensure it overlays other GUIs
    button.BackgroundColor3 = Color3.fromRGB(255, 170, 0)  -- Button color
    button.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Text color
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 24

    if isCloseButton then
        button.Text = "X"
        button.TextSize = 36
    end

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 10)
    uicorner.Parent = button

    local uistroke = Instance.new("UIStroke")
    uistroke.Color = Color3.fromRGB(0, 0, 0)
    uistroke.Thickness = 2
    uistroke.Parent = button

    button.MouseButton1Click:Connect(function()
        targetGui.Visible = not targetGui.Visible
    end)
end

local function createShowButton(name, position, size, parent, targetGui)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Text = name
    button.Position = position
    button.Size = size
    button.Parent = parent
    button.ZIndex = 10
    button.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 24

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 10)
    uicorner.Parent = button

    local uistroke = Instance.new("UIStroke")
    uistroke.Color = Color3.fromRGB(0, 0, 0)
    uistroke.Thickness = 2
    uistroke.Parent = button

    button.MouseButton1Click:Connect(function()
        targetGui.Visible = true
    end)
end

local sadesHubScript = [[
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b48cfd65afefb21067deeed90cfb382c.lua"))()
    setClipboard("https://discord.com/invite/getsades")
    print('Sades Hub script executed!')
]]

local atomiusScript = [[
    loadstring(game:HttpGet("https://master.atomic48.xyz/Src/Free.lua"))()
    setClipboard("https://discord.com/invite/atomicals")
    print('Atomius script executed!')
]]

local noneScript = [[
    -- Your NONE script here
    print('NONE script executed!')
]]

local buttonGui = Instance.new("Frame")
buttonGui.Size = UDim2.new(0.5, 0, 0.6, 0)
buttonGui.Position = UDim2.new(0.25, 0, 0.2, 0)
buttonGui.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
buttonGui.ZIndex = 10
buttonGui.Parent = screenGui

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 15)
uicorner.Parent = buttonGui

local uistroke = Instance.new("UIStroke")
uistroke.Color = Color3.fromRGB(255, 170, 0)
uistroke.Thickness = 3
uistroke.Parent = buttonGui

createButton("Sades Hub", UDim2.new(0.1, 0, 0.1, 0), UDim2.new(0.8, 0, 0.1, 0), buttonGui, sadesHubScript)
createButton("Atomius", UDim2.new(0.1, 0, 0.3, 0), UDim2.new(0.8, 0, 0.1, 0), buttonGui, atomiusScript)
createButton("NONE", UDim2.new(0.1, 0, 0.5, 0), UDim2.new(0.8, 0, 0.1, 0), buttonGui, noneScript)

createToggleButton("X", UDim2.new(1, -50, 0, 10), UDim2.new(0, 40, 0, 40), buttonGui, buttonGui, true)
createShowButton("Show", UDim2.new(0.45, 0, 0.9, 0), UDim2.new(0.1, 0, 0.05, 0), screenGui, buttonGui)