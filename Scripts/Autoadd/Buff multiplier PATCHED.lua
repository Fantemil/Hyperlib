for v = 1, 1000 do -- The value 1000 can be changed.
   local args = {
       [1] = "Toshiro's Scarf", -- Whatever accessory that gives buffs.
       [2] = true
   }
   
   game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):WaitForChild("Initiate_Server"):FireServer(unpack(args))
end