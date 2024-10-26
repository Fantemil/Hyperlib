local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local localPlayer = Players.LocalPlayer
local camera = game.Workspace.CurrentCamera

-- Function to lock the camera onto the selected player
local function lockCameraOnPlayer(targetPlayer)
    if not targetPlayer or not targetPlayer.Character then return end

    -- Disable default camera scripts
    localPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
    localPlayer.CameraMaxZoomDistance = 16

    -- Set the camera to follow the target player
    RunService:BindToRenderStep("CameraFollow", Enum.RenderPriority.Camera.Value, function()
        if targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
            camera.CFrame = CFrame.new(camera.CFrame.Position, targetPlayer.Character.Head.Position)
        end
    end)
end

-- Function to stop locking the camera
local function unlockCamera()
    -- Re-enable default camera scripts
    localPlayer.CameraMode = Enum.CameraMode.Classic
    localPlayer.CameraMaxZoomDistance = 128

    -- Unbind the camera follow function
    RunService:UnbindFromRenderStep("CameraFollow")
end

-- Example: Lock camera onto another player named "TargetPlayerName"
local targetPlayerName = "username"
local targetPlayer = Players:FindFirstChild(targetPlayerName)

if targetPlayer then
    lockCameraOnPlayer(targetPlayer)
else
    warn("Target player not found")
end

-- To unlock the camera, call unlockCamera()
-- Example: unlockCamera()