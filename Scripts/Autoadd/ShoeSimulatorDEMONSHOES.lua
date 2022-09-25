local args = {

   [1] = {
       [1] = "Equip",
       [2] = "Shoes",
       [3] = "Demon Shoes",--Robux Shoe
       [4] = true
   }
}

game:GetService("ReplicatedStorage").Events.Buy:FireServer(unpack(args))