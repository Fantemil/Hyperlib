local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local flying = false

local function onKeyPress(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.E then
        flying = not flying
        if flying then
            humanoid.PlatformStand = true
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
        else
            humanoid.PlatformStand = false
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        end
    end
end

local function followMouse()
    if flying then
        local mouse = player:GetMouse()
        local targetPosition = mouse.Hit.p
        rootPart.CFrame = CFrame.new(rootPart.Position, targetPosition)
        rootPart.Velocity = (targetPosition - rootPart.Position).unit * 50
    end
end

UserInputService.InputBegan:Connect(onKeyPress)
RunService.RenderStepped:Connect(followMouse)
-- made by 0vdi
-- https://discord.gg/58WXSujf94