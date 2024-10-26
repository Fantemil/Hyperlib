-- made by rodestriker on discord
local args = {
    [1] = "Dandy"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Voted"):InvokeServer(unpack(args))