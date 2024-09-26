local replicatedStorage = game:GetService("ReplicatedStorage")
local knit = replicatedStorage:WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit")
local fightService = knit:WaitForChild("Services"):WaitForChild("FightService")
local startFightEvent = fightService:WaitForChild("RE"):WaitForChild("StartFight")
local finishFightEvent = fightService:WaitForChild("RE"):WaitForChild("FinishFight")

local running = true -- change to "false" to stop.

local function startFight()
    local args = {
        [1] = "Area_Tower"
    }
    startFightEvent:FireServer(unpack(args))
end

local function finishFight()
    local args = {
        [1] = "Area_Tower"
    }
    finishFightEvent:FireServer(unpack(args))
end

local function toggle()
    running = not running
    if running then
        print("Script is now running")
    else
        print("Script is now stopped")
    end
end

local function runFast()
    while true do
        if running then
            startFight()
            wait(0.1) -- Adjust the delay as needed
            finishFight()
            wait(0.1) -- Adjust the delay as needed
        else
            wait(1) -- Check every second if the script should run
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        toggle()
    end
end)

runFast() 
