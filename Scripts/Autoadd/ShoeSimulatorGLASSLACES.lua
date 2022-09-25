local args = {

   [1] = {
       [1] = "Equip",
       [2] = "Laces",
       [3] = "Glass", --Change Anything You Want
       [4] = true
   }
}

game:GetService("ReplicatedStorage").Events.Buy:FireServer(unpack(args))