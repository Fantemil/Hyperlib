-- Create ScreenGui
local coreGui = game:GetService("CoreGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = coreGui
screenGui.Name = "Brutal 1.0"  -- Updated name

-- Create Main Frame (Rectangle with Smooth Edges)
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 320, 0, 350)  -- Smaller size for the GUI
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -175)  -- Adjusted for the new size
mainFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Parent = screenGui

-- Add Rounded Corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)  -- Smaller corner radius for a compact look
corner.Parent = mainFrame

-- Create Scrolling Frame for Mobile Scrolling
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, -20, 1, -50)  -- Adjusted size to fit within mainFrame
scrollingFrame.Position = UDim2.new(0, 10, 0, 30) -- Positioned below the title
scrollingFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
scrollingFrame.ScrollBarThickness = 8
scrollingFrame.Parent = mainFrame

-- Add Rounded Corners to Scrolling Frame
local scrollingCorner = Instance.new("UICorner")
scrollingCorner.CornerRadius = UDim.new(0, 10)
scrollingCorner.Parent = scrollingFrame

-- Create Brutal Tool Text
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -20, 0, 30)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.Text = "Brutal 1.0"  -- Updated title
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 20
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = mainFrame

-- Create Buttons
local buttonNames = {
    "Cokka Hub",
    "Keyboard Script",
    "Old Mukuro",
    "Org Hub",
    "Demon Hub",
    "Ice Hub",
    "Syrex Hub",
    "Frost Hub",
    "Fluxus Visibility",
    "Tool For Limiteds",
    "Glitch Script",
    "Chat Bypasser",
    "Redz Hub",
    "Hyper Hub",
    "Lunar Hub",
    "Kee V2",
}

local buttonScripts = {
    "https://raw.githubusercontent.com/UserDevEthical/Loadstring/main/CokkaHub.lua",
    "https://raw.githubusercontent.com/FreezyWare/Roblox/main/utility/Keyboard.lua",
    "https://raw.githubusercontent.com/xQuartyx/DonateMe/main/OldBf",
    "https://raw.githubusercontent.com/ORG-hubb/ORG/main/output.lua",
    "https://raw.githubusercontent.com/RobloxProjectX/Keyless-Blox-Fruits-Script/main/Demon%20V4.lua",
    "https://raw.githubusercontent.com/IceMae17/NewIceHub/main/Brookhaven",
    "https://syrexhub.netlify.app/raw/syrexhub",
    "https://raw.githubusercontent.com/Frostrunsyou/Bloxfruits/main/Bloxfruits",
    "https://raw.githubusercontent.com/JustAScripts/Fluxus/main/Visibility/Toggle.lua",
    "https://raw.githubusercontent.com/JustAScripts/UniversalScript/Ikura/StopExploting",
    "https://raw.githubusercontent.com/0Ben1/fe/main/obf_11l7Y131YqJjZ31QmV5L8pI23V02b3191sEg26E75472Wl78Vi8870jRv5txZyL1.lua.txt",
    "https://raw.githubusercontent.com/1price/usercreation/main/UserCreation.lua",
    "https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999",
    "https://raw.githubusercontent.com/2133121233/Hyper_Hub/main/menu.lua",
    "https://raw.githubusercontent.com/GrandmasterOfLife123/lua/main/lunarhub.lua",
    "https://raw.githubusercontent.com/RobloxProjectX/Keyless-Blox-Fruits-Script/main/Kee%20V2",
}

local buttonHeight = 30
local buttonSpacing = 9
local totalHeight = #buttonNames * (buttonHeight + buttonSpacing) + buttonHeight -- Total height for all buttons and spacing

scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, totalHeight)

for i, name in ipairs(buttonNames) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 280, 0, buttonHeight)
    button.Position = UDim2.new(0, 10, 0, (i - 1) * (buttonHeight + buttonSpacing))
    button.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Text = name
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scrollingFrame

    -- Add Rounded Corners to Buttons
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 8)
    buttonCorner.Parent = button

    button.MouseButton1Click:Connect(function()
        local scriptToLoad
        local success, errorMessage = pcall(function()
            scriptToLoad = game:HttpGet(buttonScripts[i], true)
        end)
        if success then
            local executeScript = loadstring(scriptToLoad)
            if executeScript then
                pcall(executeScript)
            else
                warn("Failed to load script for button: " .. name)
            end
        else
            warn("Failed to fetch script: " .. errorMessage)
        end
    end)
end

-- Create Close Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 280, 0, buttonHeight)
closeButton.Position = UDim2.new(0, 10, 0, #buttonNames * (buttonHeight + buttonSpacing))
closeButton.BackgroundColor3 = Color3.new(0.5, 0, 0)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Text = "Close GUI"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.Parent = scrollingFrame

-- Add Rounded Corners to Close Button
local closeButtonCorner = Instance.new("UICorner")
closeButtonCorner.CornerRadius = UDim.new(0, 8)
closeButtonCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Smooth Dragging Functionality
local dragging = false
local dragInput, startPos, framePos

local function startDrag(input)
    dragging = true
    startPos = input.Position
    framePos = mainFrame.Position
    input.Changed:Connect(function()
        if input.UserInputState == Enum.UserInputState.End then
            dragging = false
        end
    end)
end

local function updateDrag(input)
    if dragging then
        local delta = input.Position - startPos
        mainFrame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
    end
end

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        startDrag(input)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput then
        updateDrag(input)
    end
end)
