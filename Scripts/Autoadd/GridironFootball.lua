local args = {
   [1] = true,
   [2] = true,
   [3] = "QB",
}


game:GetService("ReplicatedStorage").Events["Become_Position"]:FireServer(unpack(args)) 