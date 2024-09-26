--Made By Alexis.isback00
--Denme creditos :v
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local uis = game:GetService("UserInputService")
local tweenService = game:GetService("TweenService")

-- GUI Settings
local gui = Instance.new("ScreenGui")
gui.Parent = player.PlayerGui

local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 80, 0, 30)
openButton.Position = UDim2.new(1, -81, 0, 190)
openButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
openButton.Text = "Open GUI"
openButton.TextColor3 = Color3.new(1, 1, 1)
openButton.Parent = gui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 200, 0, 130)
mainFrame.Position = UDim2.new(0.5, -100, -1, 0)
mainFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
mainFrame.BackgroundTransparency = 0.5
mainFrame.Parent = gui
mainFrame.Visible = false

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -20, 0, 0)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Parent = mainFrame

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 150, 0, 30)
toggleButton.Position = UDim2.new(0.5, -75, 0, 10)
toggleButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
toggleButton.Text = "Hitbox/desactivar"
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.Parent = mainFrame

local expandButton = Instance.new("TextButton")
expandButton.Size = UDim2.new(0, 150, 0, 30)
expandButton.Position = UDim2.new(0.5, -75, 0, 50)
expandButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
expandButton.Text = "Expand Hitbox"
expandButton.TextColor3 = Color3.new(1, 1, 1)
expandButton.Parent = mainFrame

local decreaseButton = Instance.new("TextButton")
decreaseButton.Size = UDim2.new(0, 150, 0, 30)
decreaseButton.Position = UDim2.new(0.5, -75, 0, 90)
decreaseButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
decreaseButton.Text = "Decrease Hitbox"
decreaseButton.TextColor3 = Color3.new(1, 1, 1)
decreaseButton.Parent = mainFrame

-- Hitbox Settings
local headSize = 17
local minHeadSize = 5
local maxHeadSize = 60

-- Animation Settings
local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
local openPosition = UDim2.new(0.5, -100, 0.5, -125)
local closedPosition = UDim2.new(0.5, -100, -1, 0)

-- Script
openButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = not mainFrame.Visible

    local targetPosition = mainFrame.Visible and openPosition or closedPosition
    local tweenGoal = {}
    tweenGoal.Position = targetPosition

    local tween = tweenService:Create(mainFrame, tweenInfo, tweenGoal)
    tween:Play()
end)

closeButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
end)

local hitboxEnabled = false

toggleButton.MouseButton1Click:Connect(function()
    hitboxEnabled = not hitboxEnabled

    if hitboxEnabled then
        expandHitbox()
    else
        resetHitbox()
    end
end)

expandButton.MouseButton1Click:Connect(function()
    headSize = math.min(maxHeadSize, headSize + 5)
    expandHitbox()
end)

decreaseButton.MouseButton1Click:Connect(function()
    headSize = math.max(minHeadSize, headSize - 5)
    decreaseHitbox()
end)

function expandHitbox()
    for _, v in ipairs(game.Players:GetPlayers()) do
        if v.Name ~= player.Name then
            pcall(function()
                local character = v.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local humanoidRootPart = character.HumanoidRootPart
                    humanoidRootPart.Size = Vector3.new(headSize, headSize, headSize)
                    humanoidRootPart.Transparency = 0.7
                    humanoidRootPart.BrickColor = BrickColor.new("Bright red")
                    humanoidRootPart.Material = "Neon"
                    humanoidRootPart.CanCollide = false
                end
            end)
        end
    end
end

function decreaseHitbox()
    for _, v in ipairs(game.Players:GetPlayers()) do
        if v.Name ~= player.Name then
            pcall(function()
                local character = v.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local humanoidRootPart = character.HumanoidRootPart
                    humanoidRootPart.Size = Vector3.new(headSize, headSize, headSize)
                    humanoidRootPart.Transparency = 0.7
                    humanoidRootPart.BrickColor = BrickColor.new("Bright red")
                    humanoidRootPart.Material = "Neon"
                    humanoidRootPart.CanCollide = false
                end
            end)
        end
    end
end

function resetHitbox()
    for _, v in ipairs(game.Players:GetPlayers()) do
        if v.Name ~= player.Name then
            pcall(function()
                local character = v.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local humanoidRootPart = character.HumanoidRootPart
                    humanoidRootPart.Size = Vector3.new(headSize, headSize, headSize)
                    humanoidRootPart.Transparency = 1
                    humanoidRootPart.BrickColor = BrickColor.new("Bright red")
                    humanoidRootPart.Material = "Neon"
                    humanoidRootPart.CanCollide = false
                end
            end)
        end
    end
end

-- Update hitbox when player respawns
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if hitboxEnabled then
            expandHitbox()
        end
    end)
end)

uis.InputBegan:Connect(function(input, processed)
    if not processed then
        local delta = input.Position - mainFrame.Position
        local dragging

        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            local dragStart = input.Position
            local startPos = mainFrame.Position

            local function updateDrag(input)
                local delta = input.Position - dragStart
                mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            end

            local function stopDrag()
                dragging = false
            end

            uis.InputChanged:Connect(updateDrag)
            uis.InputEnded:Connect(stopDrag)
        end
    end
end)
