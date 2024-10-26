--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- LocalScript in StarterPlayerScripts

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local canDoubleJump = false
local isDoubleJumping = false
local doubleJumpPower = 50 -- Adjust this value to control the height of the double jump
local rollAnimationId = "rbxassetid://18537367238"

-- Animation setup
local rollAnimation = Instance.new("Animation")
rollAnimation.AnimationId = rollAnimationId

local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
local rollAnimTrack = animator:LoadAnimation(rollAnimation)
rollAnimTrack.Looped = false -- Set the animation to not loop

-- Function to perform the double jump
local function performDoubleJump()
    if not canDoubleJump or isDoubleJumping then return end

    isDoubleJumping = true
    canDoubleJump = false

    rollAnimTrack:Play()

    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    humanoidRootPart.Velocity = Vector3.new(humanoidRootPart.Velocity.X, doubleJumpPower, humanoidRootPart.Velocity.Z)

    rollAnimTrack.Stopped:Wait()
    isDoubleJumping = false
end

-- Function to handle jumping
local function onJumpRequest()
    if humanoid:GetState() == Enum.HumanoidStateType.Freefall and canDoubleJump then
        performDoubleJump()
    elseif humanoid:GetState() == Enum.HumanoidStateType.Jumping or humanoid:GetState() == Enum.HumanoidStateType.Running then
        canDoubleJump = true
    end
end

-- Event listener for jump requests
UserInputService.JumpRequest:Connect(onJumpRequest)

-- Reset double jump when the player lands
humanoid.StateChanged:Connect(function(_, newState)
    if newState == Enum.HumanoidStateType.Landed or newState == Enum.HumanoidStateType.Seated then
        canDoubleJump = false
    end
end)

--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- LocalScript in StarterPlayerScripts

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rolling = false
local holdingRollKey = false
local rollDuration = 0.5 -- Duration of each roll in seconds
local rollDistance = 50 -- Distance to roll per roll action

-- Animation setup
local rollAnimationId = "rbxassetid://18537367238"
local rollAnimation = Instance.new("Animation")
rollAnimation.AnimationId = rollAnimationId

local animator = humanoid:FindFirstChild("Animator") or humanoid:WaitForChild("Animator")
local rollAnimTrack = animator:LoadAnimation(rollAnimation)
rollAnimTrack.Looped = true -- Set the animation to loop

local function stopRolling()
rolling = false
rollAnimTrack:Stop()
end

local function performRoll()
local direction = character.PrimaryPart.CFrame.LookVector
local startPosition = character.PrimaryPart.Position
local targetPosition = startPosition + (direction * rollDistance)

local rollStartTime = tick()
local connection
connection = RunService.RenderStepped:Connect(function()
local elapsedTime = tick() - rollStartTime
if elapsedTime > rollDuration then
connection:Disconnect()
if holdingRollKey then
performRoll()
else
stopRolling()
end
return
end

-- Perform raycasting to check for obstacles
local rayOrigin = character.PrimaryPart.Position
local rayDirection = direction * rollDistance * (elapsedTime / rollDuration)
local raycastParams = RaycastParams.new()
raycastParams.FilterDescendantsInstances = {character}
raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
local raycastResult = workspace:Raycast(rayOrigin, rayDirection, raycastParams)

if raycastResult and raycastResult.Instance.CanCollide then
-- Stop rolling if an obstacle is detected
stopRolling()
connection:Disconnect()
return
end

local progress = elapsedTime / rollDuration
local newPosition = startPosition:Lerp(targetPosition, progress)
character:SetPrimaryPartCFrame(CFrame.new(newPosition, newPosition + direction))
end)
end

local function startRoll()
if rolling then return end
rolling = true
rollAnimTrack:Play()
performRoll()
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
if gameProcessed then return end
if input.KeyCode == Enum.KeyCode.R then
holdingRollKey = true
startRoll()
end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
if input.KeyCode == Enum.KeyCode.R then
holdingRollKey = false
end
end)


-- LocalScript in StarterPlayerScripts

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local camera = game.Workspace.CurrentCamera
local defaultFOV = camera.FieldOfView
local movingFOV = 120

-- Function to check if the player is moving
local function isMoving()
    return humanoid.MoveDirection.Magnitude > 0
end

-- Update the FOV based on the player's movement
RunService.RenderStepped:Connect(function()
    if isMoving() then
        camera.FieldOfView = movingFOV
    else
        camera.FieldOfView = defaultFOV
    end
end)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 60