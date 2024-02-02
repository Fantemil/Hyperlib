-- Gui to Lua
-- Version: 3.2

-- Instances:

local _7 = Instance.new("ScreenGui")
local Window = Instance.new("Frame")
local main = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextBox = Instance.new("TextBox")
local exe = Instance.new("TextButton")
local clear = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local exit = Instance.new("TextButton")
local windowbut = Instance.new("TextButton")
local minimize = Instance.new("TextButton")

--Properties:

_7.Name = "7"
_7.Parent = game.CoreGui
_7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Window.Name = "Window"
Window.Parent = _7
Window.BackgroundColor3 = Color3.fromRGB(243, 243, 243)
Window.BorderColor3 = Color3.fromRGB(0, 0, 0)
Window.BorderSizePixel = 0
Window.Position = UDim2.new(0.0730263144, 0, 0.0577596277, 0)
Window.Size = UDim2.new(0, 459, 0, 482)

main.Name = "main"
main.Parent = Window
main.BackgroundColor3 = Color3.fromRGB(239, 239, 239)
main.BorderColor3 = Color3.fromRGB(206, 206, 206)
main.Position = UDim2.new(0.0370370373, 0, 0.0684646964, 0)
main.Size = UDim2.new(0, 425, 0, 428)

ScrollingFrame.Parent = main
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BorderColor3 = Color3.fromRGB(206, 206, 206)
ScrollingFrame.Size = UDim2.new(0, 424, 0, 402)

TextBox.Parent = ScrollingFrame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(0, 412, 0, 851)
TextBox.Font = Enum.Font.Arial
TextBox.MultiLine = true
TextBox.Text = "Script created by C00LKid/YourIocaIC00Ikid"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

exe.Name = "exe"
exe.Parent = main
exe.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
exe.BorderColor3 = Color3.fromRGB(206, 206, 206)
exe.Position = UDim2.new(0, 0, 0.939252317, 0)
exe.Size = UDim2.new(0, 110, 0, 26)
exe.Font = Enum.Font.Arial
exe.Text = "Execute Script"
exe.TextColor3 = Color3.fromRGB(0, 0, 0)
exe.TextSize = 12.000
exe.TextWrapped = true
exe.MouseButton1Down:connect(function()
    loadstring(TextBox.Text)()
end)

clear.Name = "clear"
clear.Parent = main
clear.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
clear.BorderColor3 = Color3.fromRGB(206, 206, 206)
clear.Position = UDim2.new(0.741176486, 0, 0.939252317, 0)
clear.Size = UDim2.new(0, 110, 0, 26)
clear.Font = Enum.Font.Arial
clear.Text = "Clear"
clear.TextColor3 = Color3.fromRGB(0, 0, 0)
clear.TextSize = 12.000
clear.MouseButton1Down:connect(function()
    TextBox.Text = " "
end)

title.Name = "title"
title.Parent = Window
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.281045765, 0, 0, 0)
title.Size = UDim2.new(0, 200, 0, 33)
title.Font = Enum.Font.Arial
title.Text = "c00lsploit"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 16.000

exit.Name = "exit"
exit.Parent = Window
exit.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
exit.BorderSizePixel = 0
exit.Position = UDim2.new(0.827886701, 0, 0, 0)
exit.Size = UDim2.new(0, 62, 0, 23)
exit.Font = Enum.Font.Arcade
exit.Text = "X"
exit.TextColor3 = Color3.fromRGB(255, 255, 255)
exit.TextSize = 14.000
exit.MouseButton1Down:connect(function()
    Window.Visible = false
end)

windowbut.Name = "windowbut"
windowbut.Parent = Window
windowbut.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
windowbut.BackgroundTransparency = 1.000
windowbut.BorderColor3 = Color3.fromRGB(0, 0, 0)
windowbut.BorderSizePixel = 0
windowbut.Position = UDim2.new(0.723311543, 0, 0, 0)
windowbut.Size = UDim2.new(0, 48, 0, 23)
windowbut.Font = Enum.Font.Arcade
windowbut.Text = "□"
windowbut.TextColor3 = Color3.fromRGB(216, 216, 216)
windowbut.TextSize = 14.000

minimize.Name = "minimize"
minimize.Parent = Window
minimize.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
minimize.BackgroundTransparency = 1.000
minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
minimize.BorderSizePixel = 0
minimize.Position = UDim2.new(0.618736386, 0, 0, 0)
minimize.Size = UDim2.new(0, 48, 0, 23)
minimize.Font = Enum.Font.Arcade
minimize.Text = "-"
minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
minimize.TextSize = 14.000

-- Scripts:

local function SQTSP_fake_script() -- Window.Dragify 
    local script = Instance.new('LocalScript', Window)

    local UserInputService = game:GetService("UserInputService")
    
    local gui = script.Parent
    
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
    
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end
coroutine.wrap(SQTSP_fake_script)()
local H = Instance.new("Hint", game.Workspace)
H.Parent = game.Workspace
H.Text = ("Team C00lkid Join Today!")
wait(5000)
H:Destroy(5000)