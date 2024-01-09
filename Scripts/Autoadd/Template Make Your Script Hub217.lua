-- Theme = DarkTheme - LightTheme - BloodTheme - GrapeTheme - Ocean - Midnight - Sentinel - Synapse - Serpent
-- Plantilla Con Mas Cosas Que Enel Video
-- JUANKO MODS YT


local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vdc16Dh7"))()

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0, 0, 0.65, -100)
Frame.Size = UDim2.new(0, 100, 0, 50)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(11, 18, 7)
Frame.ImageTransparency = 0.200
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120
Frame.Active = true
Frame.ZIndex = 10

TextButton.Parent = Frame
TextButton.AnchorPoint = Vector2.new(0, 0.5)
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.022162716, 0, 0.85, -20)
TextButton.Size = UDim2.new(1, -10, 1, 0) 
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Hide / Show"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 20.000
TextButton.TextWrapped = true
TextButton.ZIndex = 11 
TextButton.MouseButton1Down:Connect(function()
    Library:ToggleUI()
end)

-- Dragging functionality for Mobile and PC:
local draggingEnabled = false
local dragStartPos = nil
local frameStartPos = nil

local function updatePosition(input)
    local delta = input.Position - dragStartPos
    Frame.Position = UDim2.new(
        frameStartPos.X.Scale,
        frameStartPos.X.Offset + delta.X,
        frameStartPos.Y.Scale,
        frameStartPos.Y.Offset + delta.Y
    )
end

TextButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        draggingEnabled = true
        dragStartPos = input.Position
        frameStartPos = Frame.Position
    end
end)

TextButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        draggingEnabled = false
    end
end)

TextButton.InputChanged:Connect(function(input)
    if draggingEnabled and
        (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        updatePosition(input)
    end
end)

Frame.InputChanged:Connect(function(input)
    if draggingEnabled and
        (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        updatePosition(input)
    end
end) 

local Window = Library.CreateLib("GAME | HUB | V1 | NAME | OWNER", "DarkTheme")

local Tab = Window:NewTab("MAIN")
local Section = Tab:NewSection("Information")

Section:NewButton("NameButton", "info", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50 
end)

Section:NewSlider("NameSlider",Info,200,16,function(Y)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Y
end) 

Section:NewToggle("NameToggle", "info" ,function(state)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = state
end)

Section:NewTextBox("NameTextBox","info", function(txt)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

Section:NewDropdown("NameDropDown", "Info", {"100", "200", "300", "400"}, function(K)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = K
end) 

Section:NewColorPicker("NameColorPicker","Info", Color3.fromRGB(255,255,255), function(XP)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = XP
end)