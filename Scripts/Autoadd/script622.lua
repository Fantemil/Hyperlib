local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit")
local JobService = Knit:WaitForChild("Services"):WaitForChild("JobService")
local RE = JobService:WaitForChild("RE")
local GiveJobReward = RE:WaitForChild("GiveJobReward")
 
-- Function to spam the GiveJobReward event
local function spamGiveJobReward()
    while true do
        GiveJobReward:FireServer()
        wait(00.1)  -- Set a minimal delay (0 seconds) between each firing
    end
end
 
-- Start the spamming process
spawn(spamGiveJobReward)