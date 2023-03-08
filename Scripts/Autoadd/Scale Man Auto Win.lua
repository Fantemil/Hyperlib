local args = {
    [1] = "ChangeCharSize",
    [2] = 1000 -- change to what ever size you want 0.0001 being the smallest 1000 being huge
}

game:GetService("ReplicatedStorage").Events.System.CharacterRE:FireServer(unpack(args))