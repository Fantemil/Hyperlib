local function measureExecutionTime(codeBlock)
    local startTime = os.clock()
    codeBlock()
    local endTime = os.clock()
    local elapsedTime = endTime - startTime
    return elapsedTime
end

local function classifyPerformance(time)
    if time < 0.1 then
        return "Perfect"
    elseif time < 0.25 then
      return "Excellent"
    elseif time < 0.5 then
        return "Great"
    elseif time < 0.75 then
        return "Considerable"
    elseif time < 1 then
        return "Average"
    elseif time < 2 then
        return "Poor"
    else
        return "Bad"
    end
end

local time = measureExecutionTime(function()
    -- // Example code. Replace with your own code
    local sum = 0
    for i = 1, 1000000 do
        sum = sum + i
    end
    print(sum)
end)
print(string.format("Execution time: %.6f seconds - Performance: %s", time, classifyPerformance(time)))
