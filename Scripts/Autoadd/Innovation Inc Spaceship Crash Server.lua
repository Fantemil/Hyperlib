local args = {
   [1] = Vector3.new(-206.81900024414062, 124.79998779296875, -883.2369384765625)
}

game:GetService("Players").LocalPlayer.Character.DisinfectionGrenadee.Throw:FireServer(unpack(args))

Grenade:

game.ReplicatedStorage.AddStarterGear:FireServer("DisinfectionGrenadee", true);