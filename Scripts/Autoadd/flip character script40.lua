local player = game.Players.LocalPlayer
local character = player.Character

local function flipCharacter()
    if character and character:FindFirstChild("HumanoidRootPart") then
        local rootPart = character.HumanoidRootPart
        local currentOrientation = rootPart.Orientation
        local newOrientation = Vector3.new(currentOrientation.X + 180, currentOrientation.Y, currentOrientation.Z)
        rootPart.Orientation = newOrientation
    end
end

flipCharacter()