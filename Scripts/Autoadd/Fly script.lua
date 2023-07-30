-- Variables
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local flySpeed = 50 -- Change this value to adjust the flight speed

-- Functions
local function fly()
    humanoid.PlatformStand = true
    humanoid:ChangeState(Enum.HumanoidStateType.Flying)
end

local function stopFlying()
    humanoid.PlatformStand = false
    humanoid:ChangeState(Enum.HumanoidStateType.Physics)
end

local function onKeyPress(input, gameProcessedEvent)
    if gameProcessedEvent then
        return
    end
    
    if input.KeyCode == Enum.KeyCode.Space then
        fly()
    end
end

local function onKeyRelease(input, gameProcessedEvent)
    if gameProcessedEvent then
        return
    end
    
    if input.KeyCode == Enum.KeyCode.Space then
        stopFlying()
    end
end

-- Connect input events
game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
game:GetService("UserInputService").InputEnded:Connect(onKeyRelease)

-- Loop to handle flight movement
while true do
    if humanoid:GetState() == Enum.HumanoidStateType.Flying then
        local forwardVector = character.CFrame.lookVector
        local rightVector = character.CFrame.rightVector
        local moveDirection = (forwardVector * (game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) and 1 or 0) 
            - forwardVector * (game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) and 1 or 0) 
            + rightVector * (game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) and 1 or 0) 
            - rightVector * (game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) and 1 or 0))
        
        if moveDirection.Magnitude > 0 then
            character:SetPrimaryPartCFrame(character:GetPrimaryPartCFrame() + moveDirection.Unit * flySpeed)
        end
    end
    
    wait()
end
