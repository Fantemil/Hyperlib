local ReplicatedStorage = game:GetService("ReplicatedStorage")

local args = {
    [1] = false,
    [2] = true
}

local function invokeEvent()
    ReplicatedStorage:WaitForChild("Events"):WaitForChild("Spin"):InvokeServer(unpack(args))
end

while true do
    invokeEvent()
end
