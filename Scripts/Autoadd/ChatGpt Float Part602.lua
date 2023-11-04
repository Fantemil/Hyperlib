local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local block = Instance.new("Part")
block.Size = Vector3.new(10, 1, 10) -- Adjust the size as needed
block.Anchored = true
block.Transparency = 0.5
block.Parent = workspace

local runService = game:GetService("RunService")

local function rainbowColor(t)
    local frequency = 0.5 -- Adjust the frequency to control the speed of the color change
    local r = math.sin(frequency*t + 0) * 127 + 128
    local g = math.sin(frequency*t + 2*math.pi/3) * 127 + 128
    local b = math.sin(frequency*t + 4*math.pi/3) * 127 + 128
    return Color3.new(r/255, g/255, b/255)
end

local function updateColor()
    while true do
        local t = tick()
        block.BrickColor = BrickColor.new(rainbowColor(t))
        wait(0.1)
    end
end

coroutine.wrap(updateColor)()

local function checkAirborne()
    while true do
        if character and character:FindFirstChild("Humanoid") then
            local humanoid = character.Humanoid
            if humanoid:GetState() == Enum.HumanoidStateType.Seated then
                local targetPosition = character.HumanoidRootPart.Position + Vector3.new(0, -5, 0)
                block.CFrame = CFrame.new(targetPosition)
            else
                block.CFrame = CFrame.new(character.HumanoidRootPart.Position) * CFrame.new(0, -5, 0)
            end
        end
        wait(0.1)
    end
end

checkAirborne()
