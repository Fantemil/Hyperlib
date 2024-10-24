-- Create the main GUI frame
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleBar = Instance.new("TextLabel")
local JumpScare = Instance.new("TextButton")
local WalkSpeedBtn = Instance.new("TextButton")
local JumpPowerBtn = Instance.new("TextButton")
local ChatSpamBtn = Instance.new("TextButton")
local DoomBtn = Instance.new("TextButton")

-- Enable resetting the GUI position
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.new(0.5, 0, 0.5)  -- Purple color
MainFrame.Size = UDim2.new(0, 400, 0, 300)
MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
MainFrame.Draggable = true
MainFrame.Active = true

-- Title bar
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.new(0.3, 0, 0.3)
TitleBar.Size = UDim2.new(1, 0, 0.2, 0)
TitleBar.Font = Enum.Font.SciFi
TitleBar.TextSize = 20
TitleBar.TextColor3 = Color3.new(1, 0, 0)
TitleBar.Text = "RedishGUI v3 by Team Redish_realYT"

-- Create JumpScare button
JumpScare.Parent = MainFrame
JumpScare.Size = UDim2.new(0.4, 0, 0.2, 0)
JumpScare.Position = UDim2.new(0.1, 0, 0.25, 0)
JumpScare.BackgroundColor3 = Color3.new(1, 0, 0)
JumpScare.Text = "Jump Scare!"
JumpScare.TextColor3 = Color3.new(1, 1, 1)

-- Create WalkSpeed button
WalkSpeedBtn.Parent = MainFrame
WalkSpeedBtn.Size = UDim2.new(0.4, 0, 0.2, 0)
WalkSpeedBtn.Position = UDim2.new(0.1, 0, 0.5, 0)
WalkSpeedBtn.BackgroundColor3 = Color3.new(0, 0.6, 0.2)
WalkSpeedBtn.Text = "Set WalkSpeed"
WalkSpeedBtn.TextColor3 = Color3.new(1, 1, 1)

-- Create Jump Power button
JumpPowerBtn.Parent = MainFrame
JumpPowerBtn.Size = UDim2.new(0.4, 0, 0.2, 0)
JumpPowerBtn.Position = UDim2.new(0.55, 0, 0.25, 0)
JumpPowerBtn.BackgroundColor3 = Color3.new(0, 0.4, 0.8)
JumpPowerBtn.Text = "Set Jump Power"
JumpPowerBtn.TextColor3 = Color3.new(1, 1, 1)

-- Create Chat Spam button
ChatSpamBtn.Parent = MainFrame
ChatSpamBtn.Size = UDim2.new(0.4, 0, 0.2, 0)
ChatSpamBtn.Position = UDim2.new(0.55, 0, 0.5, 0)
ChatSpamBtn.BackgroundColor3 = Color3.new(0.8, 0.1, 0.1)
ChatSpamBtn.Text = "Chat Spam"
ChatSpamBtn.TextColor3 = Color3.new(1, 1, 1)

-- Create Doom Button
DoomBtn.Parent = MainFrame
DoomBtn.Size = UDim2.new(0.8, 0, 0.2, 0)
DoomBtn.Position = UDim2.new(0.1, 0, 0.75, 0)
DoomBtn.BackgroundColor3 = Color3.new(0.5, 0, 0.5)
DoomBtn.Text = "DOOMED By REDISH_REALYT"
DoomBtn.TextColor3 = Color3.new(1, 1, 1)

-- Functions for buttons
local Player = game.Players.LocalPlayer
local char = Player.Character or Player.CharacterAdded:Wait()

-- JumpScare button functionality
JumpScare.MouseButton1Click:Connect(function()
    local jumpscareGui = Instance.new("ScreenGui", ScreenGui)
    local jumpscareImage = Instance.new("ImageLabel", jumpscareGui)
    jumpscareImage.Size = UDim2.new(1, 0, 1, 0)
    jumpscareImage.Image = "rbxassetid://YOUR_IMAGE_ID" -- Replace with a Roblox image asset ID
    jumpscareImage.BackgroundTransparency = 1
    wait(3)
    jumpscareGui:Destroy()
end)

-- WalkSpeed button functionality
WalkSpeedBtn.MouseButton1Click:Connect(function()
    if char and char:FindFirstChildOfClass("Humanoid") then
        char.Humanoid.WalkSpeed = 100  -- Change this value to your desired WalkSpeed
    end
end)

-- Jump Power button functionality
JumpPowerBtn.MouseButton1Click:Connect(function()
    if char and char:FindFirstChildOfClass("Humanoid") then
        char.Humanoid.JumpPower = 150  -- Change this value to your desired Jump Power
    end
end)

-- Chat Spam button functionality
ChatSpamBtn.MouseButton1Click:Connect(function()
    for i = 1, 20 do
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
            "EXPLOITED BY TEAM REDISH", "All"
        )
        wait(0.1)
    end
end)

-- DOOM Button functionality
DoomBtn.MouseButton1Click:Connect(function()
    local doomGui = Instance.new("ScreenGui", ScreenGui)
    local doomFrame = Instance.new("Frame", doomGui)
    local doomText = Instance.new("TextLabel", doomFrame)
    
    doomFrame.Size = UDim2.new(1, 0, 1, 0)
    doomFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    
    doomText.Size = UDim2.new(1, 0, 1, 0)
    doomText.Text = "DOOMED BY REDISH_REALYT LOLOL"
    doomText.TextColor3 = Color3.new(1, 0, 0)
    doomText.TextSize = 50
    doomText.BackgroundTransparency = 1
    doomText.Font = Enum.Font.SciFi

    wait(10)
    doomGui:Destroy()
end)
