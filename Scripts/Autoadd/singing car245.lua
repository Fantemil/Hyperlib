local radioSound = workspace.speakers.radio.sound
local driverSpeed = game.ReplicatedStorage.driverChangeSpeed

local function transformNumber(num)
    local minInput = 0
    local maxInput = 1000
    local minOutput = 55
    local maxOutput = 270
    
    local output = minOutput + ((num - minInput) / (maxInput - minInput)) * (maxOutput - minOutput)
    
    output = math.min(maxOutput, math.max(minOutput, output))
    
    return output
end

while wait() do
driverSpeed:InvokeServer(transformNumber(radioSound.PlaybackLoudness))
end