local args = {
   [1] = "Tatara", -- change to kagunes/quinques you want
   [2] = "Slot1"
}

game:GetService("ReplicatedStorage").Remotes.Slotfunction:InvokeServer(unpack(args))