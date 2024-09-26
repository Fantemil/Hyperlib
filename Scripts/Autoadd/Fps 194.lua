while true do
    local args = {
        [1] = math.random(6, 999999999)
    }
 
    game:GetService("ReplicatedStorage").FPSUpdateEventIKnowYouReCheater:FireServer(unpack(args))
    wait(0.01)
end