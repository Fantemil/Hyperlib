--Jitter1337#6557

game:GetService("RunService").RenderStepped:connect(function()
local args = {
    [1] = "King Roll"
}

game:GetService("ReplicatedStorage").SpawnCar:FireServer(unpack(args))
end);