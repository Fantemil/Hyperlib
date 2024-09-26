-- Roblox Anti Afk Script --

-- Made by aoki0x
-- Updated by Irfannnnn

local Main = Instance.new("ScreenGui")
local Title = Instance.new("TextLabel")
local MainFrame = Instance.new("Frame")
local EndTitle = Instance.new("TextLabel")
local AfkStatus = Instance.new("TextLabel")

Main.Parent = game.CoreGui
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Title.Parent = Main
Title.Active = true
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderColor3 = Color3.fromRGB(0, 0, 255)
Title.Draggable = true
Title.Position = UDim2.new(0.698610067, 0, 0.098096624, 0)
Title.Size = UDim2.new(0, 370, 0, 52)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Anti Afk | by aoki0x"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 22

MainFrame.Parent = Title
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 255)
MainFrame.Position = UDim2.new(0, 0, 1.0192306, 0)
MainFrame.Size = UDim2.new(0, 370, 0, 107)

EndTitle.Parent = MainFrame
EndTitle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EndTitle.BorderColor3 = Color3.fromRGB(0, 0, 255)
EndTitle.Position = UDim2.new(0, 0, 0.800455689, 0)
EndTitle.Size = UDim2.new(0, 370, 0, 21)
EndTitle.Font = Enum.Font.SourceSansBold
EndTitle.Text = "RemiAPE"
EndTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
EndTitle.TextSize = 20

AfkStatus.Parent = MainFrame
AfkStatus.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AfkStatus.BorderColor3 = Color3.fromRGB(0, 0, 255)
AfkStatus.Position = UDim2.new(0, 0, 0.158377, 0)
AfkStatus.Size = UDim2.new(0, 370, 0 ,44)
AfkStatus.Font = Enum.Font.SourceSansBold
AfkStatus.Text = "Anti Afk Status: Active"
AfkStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
AfkStatus.TextSize = 20

local vu = game:GetService("VirtualUser")

game.Players.LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    AfkStatus.Text = "Roblox Tried To Kick You."
    wait(2)
    AfkStatus.Text = "Anti Afk Status: Active"
end)