local args = {
   [1] = 16,
   [2] = Vector3.new(-312.49591064453125, 5.555589199066162, 3.501185655593872)
}

game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(unpack(args))