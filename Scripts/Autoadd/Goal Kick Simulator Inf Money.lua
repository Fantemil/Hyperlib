local args = {
   [1] = "Throw",
   [2] = 0/0
}
game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))