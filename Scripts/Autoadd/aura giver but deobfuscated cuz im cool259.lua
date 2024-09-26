local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Create main GUI frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = PlayerGui

-- Add corner to main frame
local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 10)
mainCorner.Parent = mainFrame

-- Add title
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0.8, 0, 0.1, 0)
titleLabel.Position = UDim2.new(0.1, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Aura Selector"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Parent = mainFrame

-- Create dropdown buttons
local auraTypeButton = Instance.new("TextButton")
auraTypeButton.Size = UDim2.new(0.8, 0, 0.1, 0)
auraTypeButton.Position = UDim2.new(0.1, 0, 0.15, 0)
auraTypeButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
auraTypeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
auraTypeButton.Text = "Select Aura Type"
auraTypeButton.TextScaled = true
auraTypeButton.Font = Enum.Font.SourceSans
auraTypeButton.Parent = mainFrame

local auraTypeCorner = Instance.new("UICorner")
auraTypeCorner.CornerRadius = UDim.new(0, 5)
auraTypeCorner.Parent = auraTypeButton

local auraTypeFrame = Instance.new("ScrollingFrame")
auraTypeFrame.Size = UDim2.new(0.8, 0, 0.4, 0)
auraTypeFrame.Position = UDim2.new(0.1, 0, 0.27, 0)
auraTypeFrame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
auraTypeFrame.Visible = false
auraTypeFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
auraTypeFrame.Parent = mainFrame

local auraTypeFrameCorner = Instance.new("UICorner")
auraTypeFrameCorner.CornerRadius = UDim.new(0, 5)
auraTypeFrameCorner.Parent = auraTypeFrame

local auraTypeLayout = Instance.new("UIListLayout")
auraTypeLayout.Parent = auraTypeFrame

-- Create second dropdown
local auraButton = Instance.new("TextButton")
auraButton.Size = UDim2.new(0.8, 0, 0.1, 0)
auraButton.Position = UDim2.new(0.1, 0, 0.7, 0)
auraButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
auraButton.TextColor3 = Color3.fromRGB(255, 255, 255)
auraButton.Text = "Select Specific Aura"
auraButton.TextScaled = true
auraButton.Font = Enum.Font.SourceSans
auraButton.Parent = mainFrame

local auraButtonCorner = Instance.new("UICorner")
auraButtonCorner.CornerRadius = UDim.new(0, 5)
auraButtonCorner.Parent = auraButton

local auraFrame = Instance.new("ScrollingFrame")
auraFrame.Size = UDim2.new(0.8, 0, 0.4, 0)
auraFrame.Position = UDim2.new(0.1, 0, 0.82, 0)
auraFrame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
auraFrame.Visible = false
auraFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
auraFrame.Parent = mainFrame

local auraFrameCorner = Instance.new("UICorner")
auraFrameCorner.CornerRadius = UDim.new(0, 5)
auraFrameCorner.Parent = auraFrame

local auraLayout = Instance.new("UIListLayout")
auraLayout.Parent = auraFrame

-- Function to update canvas size
local function updateCanvasSize(scrollingFrame, listLayout)
  local contentSize = listLayout.AbsoluteContentSize
  scrollingFrame.CanvasSize = UDim2.new(0, contentSize.X, 0, contentSize.Y)
end

-- Function to clear children
local function clearChildren(parent)
  for _, child in pairs(parent:GetChildren()) do
    if child:IsA("TextButton") then
      child:Destroy()
    end
  end
end

-- Variables to store selections
local selectedAuraType, selectedAura

-- Populate aura type dropdown
for _, auraType in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  local button = Instance.new("TextButton")
  button.Size = UDim2.new(1, 0, 0, 25)
  button.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
  button.TextColor3 = Color3.fromRGB(255, 255, 255)
  button.Text = auraType.Name
  button.TextScaled = true
  button.Font = Enum.Font.SourceSans
  button.Parent = auraTypeFrame
  
  local buttonCorner = Instance.new("UICorner")
  buttonCorner.CornerRadius = UDim.new(0, 5)
  buttonCorner.Parent = button
  
  button.MouseButton1Click:Connect(function()
    auraTypeButton.Text = auraType.Name
    auraTypeFrame.Visible = false
    selectedAuraType = auraType.Name
    updateAuraDropdown(auraType)
  end)
end

updateCanvasSize(auraTypeFrame, auraTypeLayout)

auraTypeLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
  updateCanvasSize(auraTypeFrame, auraTypeLayout)
end)

-- Toggle dropdowns
auraTypeButton.MouseButton1Click:Connect(function()
  auraTypeFrame.Visible = not auraTypeFrame.Visible
end)

auraButton.MouseButton1Click:Connect(function()
  auraFrame.Visible = not auraFrame.Visible
end)

-- Function to update aura dropdown
function updateAuraDropdown(auraType)
  clearChildren(auraFrame)
  
  for _, aura in pairs(auraType:GetChildren()) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 25)
    button.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = aura.Name
    button.TextScaled = true
    button.Font = Enum.Font.SourceSans
    button.Parent = auraFrame
    
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 5)
    buttonCorner.Parent = button
    
    button.MouseButton1Click:Connect(function()
      auraButton.Text = aura.Name
      auraFrame.Visible = false
      selectedAura = aura.Name
      local selectedAuraObject = game:GetService("ReplicatedStorage")[selectedAuraType][selectedAura]
      game:GetService("ReplicatedStorage").Remotes.AuraEquip:FireServer(selectedAuraObject)
    end)
  end
  
  updateCanvasSize(auraFrame, auraLayout)
end

auraLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
  updateCanvasSize(auraFrame, auraLayout)
end)

-- Initial population of aura type dropdown
for _, auraType in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  local button = Instance.new("TextButton")
  button.Size = UDim2.new(1, 0, 0, 25)
  button.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
  button.TextColor3 = Color3.fromRGB(255, 255, 255)
  button.Text = auraType.Name
  button.TextScaled = true
  button.Font = Enum.Font.SourceSans
  button.Parent = auraTypeFrame
  
  local buttonCorner = Instance.new("UICorner")
  buttonCorner.CornerRadius = UDim.new(0, 5)
  buttonCorner.Parent = button
  
  button.MouseButton1Click:Connect(function()
    auraTypeButton.Text = auraType.Name
    auraTypeFrame.Visible = false
    selectedAuraType = auraType.Name
    updateAuraDropdown(auraType)
  end)
end

updateCanvasSize(auraTypeFrame, auraTypeLayout)