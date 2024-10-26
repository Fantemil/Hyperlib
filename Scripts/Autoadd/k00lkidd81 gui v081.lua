-- Create the ScreenGUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "k00lkidd81 GUI v0"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the Frame to hold the buttons (taller to fit the title)
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Neon Green
Frame.Size = UDim2.new(0, 300, 0, 450) -- Taller frame
Frame.Position = UDim2.new(0.5, -150, 0.5, -225)
Frame.Draggable = true -- Makes the GUI movable
Frame.Active = true -- Required for the draggable feature
Frame.BorderSizePixel = 0

-- Adding a neon effect to the Frame
local UIStroke = Instance.new("UIStroke", Frame)
UIStroke.Thickness = 5
UIStroke.Color = Color3.fromRGB(0, 255, 0) -- Neon Green border

-- Create the Title TextLabel
local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Text = "k00lkidd81 GUI v0"
Title.Size = UDim2.new(0, 300, 0, 50) -- Full width of the frame and 50px height
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundTransparency = 1 -- No background, only text
Title.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 24 -- Font size for the title
Title.TextStrokeTransparency = 0 -- Outline for the text
Title.TextStrokeColor3 = Color3.fromRGB(0, 255, 0) -- Neon Green text outline

-- Function to create buttons (adjusted position for the title)
local function createButton(name, position, scriptFunction)
    local button = Instance.new("TextButton")
    button.Parent = Frame
    button.Text = name
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0, 50, 0, position + 50) -- Adjusted position to leave space for the title
    button.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Neon Green button
    button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 20

    -- Adding a neon effect to the button
    local buttonStroke = Instance.new("UIStroke", button)
    buttonStroke.Thickness = 3
    buttonStroke.Color = Color3.fromRGB(0, 255, 0) -- Neon Green border

    -- Connect button click to the function
    button.MouseButton1Click:Connect(scriptFunction)
end

-- Define the scripts for each button
local function FEFlyScript()
    -- Load the fly script from the provided URL
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fly-v3-13879"))()
end

local function FEWalkspeedScript()
    local player = game.Players.LocalPlayer
    local char = player.Character
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = 100
        print("FEWalkspeedScript executed")
    else
        warn("Humanoid not found")
    end
end

local function InfiniteYieldScript()
    -- Infinite Yield script
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end

local function FENoclipScript()
    -- Noclip script provided by the user
    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    local Noclip = Instance.new("ScreenGui")
    local BG = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Toggle = Instance.new("TextButton")
    local StatusPF = Instance.new("TextLabel")
    local Status = Instance.new("TextLabel")
    local Credit = Instance.new("TextLabel")
    local Plr = Players.LocalPlayer
    local Clipon = false

    Noclip.Name = "Noclip"
    Noclip.Parent = game.CoreGui

    BG.Name = "BG"
    BG.Parent = Noclip
    BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
    BG.BorderSizePixel = 2
    BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
    BG.Size = UDim2.new(0, 210, 0, 127)
    BG.Active = true
    BG.Draggable = true

    Title.Name = "Title"
    Title.Parent = BG
    Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
    Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
    Title.BorderSizePixel = 2
    Title.Size = UDim2.new(0, 210, 0, 33)
    Title.Font = Enum.Font.Highway
    Title.Text = "Noclip"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.FontSize = Enum.FontSize.Size32
    Title.TextSize = 30
    Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Title.TextStrokeTransparency = 0

    Toggle.Parent = BG
    Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
    Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
    Toggle.BorderSizePixel = 2
    Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
    Toggle.Size = UDim2.new(0, 146, 0, 36)
    Toggle.Font = Enum.Font.Highway
    Toggle.FontSize = Enum.FontSize.Size28
    Toggle.Text = "Toggle"
    Toggle.TextColor3 = Color3.new(1, 1, 1)
    Toggle.TextSize = 25
    Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Toggle.TextStrokeTransparency = 0

    StatusPF.Name = "StatusPF"
    StatusPF.Parent = BG
    StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
    StatusPF.BackgroundTransparency = 1
    StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
    StatusPF.Size = UDim2.new(0, 56, 0, 20)
    StatusPF.Font = Enum.Font.Highway
    StatusPF.FontSize = Enum.FontSize.Size24
    StatusPF.Text = "Status:"
    StatusPF.TextColor3 = Color3.new(1, 1, 1)
    StatusPF.TextSize = 20
    StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
    StatusPF.TextStrokeTransparency = 0
    StatusPF.TextWrapped = true

    Status.Name = "Status"
    Status.Parent = BG
    Status.BackgroundColor3 = Color3.new(1, 1, 1)
    Status.BackgroundTransparency = 1
    Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
    Status.Size = UDim2.new(0, 56, 0, 20)
    Status.Font = Enum.Font.Highway
    Status.FontSize = Enum.FontSize.Size14
    Status.Text = "off"
    Status.TextColor3 = Color3.new(0.666667, 0, 0)
    Status.TextScaled = true
    Status.TextSize = 14
    Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Status.TextWrapped = true
    Status.TextXAlignment = Enum.TextXAlignment.Left

    Credit.Name = "Credit"
    Credit.Parent = BG
    Credit.BackgroundColor3 = Color3.new(1, 1, 1)
    Credit.BackgroundTransparency = 1
    Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
    Credit.Size = UDim2.new(0, 128, 0, 17)
    Credit.Font = Enum.Font.SourceSans
    Credit.FontSize = Enum.FontSize.Size18
    Credit.Text = "Created by KingLuna"
    Credit.TextColor3 = Color3.new(1, 1, 1)
    Credit.TextSize = 16
    Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
    Credit.TextStrokeTransparency = 0
    Credit.TextWrapped = true

    Toggle.MouseButton1Click:Connect(function()
        if Status.Text == "off" then
            Clipon = true
            Status.Text = "on"
            Status.TextColor3 = Color3.new(0, 185, 0)
            local Stepped = game:GetService("RunService").Stepped:Connect(function()
                if Clipon then
                    for _, b in pairs(Workspace:GetChildren()) do
                        if b.Name == Plr.Name then
                            for _, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
                else
                    Stepped:Disconnect()
                end
            end)
        elseif Status.Text == "on" then
            Clipon = false
            Status.Text = "off"
            Status.TextColor3 = Color3.new(170, 0, 0)
        end
    end)
end

-- Create Buttons
createButton("Fly", 0, FEFlyScript)
createButton("Fling", 60, function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fling-script-V2-stil-better-than-iy-fling-ngl-11180"))() end)
createButton("Noclip", 120, FENoclipScript)