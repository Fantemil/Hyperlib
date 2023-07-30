local cameraLocked = false
local nu = 9 
local lerpSpeed = 100 -- adjust this value to change the speed of the camera movement

function getClosestPlayerToMouse()
    local mouse = game.Players.LocalPlayer:GetMouse()
    local target = nil
    local minDist = math.huge
    local liveFolder = workspace.Live
    for _, descendant in ipairs(liveFolder:GetDescendants()) do
        if descendant:IsA("Model") and descendant:FindFirstChild("HumanoidRootPart") then
            local dist = (descendant.HumanoidRootPart.Position - mouse.Hit.p).magnitude
            if dist < minDist then
                minDist = dist
                target = descendant.HumanoidRootPart
            end
        end
    end
    return target
end

function activatePowerUp()
    if not cameraLocked then
        cameraLocked = true
        local target = getClosestPlayerToMouse()
        if target then
            local camera = workspace.CurrentCamera
            local originalCameraSubject = camera.CameraSubject
            local originalCameraCFrame = camera.CFrame
            camera.CameraSubject = nil
            while cameraLocked do
                local currentCFrame = camera.CFrame
                local targetCFrame = CFrame.new(currentCFrame.Position, target.Position)
                camera.CFrame = currentCFrame:Lerp(targetCFrame, lerpSpeed * 0.01)
                wait()
            end
            camera.CameraSubject = originalCameraSubject
            camera.CFrame = originalCameraCFrame
        end
    else
        cameraLocked = false
        local camera = workspace.CurrentCamera
        local originalCameraSubject = camera.CameraSubject
        local originalCameraCFrame = camera.CFrame
        camera.CameraSubject = originalCameraSubject
        camera.CFrame = originalCameraCFrame
    end
end

-- listen for "F" key press event
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.F then
        activatePowerUp()
        if cameraLocked then
            wait(nu)
            activatePowerUp()
        end
    end
end)
