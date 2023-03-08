local args = {
   [1] = "SetAsync",
   [2] = "EquippedGear",
   [3] = "Epic Sword"
}
game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(unpack(args))