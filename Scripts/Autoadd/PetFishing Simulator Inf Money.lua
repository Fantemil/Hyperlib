local repst = game:GetService("ReplicatedStorage")
local args = {
   [1] = {
       [5001101] = 14e14
   }
}

repst.ServerMsg.CatchFish:FireServer(unpack(args))