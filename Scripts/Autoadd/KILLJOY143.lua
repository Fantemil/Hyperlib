-- Fancy Minimalistic Fullbright + NPC Resize with Moveable, Minimizable Red/Black GUI for Roblox
-- WARNING: Use at your own risk!

local lighting = game:GetService("Lighting")
local RunService = game:GetService('RunService')
local Players = game:GetService('Players')
local Workspace = game:GetService('Workspace')

-- Default Settings
_G.HeadSize = 10
_G.FullbrightEnabled = false
_G.NPCResizeEnabled = false
_G.FogDisabled = false

-- Create the GUI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local DragHandle = Instance.new("TextLabel")
local MinimizeButton = Instance.new("TextButton")
local FullbrightButton = Instance.new("TextButton")
local ResizeButton = Instance.new("TextButton")
local HeadSizeInput = Instance.new("TextBox")
local HeadSizeLabel = Instance.new("TextLabel")
local FogButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

-- Main Frame Settings (Container)
MainFrame.Size = UDim2.new(0, 250, 0, 240)
MainFrame.Position = UDim2.new(0, 100, 0, 100)
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Solid black
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- Drag Handle (Title Bar) Settings
DragHandle.Size = UDim2.new(1, -30, 0, 30) -- Adjust width for Minimize Button
DragHandle.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Solid red
DragHandle.BorderSizePixel = 0
DragHandle.Text = "Control Panel"
DragHandle.TextColor3 = Color3.fromRGB(255, 255, 255)
DragHandle.Font = Enum.Font.Gotham
DragHandle.TextSize = 18
DragHandle.Parent = MainFrame

-- Minimize Button
MinimizeButton.Size = UDim2.new(0, 30, 0, 30)
MinimizeButton.Position = UDim2.new(1, -30, 0, 0) -- Position at the right end of the title bar
MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Solid red
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.Font = Enum.Font.Gotham
MinimizeButton.TextSize = 18
MinimizeButton.Parent = MainFrame

-- Fullbright Button Settings
FullbrightButton.Size = UDim2.new(1, -20, 0, 40)
FullbrightButton.Position = UDim2.new(0, 10, 0, 40)
FullbrightButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red
FullbrightButton.Text = "Enable Fullbright"
FullbrightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FullbrightButton.Font = Enum.Font.Gotham
FullbrightButton.TextSize = 16
FullbrightButton.Parent = MainFrame

-- Resize NPC Button Settings
ResizeButton.Size = UDim2.new(1, -20, 0, 40)
ResizeButton.Position = UDim2.new(0, 10, 0, 90)
ResizeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red
ResizeButton.Text = "Enable NPC Resize"
ResizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ResizeButton.Font = Enum.Font.Gotham
ResizeButton.TextSize = 16
ResizeButton.Parent = MainFrame

-- Fog Button Settings (New)
FogButton.Size = UDim2.new(1, -20, 0, 40)
FogButton.Position = UDim2.new(0, 10, 0, 140)
FogButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red
FogButton.Text = "Disable Fog"
FogButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FogButton.Font = Enum.Font.Gotham
FogButton.TextSize = 16
FogButton.Parent = MainFrame

-- Head Size Label Settings
HeadSizeLabel.Size = UDim2.new(1, -20, 0, 30)
HeadSizeLabel.Position = UDim2.new(0, 10, 0, 190)
HeadSizeLabel.BackgroundTransparency = 1
HeadSizeLabel.Text = "Head Size: 10"
HeadSizeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
HeadSizeLabel.Font = Enum.Font.Gotham
HeadSizeLabel.TextSize = 14
HeadSizeLabel.Parent = MainFrame

-- Head Size Input Box
HeadSizeInput.Size = UDim2.new(1, -20, 0, 30)
HeadSizeInput.Position = UDim2.new(0, 10, 0, 220)
HeadSizeInput.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red
HeadSizeInput.PlaceholderText = "Enter Head Size"
HeadSizeInput.Text = ""
HeadSizeInput.TextColor3 = Color3.fromRGB(255, 255, 255)
HeadSizeInput.Font = Enum.Font.Gotham
HeadSizeInput.TextSize = 14
HeadSizeInput.Parent = MainFrame

-- Minimize functionality
local isMinimized = false

