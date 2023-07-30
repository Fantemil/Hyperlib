local args = {
    [1] = "Player"
 }

 game:GetService("ReplicatedStorage").RemoteEvents.SwitchPlayers:FireServer(unpack(args))