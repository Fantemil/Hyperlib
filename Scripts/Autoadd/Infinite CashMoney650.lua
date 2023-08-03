local args = {
    [1] = {
        ["BadGraphics"] = false,
        ["Products"] = {},
        ["Rent"] = 100,
        ["Age"] = math.huge,
        ["TutorialsViewed"] = {},
        ["Happiness"] = math.huge,
        ["customBloppaID"] = game.Players.LocalPlayer.UserId,
        ["Hunger"] = math.huge,
        ["Cleanliness"] = math.huge,
        ["CashAdder"] = math.huge,
        ["PlayedAnimation"] = false,
        ["Energy"] = math.huge,
        ["Cash"] = math.huge
    },
    [2] = true
}

game:GetService("ReplicatedStorage").Save:FireServer(unpack(args))