-- Get the player's character
local character = game:GetService("Players").LocalPlayer.Character

-- Get the right arm of the character
local rightArm = character:FindFirstChild("Right Arm")

-- Create a mouse object and get the player's mouse
local mouse = game:GetService("Players").LocalPlayer:GetMouse()

-- Define a function to update the right arm's CFrame based on the mouse's position
local function updateRightArm()
    if rightArm then
        local mouseHit, mousePosition = mouse.Hit, mouse.Hit.p
        local rightShoulder = rightArm:FindFirstChild("RightShoulder")
        if rightShoulder then
            local offset = rightShoulder.CFrame:vectorToObjectSpace(mousePosition)
            rightShoulder.C0 = CFrame.new(rightShoulder.C0.p) * CFrame.Angles(0, math.atan2(offset.Z, -offset.Y), math.atan2(offset.X, -offset.Y))
        end
    end
end

-- Connect the mouse's Move event to the updateRightArm function
mouse.Move:Connect(updateRightArm)
