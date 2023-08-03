_G.InfFish = true -- Change to false if you want to stop

while _G.InfFish == true do
local args = {
    [1] = {
        [5002102] = 6
    }
}

game:GetService("ReplicatedStorage").ServerMsg.CatchFish:FireServer(unpack(args))
wait(0.1)
end