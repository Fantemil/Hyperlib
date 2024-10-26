local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local localPlayer = Players.LocalPlayer
local path = nil

local function createInvisiblePath()
    path = Instance.new("Part")
    path.Size = Vector3.new(50, 1, 10)
    path.Anchored = true
    path.CanCollide = true
    path.Transparency = 1
    path.Position = Vector3.new(0, 2, 0)
    path.Name = "InvisiblePath"
    path.Parent = workspace

    local resetScript = Instance.new("Script")
    resetScript.Parent = path

    path.Touched:Connect(function(hit)
        local character = localPlayer.Character
        if character and hit:IsDescendantOf(character) then
            resetScript.Timeout = 0
        end
    end)

    return path
end

local function teleportPlayerToPath()
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    if path then
        humanoidRootPart.CFrame = path.CFrame + Vector3.new(0, 3, 0)
    end
end

local function walkForwardAndBackwardOnPath()
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local startPos = path.Position + Vector3.new(0, 3, -path.Size.Z / 2 + 1)
    local endPos = path.Position + Vector3.new(0, 3, path.Size.Z / 2 - 1)

    if humanoid then
        local isWalkingForward = true

        RunService.Heartbeat:Connect(function()
            if isWalkingForward then
                humanoid:MoveTo(endPos)
            else
                humanoid:MoveTo(startPos)
            end
        end)

        humanoid.MoveToFinished:Connect(function(reached)
            if reached then
                isWalkingForward = not isWalkingForward
            end
        end)
    end
end

local function adjustCameraToLookAtGround()
    local camera = Workspace.CurrentCamera
    camera.CameraType = Enum.CameraType.Scriptable

    RunService.RenderStepped:Connect(function()
        local character = localPlayer.Character
        if character then
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                camera.CFrame = CFrame.new(humanoidRootPart.Position + Vector3.new(0, 10, 0), humanoidRootPart.Position)
            end
        end
    end)
end

local function onCharacterAdded(character)
    if not path then
        createInvisiblePath()
    end
    teleportPlayerToPath()
    walkForwardAndBackwardOnPath()
    adjustCameraToLookAtGround()
end

local function main()
    if not path then
        createInvisiblePath()
    end

    localPlayer.CharacterAdded:Connect(onCharacterAdded)

    if localPlayer.Character then
        onCharacterAdded(localPlayer.Character)
    end
end

main()