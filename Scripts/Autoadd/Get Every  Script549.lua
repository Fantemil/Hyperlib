-- Change the Number 9 to the Numbered car you like in the spawn Car GUI For Example if You Change it to 1 then it will Spawn the First Car in The Spawn Car GUI
local args = {
    [1] = "carcrash9"
}

game:GetService("ReplicatedStorage"):WaitForChild("SpawnCar"):FireServer(unpack(args))
