while wait() do

local args = {
    [1] = "TreeSystem",
    [2] = "ProcessFood"
}

game:GetService("ReplicatedStorage").Assets.Remotes.Core:FireServer(unpack(args))

end