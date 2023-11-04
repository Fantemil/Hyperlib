local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")

local initialSpinSpeed = 1
local maxSpinSpeed = 10
local accelerationRate = 1

local function spinCharacter()
    local spinSpeed = initialSpinSpeed
    
    while true do
        character:SetPrimaryPartCFrame(character.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(spinSpeed), 0))
        wait(0.04)
        
        spinSpeed = math.min(spinSpeed + accelerationRate, maxSpinSpeed)
    end
end

spinCharacter()
