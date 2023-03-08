local replicatedStorage = game:GetService("ReplicatedStorage")
local normalCrateOpenEvent = replicatedStorage.Events.NormalCrateOpen
local timer = game:GetService("RunService").RenderStepped:Connect(function()
    local args = {
    [1] = "Free Case",
    [2] = 7
}
    normalCrateOpenEvent:FireServer(unpack(args))
end)