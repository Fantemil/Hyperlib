-- Get the player and their leaderstats
local player = game.Players.LocalPlayer
local leaderstats = player:WaitForChild("leaderstats")
local minutesStat = leaderstats:WaitForChild("Minutes")

-- Function to increment the "Minutes" stat
local function incrementMinutes()
    minutesStat.Value = minutesStat.Value + 1
end

-- Function to start the timer
local function startMinuteTimer()
    -- Repeat indefinitely
    while true do
        -- Wait for 60 seconds (1 minute)
        wait(1)
        
        -- Increment the "Minutes" stat
        incrementMinutes()
    end
end

-- Start the minute timer
startMinuteTimer()
