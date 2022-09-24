local args = {
   [1] = "AddplayerJetton",
   [2] = 10000000
}

game:GetService("ReplicatedStorage").HLK.Event.PlayerUserDataManger:FireServer(unpack(args))