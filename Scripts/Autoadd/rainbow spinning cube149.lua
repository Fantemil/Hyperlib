local Players = game:GetService("Players")
local rainbowBlock = Instance.new("Part")
rainbowBlock.Size = Vector3.new(5, 5, 5)
rainbowBlock.Anchored = true
rainbowBlock.CanCollide = false

local rotationSpeed = 2 -- Adjust the speed of rotation as desired

rainbowBlock.Parent = game.Workspace

local function setPositionBehindCharacter(character, distance)
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if rootPart then
        local direction = -rootPart.CFrame.lookVector
        return rootPart.Position + direction * distance
    end
    return character.PrimaryPart.Position - Vector3.new(0, distance, 0)
end

local character = Players.LocalPlayer.Character
if character then
    rainbowBlock.Position = setPositionBehindCharacter(character, 15)
else
    character = Players.LocalPlayer.CharacterAdded:Wait()
    rainbowBlock.Position = setPositionBehindCharacter(character, 15)
end

local function setRainbowColor(part, angle)
    local sectorSize = 360 / 6 -- Number of color sectors in the rainbow (6 for ROYGBIV)
    local hue = (angle % 360) / sectorSize
    local maxColor = Color3.new(1, 1, 1)
    local minColor = Color3.new(0, 0, 0)
    local sectorIndex = math.floor(hue) % 6
    local t = hue - math.floor(hue)

    if sectorIndex == 0 then
        part.Color = maxColor:Lerp(Color3.new(1, 0, 0), t)
    elseif sectorIndex == 1 then
        part.Color = maxColor:Lerp(Color3.new(1, 1, 0), t)
    elseif sectorIndex == 2 then
        part.Color = maxColor:Lerp(Color3.new(0, 1, 0), t)
    elseif sectorIndex == 3 then
        part.Color = maxColor:Lerp(Color3.new(0, 1, 1), t)
    elseif sectorIndex == 4 then
        part.Color = maxColor:Lerp(Color3.new(0, 0, 1), t)
    else
        part.Color = maxColor:Lerp(Color3.new(1, 0, 1), t)
    end
end

while true do
    for angle = 0, 360, rotationSpeed do
        setRainbowColor(rainbowBlock, angle)
        rainbowBlock.Orientation = Vector3.new(0, angle, 0)
        wait()
    end
end
