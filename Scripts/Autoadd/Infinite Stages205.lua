_G.catlover = true

while _G.catlover == true do
wait()
local args = {
    [1] = 69420,
    [2] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("Checkpoint Touched"):FireServer(unpack(args))
end
