-- Variables
local lp = game.Players.LocalPlayer
local path = game.Workspace.Enemies
getgenv().Farm = true
local distance = 10 -- Adjustable distance

local function BringNPCs()
    while getgenv().Farm do
        local playerHRP = lp.Character:WaitForChild("HumanoidRootPart")
        for _, npc in ipairs(path:GetChildren()) do
            local npcHRP = npc:FindFirstChild("HumanoidRootPart")
            local npcHumanoid = npc:FindFirstChild("Humanoid")
            if npcHRP and npcHumanoid and npcHumanoid.Health > 0 then
                npcHRP.CFrame = playerHRP.CFrame + playerHRP.CFrame.LookVector * distance
            end
        end
        task.wait(0.1) -- Adjust the wait time as needed
    end
end

-- Create GUI
local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local toggleButton = Instance.new("TextButton")

screenGui.Parent = game.CoreGui

frame.Size = UDim2.new(0, 200, 0, 50)
frame.Position = UDim2.new(0.5, -100, 0.5, -25)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

toggleButton.Size = UDim2.new(1, 0, 1, 0)
toggleButton.Position = UDim2.new(0, 0, 0, 0)
toggleButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
toggleButton.Text = "Toggle Farm"
toggleButton.Parent = frame

-- Toggle functionality
toggleButton.MouseButton1Click:Connect(function()
    getgenv().Farm = not getgenv().Farm
    if getgenv().Farm then
        toggleButton.Text = "Stop Farm"
        BringNPCs()
    else
        toggleButton.Text = "Start Farm"
    end
end)
