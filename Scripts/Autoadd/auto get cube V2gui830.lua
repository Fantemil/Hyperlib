local player = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")

local gui = Instance.new("ScreenGui")
gui.Name = "ScriptGui"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Name = "ScriptFrame"
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Name = "Title"
title.Text = "AUTO GET CUBE V2😱"
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.TextColor3 = Color3.new(1, 1, 1)
title.Parent = frame

local startButton = Instance.new("TextButton")
startButton.Name = "StartButton"
startButton.Text = "Start Script"
startButton.Size = UDim2.new(0, 150, 0, 50)
startButton.Position = UDim2.new(0.5, -75, 0.6, -25)
startButton.Parent = frame

local destroyButton = Instance.new("TextButton")
destroyButton.Name = "DestroyButton"
destroyButton.Text = "Destroy GUI"
destroyButton.Size = UDim2.new(0, 150, 0, 30)
destroyButton.Position = UDim2.new(0.5, -75, 1.1, -15)
destroyButton.BackgroundColor3 = Color3.new(1, 0, 0)
destroyButton.TextColor3 = Color3.new(1, 1, 1)
destroyButton.Parent = frame

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