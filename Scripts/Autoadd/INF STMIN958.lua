local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid:SetAttribute("Stamina", 1) -- 1 is full stamina
local normalWalkSpeed = 10
local runningWalkSpeed = 19.2

local function maintainFullStamina()
    while true do
        humanoid:SetAttribute("Stamina", 1)
        wait(0.1)
    end
end

local function toggleRun(isRunning)
    if isRunning then
        humanoid.WalkSpeed = runningWalkSpeed
    else
        humanoid.WalkSpeed = normalWalkSpeed
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.ButtonL3 then
        toggleRun(true)
    end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.ButtonL3 then
        toggleRun(false)
    end
end)

task.spawn(maintainFullStamina)
