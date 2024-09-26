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