MinimizeButton.MouseButton1Click:Connect(function()
    if isMinimized then
        MainFrame.Size = UDim2.new(0, 250, 0, 240) -- Restore to full size
        MinimizeButton.Text = "-"
    else
        MainFrame.Size = UDim2.new(0, 250, 0, 30) -- Minimized to title bar only
        MinimizeButton.Text = "+"
    end
    isMinimized = not isMinimized
end)

-- Function to enable Fullbright
local function enableFullbright()
    lighting.Brightness = 2
    lighting.Ambient = Color3.new(1, 1, 1)
    lighting.OutdoorAmbient = Color3.new(1, 1, 1)
    lighting.ClockTime = 12 -- Noon lighting
end

-- Function to disable Fullbright (reset to original)
local function disableFullbright()
    lighting.Brightness = 1
    lighting.Ambient = Color3.new(0, 0, 0)
    lighting.OutdoorAmbient = Color3.new(0, 0, 0)
    lighting.ClockTime = 14 -- Afternoon lighting
end

-- Remove fog (Disable Atmosphere objects)
local function removeFog()
    for _, obj in pairs(lighting:GetChildren()) do
        if obj:IsA("Atmosphere") then
            obj:Destroy()
        end
    end
end

-- Function to restore fog (if needed)
local function restoreFog()
    local atmosphere = Instance.new("Atmosphere", lighting)
    atmosphere.Density = 0.3
    atmosphere.Offset = 0
    atmosphere.Color = Color3.fromRGB(199, 199, 199)
    atmosphere.Decay = Color3.fromRGB(106, 106, 106)
end

-- NPC Update Functions
local function updateNPC(npc)
    if npc:FindFirstChildOfClass('Humanoid') and not Players:GetPlayerFromCharacter(npc) then
        pcall(function()
            local rootPart = npc:FindFirstChild('HumanoidRootPart')
            if rootPart then
                rootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                rootPart.Transparency = 0.7
                rootPart.BrickColor = BrickColor.new("Really blue")
                rootPart.Material = "Neon"
                rootPart.CanCollide = false
            end
        end)
    end
end

-- Function to monitor new NPC spawns
local function monitorNewNPCs()
    Workspace.ChildAdded:Connect(function(child)
        if _G.NPCResizeEnabled then
            updateNPC(child)
        end
    end)
end

-- Function to update all existing NPCs
local function updateAllNPCs()
    for _, npc in ipairs(Workspace:GetDescendants()) do
        if _G.NPCResizeEnabled then
            updateNPC(npc)
        end
    end
end

-- Fullbright Button Click Event
FullbrightButton.MouseButton1Click:Connect(function()
    _G.FullbrightEnabled = not _G.FullbrightEnabled
    if _G.FullbrightEnabled then
        enableFullbright()
        FullbrightButton.Text = "Disable Fullbright"
    else
        disableFullbright()
        FullbrightButton.Text = "Enable Fullbright"
    end
end)

-- NPC Resize Button Click Event
ResizeButton.MouseButton1Click:Connect(function()
    _G.NPCResizeEnabled = not _G.NPCResizeEnabled
    if _G.NPCResizeEnabled then
        ResizeButton.Text = "Disable NPC Resize"
        updateAllNPCs() -- Call this immediately
    else
        ResizeButton.Text = "Enable NPC Resize"
    end
end)

-- Fog Button Click Event
FogButton.MouseButton1Click:Connect(function()
    _G.FogDisabled = not _G.FogDisabled
    if _G.FogDisabled then
        removeFog()
        FogButton.Text = "Enable Fog"
    else
        restoreFog()
        FogButton.Text = "Disable Fog"
    end
end)

-- Head Size Input Box Event
HeadSizeInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local input = tonumber(HeadSizeInput.Text)
        if input and input > 0 then
            _G.HeadSize = input
            HeadSizeLabel.Text = "Head Size: " .. _G.HeadSize
        end
    end
end)

-- Timer for updating NPCs every 5 seconds
local timer = 0
RunService.Heartbeat:Connect(function(deltaTime)
    timer = timer + deltaTime
    if timer >= 5 then
        if _G.NPCResizeEnabled then
            updateAllNPCs()
        end
        timer = 0 -- Reset the timer
    end
end)

-- Initialize NPC monitor for new spawns
monitorNewNPCs()
