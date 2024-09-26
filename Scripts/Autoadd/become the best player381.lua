

-- add LEVELS ( CAN BREAK THE GAME)
local args = {
    [1] = 250000
}

game:GetService("ReplicatedStorage").Honeypot.Internal.RemoteStorage["AwardXp - RemoteEvent"]:FireServer(unpack(args))

-- ADD SIZE
local ohNumber1 = 5000000

game:GetService("ReplicatedStorage").Honeypot.Internal.RemoteStorage["AwardSpinSize - RemoteEvent"]:FireServer(ohNumber1)


-- ADD SPINS
while true do
task.wait()
local ohNumber1 = 3

game:GetService("ReplicatedStorage").Honeypot.Internal.RemoteStorage["ClaimPlaytimeReward - RemoteEvent"]:FireServer(ohNumber1)
end

--[[ set players to NEGATIVE -999999999999999999999 when they eat you.


local ohNumber1 = math.huge
game:GetService("ReplicatedStorage").Honeypot.Internal.RemoteStorage["AwardSpinSize - RemoteEvent"]:FireServer(ohNumber1)

--]]