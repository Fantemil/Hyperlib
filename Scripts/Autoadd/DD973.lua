-- Script for the GUI (Place this in a LocalScript)

local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

-- Create GUI elements
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")

-- Properties of the ScreenGui
ScreenGui.Name = "k00pzguizv1"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false

-- Frame settings
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(60, 0, 90) -- Dark purple background
Frame.Position = UDim2.new(0.3, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 400, 0, 600)
Frame.Active = true
Frame.Draggable = true -- Make the GUI draggable

-- Title settings
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(80, 0, 120)
Title.Size = UDim2.new(0, 400, 0, 50)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "k00pzguiz v1"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 24

-- Create 50 buttons
local Buttons = {}

for i = 1, 50 do
    local Button = Instance.new("TextButton")
    Button.Parent = Frame
    Button.BackgroundColor3 = Color3.fromRGB(100, 0, 140) -- Button color
    Button.Size = UDim2.new(0, 100, 0, 30)
    Button.Position = UDim2.new(0, (i - 1) % 4 * 105, 0, 60 + math.floor((i - 1) / 4) * 35) -- Arrange in 4 columns
    Button.Text = "Button " .. tostring(i)
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextSize = 18
    Buttons[i] = Button
end

-- Jumpscare function
local function Jumpscare()
    local JumpscareSound = Instance.new("Sound", PlayerGui)
    JumpscareSound.SoundId = "rbxassetid://YOUR_JUMPSCARE_SOUND_ID" -- Replace with the ID of your jumpscare sound
    JumpscareSound:Play()
    
    -- Example effect: Flashing screen
    local Flash = Instance.new("Frame", ScreenGui)
    Flash.Size = UDim2.new(1, 0, 1, 0)
    Flash.BackgroundColor3 = Color3.new(1, 1, 1)
    Flash.ZIndex = 10
    Flash.Visible = true
    
    game:GetService("TweenService"):Create(Flash, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
    wait(0.2)
    Flash:Destroy()
    JumpscareSound:Destroy()
end

-- Set walk speed function
local function SetWalkSpeed(speed)
    Humanoid.WalkSpeed = speed
end

-- Set jump power function
local function SetJumpPower(power)
    Humanoid.JumpPower = power
end

-- Infinite jump function
local InfiniteJumpEnabled = false
local function EnableInfiniteJump()
    InfiniteJumpEnabled = not InfiniteJumpEnabled
    if InfiniteJumpEnabled then
        Player.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Space then
                Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
end

-- Assign button actions
Buttons[1].Text = "Jumpscare"
Buttons[1].MouseButton1Click:Connect(Jumpscare)

Buttons[2].Text = "Set WalkSpeed"
Buttons[2].MouseButton1Click:Connect(function()
    SetWalkSpeed(50) -- Change the speed here
end)

Buttons[3].Text = "Set JumpPower"
Buttons[3].MouseButton1Click:Connect(function()
    SetJumpPower(100) -- Change the jump power here
end)

Buttons[4].Text = "Infinite Jump"
Buttons[4].MouseButton1Click:Connect(EnableInfiniteJump)

-- Example of other buttons doing nothing for now
for i = 5, 50 do
    Buttons[i].MouseButton1Click:Connect(function()
        print("Button " .. i .. " clicked.")
    end)
end
