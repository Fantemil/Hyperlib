local args = {
   [1] = "Add",
   [2] = "Cash",
   [3] = 10000000
}
game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(unpack(args))