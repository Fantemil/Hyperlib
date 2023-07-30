
local gui = Instance.new("ScreenGui", game.CoreGui)
local btn = Instance.new("TextButton", gui)
local UICorner = Instance.new("UICorner")

btn.Position = UDim2.new(0.5, 370, 0.5, 100)
btn.Size = UDim2.new(0,60,0,60)
btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
btn.BackgroundTransparency = 0.5
btn.Text = "SPRAY!!!"
btn.Font = Enum.Font.Cartoon
btn.TextColor3 = Color3.new(255, 255, 255)
btn.TextSize = 14

local uistroke = Instance.new("UIStroke")
uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uistroke.Color = Color3.new(255, 255, 255)
uistroke.Thickness = 2.4000000953674316
uistroke.Parent = btn

UICorner.CornerRadius = UDim.new(0, 100)
UICorner.Parent = btn



local function leftMouseButtonUp(x, y)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pepper Spray").Scripts.RemoteEvent:FireServer("End", x, y)
end

local function leftMouseButtonDown(x, y)
	game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pepper Spray").Scripts.RemoteEvent:FireServer("Start", x, y)
end

btn.MouseButton1Up:Connect(leftMouseButtonUp)
btn.MouseButton1Down:Connect(leftMouseButtonDown)

game.StarterGui:SetCore("SendNotification", {
Title = "Spray",
Text = "Start spraying everyone!!",
Duration = 5,
})