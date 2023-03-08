while wait() do
local args = {
   [1] = (0/0),
   [2] = CFrame.new(Vector3.new(-39.07132339477539, 11.168498039245605, 65.45663452148438), Vector3.new(-0, -0.25881797075271606, -0.9659261703491211)),
   [3] = "Front"
}

game:GetService("ReplicatedStorage").Kick:FireServer(unpack(args))
end