-- Create GUI Elements
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local KeyInput = Instance.new("TextBox")
local UnlockButton = Instance.new("TextButton")
local StatusLabel = Instance.new("TextLabel")
local InfiniteYieldButton = Instance.new("TextButton")
local FlyButton = Instance.new("TextButton")
local FlingButton = Instance.new("TextButton")
local NamelessAdminButton = Instance.new("TextButton")
local SpeedInput = Instance.new("TextBox")
local GoButton = Instance.new("TextButton")
local CopyTextButton = Instance.new("TextButton")
local FeTrollingGuiButton = Instance.new("TextButton")
local FePunchButton = Instance.new("TextButton")
local BottomText = Instance.new("TextLabel")

-- Set up GUI
ScreenGui.Name = "k00lkidd81 gui v666"
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 600) -- Made the GUI taller, not bigger
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -200)
MainFrame.Active = true
MainFrame.Draggable = true

KeyInput.Parent = MainFrame
KeyInput.Size = UDim2.new(0, 200, 0, 30)
KeyInput.Position = UDim2.new(0.5, -100, 0.3, -15)
KeyInput.PlaceholderText = "Enter Key Here"

UnlockButton.Parent = MainFrame
UnlockButton.Size = UDim2.new(0, 100, 0, 30)
UnlockButton.Position = UDim2.new(0.5, -50, 0.4, 0)
UnlockButton.Text = "Unlock"
UnlockButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)

StatusLabel.Parent = MainFrame
StatusLabel.Size = UDim2.new(1, 0, 0, 30)
StatusLabel.Position = UDim2.new(0, 0, 0.8, 0)
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

InfiniteYieldButton.Parent = MainFrame
InfiniteYieldButton.Size = UDim2.new(0, 100, 0, 30)
InfiniteYieldButton.Position = UDim2.new(0, 10, 0.6, 0)
InfiniteYieldButton.Text = "Infinite Yield"
InfiniteYieldButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
InfiniteYieldButton.Visible = false

FlyButton.Parent = MainFrame
FlyButton.Size = UDim2.new(0, 100, 0, 30)
FlyButton.Position = UDim2.new(0, 120, 0.6, 0)
FlyButton.Text = "Fly"
FlyButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
FlyButton.Visible = false

FlingButton.Parent = MainFrame
FlingButton.Size = UDim2.new(0, 100, 0, 30)
FlingButton.Position = UDim2.new(0, 230, 0.6, 0)
FlingButton.Text = "Fling"
FlingButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
FlingButton.Visible = false

NamelessAdminButton.Parent = MainFrame
NamelessAdminButton.Size = UDim2.new(0, 100, 0, 30)
NamelessAdminButton.Position = UDim2.new(0, 340, 0.6, 0)
NamelessAdminButton.Text = "Nameless Admin"
NamelessAdminButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
NamelessAdminButton.Visible = false

SpeedInput.Parent = MainFrame
SpeedInput.Size = UDim2.new(0, 200, 0, 30)
SpeedInput.Position = UDim2.new(0.5, -100, 0.4, 40)
SpeedInput.PlaceholderText = "Enter Speed"
SpeedInput.Visible = false

GoButton.Parent = MainFrame
GoButton.Size = UDim2.new(0, 100, 0, 30)
GoButton.Position = UDim2.new(0.5, 10, 0.4, 40)
GoButton.Text = "Go"
GoButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
GoButton.Visible = false

CopyTextButton.Parent = MainFrame
CopyTextButton.Size = UDim2.new(0, 100, 0, 30)
CopyTextButton.Position = UDim2.new(0.5, -50, 0.1, 0)
CopyTextButton.Text = "Copy Text"
CopyTextButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)

FeTrollingGuiButton.Parent = MainFrame
FeTrollingGuiButton.Size = UDim2.new(0, 150, 0, 30)
FeTrollingGuiButton.Position = UDim2.new(0.5, -75, 0.75, 0)
FeTrollingGuiButton.Text = "FE Trolling GUI"
FeTrollingGuiButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
FeTrollingGuiButton.Visible = false

FePunchButton.Parent = MainFrame
FePunchButton.Size = UDim2.new(0, 150, 0, 30)
FePunchButton.Position = UDim2.new(0.5, -75, 0.85, 0)
FePunchButton.Text = "FE Punch"
FePunchButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
FePunchButton.Visible = false

BottomText.Parent = MainFrame
BottomText.Size = UDim2.new(1, 0, 0, 30)
BottomText.Position = UDim2.new(0, 0, 1, -30)
BottomText.Text = "team k00lkidd81 join Today!"
BottomText.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Key System Unlock Script
local key = "teams" -- The key to unlock the GUI
local function unlockGUI()
    if KeyInput.Text == key then
        StatusLabel.Text = "Loading..."
        -- Simulate animation with a delay
        wait(5)
        StatusLabel.Text = ""
        KeyInput.Visible = false
        UnlockButton.Visible = false
        InfiniteYieldButton.Visible = true
        FlyButton.Visible = true
        FlingButton.Visible = true
        NamelessAdminButton.Visible = true
        SpeedInput.Visible = true
        GoButton.Visible = true
        CopyTextButton.Visible = true
        FeTrollingGuiButton.Visible = true
        FePunchButton.Visible = true
    else
        StatusLabel.Text = "Incorrect Key!"
    end
end

UnlockButton.MouseButton1Click:Connect(unlockGUI)

-- Functionality Scripts
InfiniteYieldButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

FlyButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/G9h1Qvwm"))() -- Updated working Fly script
end)

FlingButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GJ7ST8yq"))()
end)

NamelessAdminButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))()
end)

GoButton.MouseButton1Click:Connect(function()
    local speed = tonumber(SpeedInput.Text)
    if speed then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
    end
end)

CopyTextButton.MouseButton1Click:Connect(function()
    setclipboard("https://pastebin.com/NpDgtXdd") -- Replace with actual text from Pastebin
end)

FeTrollingGuiButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
end)

FePunchButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("http://pastefy.app/GvnHVjT5/raw", true))()
end)