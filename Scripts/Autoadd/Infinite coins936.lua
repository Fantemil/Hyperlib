while wait () do
local args = {
    [1] = 7
}

game:GetService("ReplicatedStorage").RDT:FireServer(unpack(args))
end