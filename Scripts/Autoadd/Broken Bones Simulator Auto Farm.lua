getgenv().autofarm = true
while autofarm == true do

local args = {
    [1] = {
        ["Total"] = math.huge,
        ["Bruises"] = math.huge,
        ["Fractures"] = math.huge,
        ["Speed"] = math.huge,
        ["TestingNewInjury"] = math.huge,
        ["Sprains"] = math.huge,
        ["Breaks"] = math.huge
    }
}

game:GetService("ReplicatedStorage").Remotes.Player_NewRun:FireServer(unpack(args))

wait()
end