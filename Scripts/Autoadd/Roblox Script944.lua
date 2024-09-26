local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local MinimizeButton = Instance.new("TextButton")
local MVSDButton = Instance.new("TextButton")
local MVSD2Button = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Size = UDim2.new(0.5, 0, 0.5, 0)
Frame.Position = UDim2.new(0.25, 0, 0.25, 0)
Frame.Active = true
Frame.Draggable = true

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 20)

MinimizeButton.Parent = Frame
MinimizeButton.Text = "-"
MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0)
MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0)
MinimizeButton.MouseButton1Click:Connect(function()
    Frame:Destroy()
end)

MVSDButton.Parent = Frame
MVSDButton.Text = "MVSD"
MVSDButton.Size = UDim2.new(0.3, 0, 0.1, 0)
MVSDButton.Position = UDim2.new(0.35, 0, 0.2, 0)
MVSDButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vjTWQ8wW"))()
end)

MVSD2Button.Parent = Frame
MVSD2Button.Text = "MVSD 2 Oly Hitbox"
MVSD2Button.Size = UDim2.new(0.3, 0, 0.1, 0)
MVSD2Button.Position = UDim2.new(0.35, 0, 0.35, 0)
MVSD2Button.MouseButton1Click:Connect(function()
    _G.HeadSize = 10
    _G.Disabled = true

    game:GetService('RunService').RenderStepped:connect(function()
        if _G.Disabled then
            for i,v in next, game:GetService('Players'):GetPlayers() do
                if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                    pcall(function()
                        v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                        v.Character.HumanoidRootPart.Transparency = 0.7
                        v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
                        v.Character.HumanoidRootPart.Material = "Neon"
                        v.Character.HumanoidRootPart.CanCollide = false
                    end)
                end
            end
        end
    end)
end)