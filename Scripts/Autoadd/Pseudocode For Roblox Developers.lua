-- Define a constant for the maximum angle the head can turn
local MAX_ANGLE = math.rad(80)

-- Define a variable to store the player object
local player = game.Players.LocalPlayer

-- Define a function to calculate the angle between two vectors
function angleBetweenVectors(vec1, vec2)
    return math.acos(math.clamp(vec1.Unit:Dot(vec2.Unit), -1, 1))
end

-- Define a function to update the head orientation based on the mouse position
function updateHeadOrientation()
    -- Get the mouse position relative to the player's screen
    local mousePosition = game:GetService("UserInputService"):GetMouseLocation()

    -- Calculate the direction from the player's head to the mouse position
    local headDirection = (mousePosition - player.PlayerGui.ScreenGui.Head.Position).Unit

    -- Calculate the angle between the head direction and the player's torso direction
    local torsoDirection = player.Character.HumanoidRootPart.CFrame.LookVector
    local angle = angleBetweenVectors(headDirection, torsoDirection)

    -- Limit the angle to the maximum angle
    if angle > MAX_ANGLE then
        angle = MAX_ANGLE
    end

    -- Calculate the head rotation based on the angle
    local headRotation = CFrame.Angles(-angle, 0, 0)

    -- Set the head CFrame to the rotation plus the torso CFrame
    player.Character.Head.CFrame = headRotation * player.Character.HumanoidRootPart.CFrame
end

-- Bind the updateHeadOrientation function to the RenderStepped event
game:GetService("RunService").RenderStepped:Connect(updateHeadOrientation)
