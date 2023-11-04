local player = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")

local gui = Instance.new("ScreenGui")
gui.Name = "ScriptGui"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Name = "ScriptFrame"
frame.Size = UDim2.new(0, 300, 0, 175)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.6
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Name = "Title"
title.Text = "RARITY HUB V69🥶🤯😱"
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.TextColor3 = Color3.new(1, 1, 1)
title.Parent = frame

local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "ScrollingFrame"
scrollingFrame.Size = UDim2.new(1, 0, 1, -30)
scrollingFrame.Position = UDim2.new(0, 0, 0, 30)
scrollingFrame.Parent = frame

local startButton = Instance.new("TextButton")
startButton.Name = "StartButton"
startButton.Text = "Start Script"
startButton.Size = UDim2.new(0, 150, 0, 60)
startButton.Position = UDim2.new(0.5, -75, 0, 0)
startButton.Parent = scrollingFrame
startButton.BackgroundColor3 = Color3.new(193, 223, 240)

local destroyButton = Instance.new("TextButton")
destroyButton.Name = "DestroyButton"
destroyButton.Text = "Destroy GUI"
destroyButton.Size = UDim2.new(1, 0, 0, 30)
destroyButton.Position = UDim2.new(0, 0, 1, -30)
destroyButton.BackgroundColor3 = Color3.new(1, 0, 0)
destroyButton.Parent = scrollingFrame

local gamepassButton = Instance.new("TextButton")
gamepassButton.Name = "GamepassButton"
gamepassButton.Text = "Get Gamepass"
gamepassButton.Size = UDim2.new(0, 150, 0, 120)
gamepassButton.Position = UDim2.new(0.5, -75, 0.5, -15)
gamepassButton.BackgroundColor3 = Color3.new(0, 1, 0)
gamepassButton.Parent = scrollingFrame

gamepassButton.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Data.Teleporter.Value = true
end)

_G.start = false

local function toggleScript()
    _G.start = not _G.start
    startButton.Text = _G.start and "Stop Script" or "Start Script"
end

local function updateButton()
    startButton.Text = _G.start and "Stop Script" or "Start Script"
end

startButton.MouseButton1Click:Connect(toggleScript)

UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        updateButton()
    end
end)

destroyButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

while true do
    if _G.start then
        for _, v in pairs(workspace.CubeEvent.Cubes:GetChildren()) do
            if v:IsA("Part") and v.Name == "Cube" then
                if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    player.Character.HumanoidRootPart.CFrame = v.CFrame
                end
            end
        end
    end
    task.wait()
end

scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, scrollingFrame.UIListLayout.AbsoluteContentSize.Y)