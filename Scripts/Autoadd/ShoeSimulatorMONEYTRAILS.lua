local args = {

   [1] = {
       [1] = "Equip",
       [2] = "Trails",
       [3] = "Money Trail",--Change Anything You Want
       [4] = true
   }
}

game:GetService("ReplicatedStorage").Events.Buy:FireServer(unpack(args))