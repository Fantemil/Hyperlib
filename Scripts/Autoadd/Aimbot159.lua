--  s3mply was here <3

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local UIS = game:GetService("UserInputService")
local Mouse = LocalPlayer:GetMouse()

local function findNearestPlayer()
    local nearestPlayer = nil
    local nearestDistance = math.huge
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance < nearestDistance and player ~= LocalPlayer then
                nearestPlayer = player
                nearestDistance = distance
            end
        end
    end
    
    return nearestPlayer
end

local function aimbot()
    local nearestPlayer = findNearestPlayer()
    
    if nearestPlayer then
        local HumanoidRootPart = nearestPlayer.Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            local LookVector = (HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Unit
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(LocalPlayer.Character.HumanoidRootPart.Position, LocalPlayer.Character.HumanoidRootPart.Position + LookVector)
            
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, HumanoidRootPart.Position)
            Mouse.Target = nearestPlayer.Character.HumanoidRootPart
        end
        
        if UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
            workspace.CurrentCamera.CameraSubject = nearestPlayer.Character.Humanoid
            workspace.CurrentCamera.CameraType = Enum.CameraType.Attach
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    aimbot()
end)