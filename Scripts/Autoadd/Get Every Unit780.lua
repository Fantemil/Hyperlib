-- Change The Spider Tv To Whatever Unit You Like It Will Appear In Your Inventory
local args = {
    [1] = "Spider Tv"
}

game:GetService("ReplicatedStorage"):WaitForChild("InteractItem"):InvokeServer(unpack(args))
