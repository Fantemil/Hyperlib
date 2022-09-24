while true do

local args = {
    [1] = {
        ["Total"] = 99999999999999999999,
        ["Bruises"] = 99999999999999999999,
        ["Fractures"] = 99999999999999999999,
        ["Speed"] = 99999999999999999999,
        ["TestingNewInjury"] = 99999999999999999999,
        ["Sprains"] = 99999999999999999999,
        ["Breaks"] = 99999999999999999999
    }
}

game:GetService("ReplicatedStorage").Remotes.Player_NewRun:FireServer(unpack(args))
wait(0.1)
end