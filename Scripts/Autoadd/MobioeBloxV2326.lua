-- Gui to Lua
-- Version: 3.2

-- Instances:

print("hi robloxheck")
print(game.PlaceId)

local MobileBlox = Instance.new('ScreenGui')
local Main = Instance.new('Frame')
local TextBox = Instance.new('TextBox')
local Clear = Instance.new('TextButton')
local Execute = Instance.new('TextButton')

--Properties:

MobileBlox.Name = "MobileBloxAgain"
MobileBlox.Parent = game:WaitForChild("CoreGui")

Main.Name = "Main"
Main.Parent = MobileBlox
Main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Main.Position = UDim2.new(0.318584085, 0, 0.197959185, 0)
Main.Size = UDim2.new(0, 492, 0, 282)

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TextBox.Position = UDim2.new(0.0375582054, 0, 0.0874655992, 0)
TextBox.Size = UDim2.new(0, 450, 0, 195)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Ubuntu
TextBox.MultiLine = true
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(186, 186, 186)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

Clear.Name = "Clear"
Clear.Parent = Main
Clear.BackgroundColor3 = Color3.fromRGB(144, 0, 0)
Clear.Position = UDim2.new(0.544715464, 0, 0.822695017, 0)
Clear.Size = UDim2.new(0, 200, 0, 50)
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(0, 0, 0)
Clear.TextScaled = true
Clear.TextSize = 14.000
Clear.TextWrapped = true

Execute.Name = "Execute"
Execute.Parent = Main
Execute.BackgroundColor3 = Color3.fromRGB(63, 190, 93)
Execute.Position = UDim2.new(0.0365853645, 0, 0.822695017, 0)
Execute.Size = UDim2.new(0, 200, 0, 50)
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(0, 0, 0)
Execute.TextScaled = true
Execute.TextSize = 14.000
Execute.TextWrapped = true

-- Scripts:

local function BGWS_fake_script() -- Main.DragScript
    local script = Instance.new('LocalScript', Main)

    --Not made by me, check out this video: https://www.youtube.com/watch?v=z25nyNBG7Js&t=22s
    --Put this inside of your Frame and configure the speed if you would like.
    --Enjoy! Credits go to: https://www.youtube.com/watch?v=z25nyNBG7Js&t=22s

    local UIS = game:GetService('UserInputService')
    local frame = script.Parent
    local dragToggle = nil
    local dragSpeed = 0.25
    local dragStart = nil
    local startPos = nil

    local function updateInput(input)
        local delta = input.Position - dragStart
        local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
    end

    frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            dragToggle = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if dragToggle then
                updateInput(input)
            end
        end
    end)

end
coroutine.wrap(BGWS_fake_script)()
local function NBUT_fake_script() -- Clear.LocalScript
    local script = Instance.new('LocalScript', Clear)

    local box = script.Parent.Parent.TextBox
    local btn = script.Parent

    btn.MouseButton1Click:Connect(function()
        box.Text = "";
    end)
end
coroutine.wrap(NBUT_fake_script)()
local function OBDPHLQ_fake_script() -- Execute.LocalScript
    local script = Instance.new('LocalScript', Execute)

    local box = script.Parent.Parent.TextBox
    local btn = script.Parent

    btn.MouseButton1Click:Connect(function()
        mb_schedscript(box.Text)
    end)
end
coroutine.wrap(OBDPHLQ_fake_script)()

print("hey robloxheck")