bigGreenItalicText("Adding GUI Toggle for Mobile use!")
getgenv().mobiletogglestate = true
-- By pkplaysrblx

-- Instances:

getgenv().HyperlibMobileButtonGUI = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

--Properties:

getgenv().HyperlibMobileButtonGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
getgenv().HyperlibMobileButtonGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = getgenv().HyperlibMobileButtonGUI
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.102370687, 0, 0.176282048, 0)
ImageButton.Size = UDim2.new(0.0581896566, 0, 0.0865384638, 0)
ImageButton.Image = "rbxassetid://90451194349182"
getgenv().HyperlibMobileButtonGUI.ResetOnSpawn = false

UICorner.Parent = ImageButton

-- Scripts:

local function HOQTP_fake_script() -- ImageButton.LocalScript 
    local script = Instance.new('LocalScript', ImageButton)

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
coroutine.wrap(HOQTP_fake_script)()
local function UBRBZIO_fake_script() -- ImageButton.LocalScript 
    local script = Instance.new('LocalScript', ImageButton)

    local TB =  script.Parent
    
    TB.MouseButton1Down:Connect(function()
        getgenv().HyperlibLibrary:ToggleUI()
    end)
end
coroutine.wrap(UBRBZIO_fake_script)()