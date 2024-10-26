local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PaintBuckets = workspace.PaintBuckets
local Remote = ReplicatedStorage.Remotes.CollectPaintCan

local function collectPaintCan(amount, index, bucketName)
    local args = {
        [1] = amount,
        [2] = PaintBuckets:FindFirstChild(bucketName)
    }

    if args[2] then
        Remote:FireServer(unpack(args))
    else
        warn("Paint bucket not found: " .. bucketName)
    end
end

local maxIterations = 134

for i = 1, maxIterations do

    local bucketName = tostring(i)
    local amount = 5 

    collectPaintCan(amount, i, bucketName)

    wait(0.5)
end