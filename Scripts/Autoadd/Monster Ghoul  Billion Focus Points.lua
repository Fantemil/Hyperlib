local args = {
   [1] = "1563163",
   [2] = "YenAddButton",
   [3] = -100000000000 
}
 
game:GetService("Players").LocalPlayer.StorageFile.statusfunction:InvokeServer(unpack(args))
wait(1)
local args = {
   [1] = "1563163",
   [2] = "ReputationAddButton",
   [3] = 100000000000 
}
 
game:GetService("Players").LocalPlayer.StorageFile.statusfunction:InvokeServer(unpack(args))
wait(1)
local args = {
    [1] = "Secured1",
    [2] = game:GetService("Players").LocalPlayer.StorageFile
}

game:GetService("ReplicatedStorage").Remotes.ReppCashhout:InvokeServer(unpack(args))

wait(1)
local args = {
   [1] = "1563163",
   [2] = "ReputationAddButton",
   [3] = -100000000000 
}
 
game:GetService("Players").LocalPlayer.StorageFile.statusfunction:InvokeServer(unpack(args))