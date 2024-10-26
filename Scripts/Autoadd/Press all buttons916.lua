local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local lp = Players.LocalPlayer
local Buttons = workspace:WaitForChild("Buttons")

local function interactWithButtons()
    local char = lp.Character
    if not char then return end

    for i, v in pairs(Buttons:GetDescendants()) do
        if v and v:IsA("ProximityPrompt") and v.Name == "ButtonPrompt" and v.Parent:FindFirstChild("PointLight") and v.Parent:FindFirstChild("PointLight").Enabled == true then
            local orgpos = char.HumanoidRootPart.Position
            char.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position + Vector3.new(0, 1, -1))
            wait(0.30)
            fireproximityprompt(v)
            wait(0.1)
            char.HumanoidRootPart.CFrame = CFrame.new(orgpos)
        end
    end
end

local function onKeyPress(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.V then
        interactWithButtons()
    end
end

UserInputService.InputBegan:Connect(onKeyPress)