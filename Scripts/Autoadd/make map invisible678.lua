for _,v in pairs(game.Workspace:GetDescendants()) do
local args = {
    [1] = v,
    [2] = 1
}

game:GetService("ReplicatedStorage").Transparency:FireServer(unpack(args))

end