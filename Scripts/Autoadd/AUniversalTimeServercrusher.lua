while wait() do
local args = {
    [1] = "PAC-MAN"
}

game:GetService("ReplicatedStorage").Emotes.run:FireServer(unpack(args))

local args = {
    [1] = "FNF"
}

game:GetService("ReplicatedStorage").Emotes.run:FireServer(unpack(args))
end