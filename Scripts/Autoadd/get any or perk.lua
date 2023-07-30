local args = {
    [1] = "TOWER OR PERK NAME",
    [2] = 2143735873, --dont change
    [3] = "Perk OR Tower" --if its a tower put Tower if its a perk put Perk
}

game:GetService("ReplicatedStorage"):WaitForChild("GiveItemRewards"):InvokeServer(unpack(args))
