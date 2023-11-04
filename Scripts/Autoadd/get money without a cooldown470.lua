local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local args = {
    [1] = Players.LocalPlayer
}

local function invokePayIncome()
    ReplicatedStorage:WaitForChild("Knit")
        :WaitForChild("Services")
        :WaitForChild("TycoonService")
        :WaitForChild("RF")
        :WaitForChild("PayIncome")
        :InvokeServer(unpack(args))
end

local function renderSteppedFunction()
    -- Add your condition here to determine when to stop the loop
    -- For example, you can use a variable to count the number of times to execute the function
    local numberOfExecutions = 10  -- Change this to the desired number of iterations

    if numberOfExecutions > 0 then
        invokePayIncome()
        numberOfExecutions = numberOfExecutions - 1
    else
        -- Stop the loop when the condition is met
        RunService:UnbindFromRenderStep("IncomeLoop")
    end
end

-- Start the loop when the RenderStepped event fires
RunService.RenderStepped:Connect(renderSteppedFunction)
