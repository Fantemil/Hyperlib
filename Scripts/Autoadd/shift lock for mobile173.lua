local ShiftlockStarterGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

ShiftlockStarterGui.Name = "ShiftlockStarterGui"
ShiftlockStarterGui.Parent = game.CoreGui
ShiftlockStarterGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ShiftlockStarterGui.ResetOnSpawn = false

ImageButton.Parent = ShiftlockStarterGui
ImageButton.Active = true
ImageButton.Draggable = false
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "rbxasset://textures/ui/mouseLock_off@2x.png"
ImageButton.Visible = true

local function ShiftLockScript()
    local script = Instance.new('LocalScript', ImageButton)
    local players = game:GetService("Players")
    local runservice = game:GetService("RunService")
    local player = players.LocalPlayer
    local camera = workspace.CurrentCamera
    local button = script.Parent
    local states = {
        OFF = "rbxasset://textures/ui/mouseLock_off@2x.png",
        ON = "rbxasset://textures/ui/mouseLock_on@2x.png"
    }
    local active = false

    local function UpdateImage(state)
        button.Image = states[state]
    end

    local function AlignCharacterWithCamera()
        local character = player.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            local rootPart = character.HumanoidRootPart
            local cameraCFrame = camera.CFrame
            local lookVector = cameraCFrame.LookVector
            rootPart.CFrame = CFrame.new(rootPart.Position, rootPart.Position + Vector3.new(lookVector.X, 0, lookVector.Z))
        end
    end

    local function EnableShiftlock()
        AlignCharacterWithCamera()
        UpdateImage("ON")
        if not active then
            active = runservice.RenderStepped:Connect(function()
                AlignCharacterWithCamera()
            end)
        end
    end

    local function DisableShiftlock()
        UpdateImage("OFF")
        if active then
            active:Disconnect()
            active = nil
        end
    end

    UpdateImage("OFF")

    button.MouseButton1Click:Connect(function()
        if not active then
            EnableShiftlock()
        else
            DisableShiftlock()
        end
    end)
end

ShiftLockScript()

local function PositionShiftLockButton()
    local script = Instance.new('LocalScript', ShiftlockStarterGui)
    local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local chatGui = playerGui:WaitForChild("Chat")
    local button = script.Parent:WaitForChild("ImageButton")

    local function updatePosition()
        local textBoxIcon = chatGui:FindFirstChild("TextBox") or chatGui:FindFirstChild("ChatBar")
        if textBoxIcon and textBoxIcon.AbsolutePosition then
            button.Position = UDim2.new(0, textBoxIcon.AbsolutePosition.X + textBoxIcon.AbsoluteSize.X + 10, 0, textBoxIcon.AbsolutePosition.Y)
        end
    end

    chatGui:GetPropertyChangedSignal("AbsolutePosition"):Connect(updatePosition)
    chatGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(updatePosition)
    playerGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(updatePosition)
    
    updatePosition()
end

PositionShiftLockButton()