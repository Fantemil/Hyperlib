local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")
local workspace = game:GetService("Workspace")
local teleportGameId = "4924922222"
local currentGameId = tostring(game.PlaceId)

local function createMessageGui(message, onYes, onNo)
    local messageGui = Instance.new("ScreenGui")
    messageGui.Parent = playerGui
    messageGui.Name = "MessageGUI"

    local frame = Instance.new("Frame")
    frame.Parent = messageGui
    frame.Position = UDim2.new(0.5, -150, 0.5, -100)
    frame.Size = UDim2.new(0, 300, 0, 200)
    frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    frame.BorderSizePixel = 0
    frame.Active = true
    frame.Draggable = true

    local uiCorner = Instance.new("UICorner")
    uiCorner.Parent = frame
    uiCorner.CornerRadius = UDim.new(0, 15)

    local stroke = Instance.new("UIStroke")
    stroke.Parent = frame
    stroke.Thickness = 4
    stroke.Color = Color3.fromRGB(255, 255, 0)

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Parent = frame
    titleLabel.Size = UDim2.new(1, 0, 0, 50)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = message
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextScaled = true
    titleLabel.Font = Enum.Font.GothamBold

    local yesButton = Instance.new("TextButton")
    yesButton.Parent = frame
    yesButton.Size = UDim2.new(0, 120, 0, 50)
    yesButton.Position = UDim2.new(0, 10, 0, 70)
    yesButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    yesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    yesButton.Text = "Yes"
    yesButton.Font = Enum.Font.GothamBold
    yesButton.TextScaled = true

    local noButton = Instance.new("TextButton")
    noButton.Parent = frame
    noButton.Size = UDim2.new(0, 120, 0, 50)
    noButton.Position = UDim2.new(0, 160, 0, 70)
    noButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    noButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    noButton.Text = "No"
    noButton.Font = Enum.Font.GothamBold
    noButton.TextScaled = true

    yesButton.MouseButton1Click:Connect(function()
        onYes()
        messageGui:Destroy()
    end)

    noButton.MouseButton1Click:Connect(function()
        onNo()
        messageGui:Destroy()
    end)
end

local function teleportToBrookhaven()
    local teleportService = game:GetService("TeleportService")
    teleportService:Teleport(teleportGameId, localPlayer)
end

if currentGameId ~= teleportGameId then
    createMessageGui("Want to teleport to Brookhaven ð¡RP?", teleportToBrookhaven, function() end)
    return 
end

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
screenGui.Name = "TeleportGUI"

local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Position = UDim2.new(0.5, -150, 0.5, -125)
frame.Size = UDim2.new(0, 300, 0, 200)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Visible = true

local uiCorner = Instance.new("UICorner")
uiCorner.Parent = frame
uiCorner.CornerRadius = UDim.new(0, 15)

local stroke = Instance.new("UIStroke")
stroke.Parent = frame
stroke.Thickness = 4
stroke.Color = Color3.fromRGB(255, 255, 0)

local titleLabel = Instance.new("TextLabel")
titleLabel.Parent = frame
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Find the Eggy!"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.GothamBold

local finalPosition = Vector3.new(-68.918, 5.650, 62.135)

local function collectEggy(eggy)
    if eggy and eggy:IsA("BasePart") and eggy.Name == "Eggy" then
        eggy:Destroy()
    end
end

local function teleportToEggies()
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local hrp = character:WaitForChild("HumanoidRootPart")

    humanoid.Sit = true

    local eggyPositions = {}

    local function findEggyParts(parent)
        for _, child in ipairs(parent:GetChildren()) do
            if child:IsA("BasePart") and child.Name == "Eggy" and child.Transparency == 0 then
                table.insert(eggyPositions, child)
            elseif child:IsA("Model") or child:IsA("Folder") then
                findEggyParts(child)
            end
        end
    end

    findEggyParts(workspace)

    if #eggyPositions == 0 then
        local messageLabel = Instance.new("TextLabel")
        messageLabel.Parent = frame
        messageLabel.Size = UDim2.new(1, 0, 0, 50)
        messageLabel.Position = UDim2.new(0, 0, 0, 100)
        messageLabel.BackgroundTransparency = 1
        messageLabel.Text = "Select a Mode First"
        messageLabel.TextColor3 = Color3.fromRGB(255, 0, 0) 
        messageLabel.TextScaled = true
        messageLabel.Font = Enum.Font.GothamBold
        
        wait(2) 
        messageLabel:Destroy() 

        hrp.CFrame = CFrame.new(finalPosition)
        return
    end

    for _, eggy in ipairs(eggyPositions) do
        local standPart = Instance.new("Part")
        standPart.Size = Vector3.new(2, 1, 2)
        standPart.Position = hrp.Position - Vector3.new(0, 2, 0)
        standPart.Anchored = true
        standPart.CanCollide = true
        standPart.Parent = workspace

        hrp.CFrame = eggy.CFrame
        wait(1) 
        collectEggy(eggy) 

        standPart:Destroy() 
    end

    hrp.CFrame = CFrame.new(finalPosition)
    humanoid.Sit = false
end

local startButton = Instance.new("TextButton")
startButton.Parent = frame
startButton.Size = UDim2.new(0, 280, 0, 50)
startButton.Position = UDim2.new(0, 10, 0, 60)
startButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
startButton.TextColor3 = Color3.fromRGB(255, 255, 255)
startButton.Text = "Start Collecting"
startButton.Font = Enum.Font.GothamBold
startButton.TextScaled = true

local buttonCorner = Instance.new("UICorner")
buttonCorner.Parent = startButton
buttonCorner.CornerRadius = UDim.new(0, 10)

startButton.MouseButton1Click:Connect(function()
    teleportToEggies()
end)

local instructionFrame = Instance.new("Frame")
instructionFrame.Parent = screenGui
instructionFrame.Size = UDim2.new(0, 250, 0, 50)
instructionFrame.Position = UDim2.new(0.5, -125, 0.5, 60)
instructionFrame.BackgroundColor3 = Color3.fromRGB(0, 153, 255)
instructionFrame.BorderSizePixel = 0
instructionFrame.BackgroundTransparency = 0.8

local instructionCorner = Instance.new("UICorner")
instructionCorner.Parent = instructionFrame
instructionCorner.CornerRadius = UDim.new(0, 15)

local instructionLabel = Instance.new("TextLabel")
instructionLabel.Parent = instructionFrame
instructionLabel.Size = UDim2.new(1, 0, 1, 0)
instructionLabel.BackgroundTransparency = 1
instructionLabel.Text = "Press CTRL to Open/Close the GUI!"
instructionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
instructionLabel.TextScaled = true
instructionLabel.Font = Enum.Font.GothamBold

local function slideInstructionFrame()
    instructionFrame:TweenPosition(UDim2.new(0.5, -125, 0.5, 60), "Out", "Sine", 0.5, true)
    wait(3)
    instructionFrame:TweenPosition(UDim2.new(1, 0, 0.5, 60), "Out", "Sine", 0.5, true)
end

local function toggleTeleportGUI()
    frame.Visible = not frame.Visible
end

local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.LeftControl and not gameProcessedEvent then
        toggleTeleportGUI()
    end
end)

slideInstructionFrame()
screenGui.Enabled = true
