local args = {

   [1] = {
       [1] = "Equip",
       [2] = "Ranges",
       [3] = "Granpa Ring",--Change Anything You Want
       [4] = true
   }
}

game:GetService("ReplicatedStorage").Events.Buy:FireServer(unpack(args))