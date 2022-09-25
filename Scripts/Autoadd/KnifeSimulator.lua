while wait(0.1) do
local args = {
    [1] = "hit",
    [2] = {}
}
game:GetService("ReplicatedStorage").forhackers:InvokeServer(unpack(args))
local args = {
    [1] = "throw",
    [2] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0))
}

game:GetService("ReplicatedStorage").forhackers:InvokeServer(unpack(args))
end