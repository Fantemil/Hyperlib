local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local tools = {}

for _, tool in ipairs(game:GetDescendants()) do
    if tool:IsA("Tool") then
        table.insert(tools, tool)
    end
end

local screenGui = Instance.new("ScreenGui", playerGui)
local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 290, 0, #tools * 50 + 60)
frame.Position = UDim2.new(0.5, -145, 0.5, -((#tools * 50 + 60) / 2))
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Active = true
frame.Draggable = true

local isMinimized = false

local toggleButton = Instance.new("TextButton", frame)
toggleButton.Size = UDim2.new(1, 0, 0, 30)
toggleButton.Position = UDim2.new(0, 0, 0, 0)
toggleButton.Text = "Minimizar"
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)

local toolContainer = Instance.new("Frame", frame)
toolContainer.Size = UDim2.new(1, 0, 1, -30)
toolContainer.Position = UDim2.new(0, 0, 0, 30)
toolContainer.BackgroundTransparency = 1

local function toggleFrame()
    if isMinimized then
        toolContainer.Visible = true
        frame.Size = UDim2.new(0, 290, 0, #tools * 50 + 60)
        toggleButton.Text = "Minimizar"
    else
        toolContainer.Visible = false
        frame.Size = UDim2.new(0, 290, 0, 30)
        toggleButton.Text = "Maximizar"
    end
    isMinimized = not isMinimized
end

toggleButton.MouseButton1Click:Connect(toggleFrame)

for i, tool in ipairs(tools) do
    local toolFrame = Instance.new("Frame", toolContainer)
    toolFrame.Size = UDim2.new(1, -10, 0, 50)
    toolFrame.Position = UDim2.new(0, 5, 0, (i - 1) * 50 + 5)
    toolFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    
    local toolName = Instance.new("TextLabel", toolFrame)
    toolName.Size = UDim2.new(0.6, 0, 1, 0)
    toolName.Position = UDim2.new(0, 0, 0, 0)
    toolName.Text = tool.Name
    toolName.TextColor3 = Color3.new(1, 1, 1)
    toolName.BackgroundTransparency = 1

    local getButton = Instance.new("TextButton", toolFrame)
    getButton.Size = UDim2.new(0.4, 0, 1, 0)
    getButton.Position = UDim2.new(0.6, 0, 0, 0)
    getButton.Text = "Obter"
    getButton.TextColor3 = Color3.new(1, 1, 1)
    getButton.BackgroundColor3 = Color3.new(0, 0.5, 0)

    getButton.MouseButton1Click:Connect(function()
        if tool:IsDescendantOf(game.Workspace) then
            player.Character.HumanoidRootPart.CFrame = tool.Handle.CFrame
        else
            local clonedTool = tool:Clone()
            clonedTool.Parent = player.Backpack
        end
    end)
end
