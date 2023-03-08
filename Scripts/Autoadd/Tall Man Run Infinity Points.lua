while true do 
local args = {
    [1] = 1000000000
}

game:GetService("ReplicatedStorage").Events.Gaming.ScoreRE:FireServer(unpack(args))
wait (0.5)
end