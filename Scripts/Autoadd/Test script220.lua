local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 500)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -250)
mainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -30, 1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Fling Things and People"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Font = Enum.Font.SourceSans
titleLabel.TextSize = 18
titleLabel.Parent = titleBar

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 1, 0)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundTransparency = 1
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Font = Enum.Font.SourceSans
closeButton.TextSize = 18
closeButton.Parent = titleBar

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local sideMenu = Instance.new("Frame")
sideMenu.Size = UDim2.new(0, 120, 1, -30)
sideMenu.Position = UDim2.new(0, 0, 0, 30)
sideMenu.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
sideMenu.BorderSizePixel = 0
sideMenu.Parent = mainFrame

local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -120, 1, -30)
contentFrame.Position = UDim2.new(0, 120, 0, 30)
contentFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
contentFrame.BorderSizePixel = 0
contentFrame.Parent = mainFrame

local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
scrollingFrame.ScrollBarThickness = 5
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.Parent = contentFrame

local greySquare = Instance.new("Frame")
greySquare.Size = UDim2.new(0, 100, 0, 50)
greySquare.Position = UDim2.new(0.5, -50, 0.9, -25)
greySquare.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
greySquare.BorderSizePixel = 0
greySquare.Parent = mainFrame

local whiteCircle = Instance.new("Frame")
whiteCircle.Size = UDim2.new(0, 50, 0, 50)
whiteCircle.Position = UDim2.new(0, 0, 0, 0)
whiteCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
whiteCircle.BorderSizePixel = 0
whiteCircle.Parent = greySquare

local isActive = false

local function toggleState()
    isActive = not isActive
    local newPos = isActive and UDim2.new(1, -50, 0, 0) or UDim2.new(0, 0, 0, 0)
    local newColor = isActive and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    
    whiteCircle:TweenPosition(newPos, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, true)
    greySquare.BackgroundColor3 = newColor

    if isActive then
        enableCharacterControl()
    else
        disableCharacterControl()
    end
end

whiteCircle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        toggleState()
    end
end)

local RunService = game:GetService("RunService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local connection

function enableCharacterControl()
    connection = RunService.Stepped:Connect(function()
        if not isActive then return end

        local directions = {
            Vector3.new(1, 0, 0),
            Vector3.new(-1, 0, 0),
            Vector3.new(0, 0, 1),
            Vector3.new(0, 0, -1),
            Vector3.new(0, 1, 0),
            Vector3.new(0, -1, 0)
        }

        local maxBlocks = 0
        local maxDirection = nil

        for _, direction in ipairs(directions) do
            local raycastParams = RaycastParams.new()
            raycastParams.FilterDescendantsInstances = {character}
            raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

            local raycastResult = workspace:Raycast(rootPart.Position, rootPart.Position + direction * 5, raycastParams)
            if raycastResult then
                local numBlocks = #raycastResult.Instance:GetTouchingParts()
                if numBlocks > maxBlocks then
                    maxBlocks = numBlocks
                    maxDirection = direction
                end
            end
        end

        if maxDirection then
            humanoid:Move(maxDirection * 20)
        end
    end)
end

function disableCharacterControl()
    if connection then
        connection:Disconnect()
    end
end