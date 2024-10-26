local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remote = ReplicatedStorage:WaitForChild("Remote")
local LuckFunction = Remote:WaitForChild("Function"):WaitForChild("Luck"):WaitForChild("[C-S]TryLuck") -- Roll Remote
local LuckEvent = Remote:WaitForChild("Event"):WaitForChild("Luck"):WaitForChild("[C-S]TryRemoveAndSendLuck") -- Keep Remote

while true do
    LuckFunction:InvokeServer()
    wait(0.5) -- Change the wait here if too laggy
    LuckEvent:FireServer()
    task.wait() -- Change the wait here if too laggy
end