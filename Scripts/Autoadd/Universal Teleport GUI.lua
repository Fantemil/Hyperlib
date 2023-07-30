local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "PlayerButtonsGui"
gui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 400)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
frame.BorderColor3 = Color3.fromRGB(34, 34, 34)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(0, 5, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Text = "X"
closeButton.Parent = frame

local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 20, 0, 20)
minimizeButton.Position = UDim2.new(1, -25, 0, 5)
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 102, 102)
minimizeButton.Text = "-"
minimizeButton.Parent = frame

local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, -10, 1, -30)
scrollingFrame.Position = UDim2.new(0, 5, 0, 25)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.Parent = frame
scrollingFrame.BackgroundTransparency = 1

local function teleportPlayer(targetPlayer)
    LocalPlayer.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
end

local function createButton(player)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 30)
    button.Position = UDim2.new(0, 0, 0, (#scrollingFrame:GetChildren() * 40))
    button.BackgroundColor3 = Color3.fromRGB(34, 139, 34)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.Gotham
    button.TextSize = 12
    button.Text = player.Name
    button.TextWrapped = true
    button.TextXAlignment = Enum.TextXAlignment.Left
    button.Parent = scrollingFrame

    local loopTpButton = Instance.new("TextButton")
    loopTpButton.Size = UDim2.new(0.5, -5, 1, 0)
    loopTpButton.Position = UDim2.new(0.5, 5, 0, 0)
    loopTpButton.BackgroundColor3 = Color3.fromRGB(139, 34, 34)
    loopTpButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    loopTpButton.Font = Enum.Font.Gotham
    loopTpButton.TextSize = 10
    loopTpButton.Text = "Loop TP"
    loopTpButton.TextWrapped = true
    loopTpButton.TextXAlignment = Enum.TextXAlignment.Center
    loopTpButton.Parent = button

    local isLoopTpEnabled = false
    local loopTpConnection

    loopTpButton.MouseButton1Click:Connect(function()
        if not isLoopTpEnabled then
            loopTpButton.Text = "Stop TP"
            loopTpConnection = RunService.RenderStepped:Connect(function()
                if LocalPlayer.Character and player.Character then
                    teleportPlayer(player)
                end
            end)
            isLoopTpEnabled = true
        else
            loopTpButton.Text = "Loop TP"
            loopTpConnection:Disconnect()
            isLoopTpEnabled = false
        end
    end)

    button.MouseButton1Click:Connect(function()
        if not isLoopTpEnabled then
            teleportPlayer(player)
        end
    end)
end

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        createButton(player)
    end
end

Players.PlayerAdded:Connect(function(player)
    createButton(player)
end)

Players.PlayerRemoving:Connect(function(player)
    local buttons = scrollingFrame:GetChildren()
    for _, button in ipairs(buttons) do
        if button:IsA("TextButton") and button.Text == player.Name then
            button:Destroy()
        end
    end
end)

minimizeButton.MouseButton1Click:Connect(function()
    if frame.Size == UDim2.new(0, 300, 0, 400) then
        frame.Size = UDim2.new(0, 30, 0, 30)
        minimizeButton.Text = "+"
        minimizeButton.Position = UDim2.new(1, -25, 0, 5)
    else
        frame.Size = UDim2.new(0, 300, 0, 400)
        minimizeButton.Text = "-"
        minimizeButton.Position = UDim2.new(1, -25, 0, 5)
    end
end)

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)
