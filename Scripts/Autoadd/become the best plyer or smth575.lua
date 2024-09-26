-- claim all passes

for i = 1, 5 do
    game:GetService("ReplicatedStorage").Communication.Events.Gibberish:FireServer()
end

--infinite money

local replicatedStorage = game:GetService("ReplicatedStorage")
local Folder = replicatedStorage:WaitForChild("Communication"):WaitForChild("Events")
local Count = 0
local target = nil

for _, child in ipairs(Folder:GetChildren()) do
    if child.Name == "Gibberish" then
        Count = Count + 1
        if Count == 10 then
            target = child
            break
        end
    end
end

if target then

while true do
task.wait()
    local player = game:GetService("Players").LocalPlayer
    local ohNumber1 = 1999
    target:FireServer(ohNumber1)
end
end


