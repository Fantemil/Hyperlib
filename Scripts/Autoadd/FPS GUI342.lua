local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")

local colors = {
    Color3.fromRGB(255, 0, 0), 
    Color3.fromRGB(255, 165, 0), 
    Color3.fromRGB(255, 255, 0), 
    Color3.fromRGB(0, 128, 0), 
    Color3.fromRGB(0, 0, 255), 
    Color3.fromRGB(75, 0, 130), 
    Color3.fromRGB(238, 130, 238)
}
local colorIndex = 1

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")

local fpsLabel = Instance.new("BillboardGui")
fpsLabel.Parent = head
fpsLabel.Size = UDim2.new(0, 100, 0, 50)
fpsLabel.StudsOffset = Vector3.new(0, 2, 0)

local fpsTextLabel = Instance.new("TextLabel")
fpsTextLabel.Parent = fpsLabel
fpsTextLabel.Size = UDim2.new(1, 0, 1, 0)
fpsTextLabel.TextColor3 = Color3.new(1, 1, 1)
fpsTextLabel.BackgroundTransparency = 1
fpsTextLabel.TextScaled = true

local function formatFPS(fps)
    return string.format("%d FPS", math.floor(fps + 0.5))
end

local lastFrameTime = tick()
local frameCount = 0

RunService.RenderStepped:Connect(function()
    local currentTime = tick()
    frameCount += 1
    if currentTime - lastFrameTime >= 1 then
        local fps = frameCount / (currentTime - lastFrameTime)
        fpsTextLabel.Text = formatFPS(fps)
        frameCount = 0
        lastFrameTime = currentTime
    end
end)

UserInputService.InputBegan:Connect(function(inputObject)
    if inputObject.KeyCode == Enum.KeyCode.F then
        fpsLabel.Enabled = not fpsLabel.Enabled
    end
end)

StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

while true do
    fpsTextLabel.TextColor3 = colors[colorIndex]
    colorIndex = colorIndex % #colors + 1
    wait(0.10)
end

--open source