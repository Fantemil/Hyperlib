warn("ð¨in infinite yield, execute flyfling, nosit and freecam to make this work properly")
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
local players = game:GetService("Players")
local player = players.LocalPlayer
local rootPart = player.Character:WaitForChild("HumanoidRootPart")

local tpInterval = 0.000001

local function tp()
    while true do
        local randomPlayer = players:GetPlayers()[math.random(1, #players:GetPlayers())]
        if randomPlayer ~= player and randomPlayer.Character and randomPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPosition = randomPlayer.Character.HumanoidRootPart.Position
            rootPart.CFrame = CFrame.new(targetPosition)
        end
        wait(tpInterval)
    end
end

local screenGui = Instance.new("ScreenGui")
local runButton = Instance.new("TextButton")

screenGui.Parent = player:WaitForChild("PlayerGui")

runButton.Size = UDim2.new(0, 100, 0, 50)
runButton.Position = UDim2.new(0.5, -50, 0.5, -25)
runButton.Text = "Start TPing"
runButton.Parent = screenGui

runButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
    tp()
end)
