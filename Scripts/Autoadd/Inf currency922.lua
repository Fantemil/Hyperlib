while wait () do
local args = {
    [1] = workspace.Map.SILVERCHESTS.Lava2
}

game:GetService("ReplicatedStorage").Remotes.OpenChest:FireServer(unpack(args))
end