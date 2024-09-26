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
local rollDistance = 20 -- Distance to roll per roll action

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