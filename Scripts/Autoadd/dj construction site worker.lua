local args = {
    [1] = "Explosive Riot", --tower or perk name, can be find on replicatedstorage
    [2] = 2143735873, --dont change
    [3] = "Perk" --change to "Tower" if its not a perk
}

game:GetService("ReplicatedStorage"):WaitForChild("GiveItemRewards"):InvokeServer(unpack(args))
