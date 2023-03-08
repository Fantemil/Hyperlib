while true do
local args = {
   [1] = "First",
   [2] = 1
}

game:GetService("ReplicatedStorage").RE.ticket:FireServer(unpack(args))
wait(0.0001)
end