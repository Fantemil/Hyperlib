-- script generated with FinderX {:-------D} - 5picklebarry#6085

local gold = {
   [1] = game:GetService("Players").LocalPlayer.GoldCoins,
   [2] = 99999
}

game:GetService("ReplicatedStorage").ChangeValue:FireServer(unpack(gold))