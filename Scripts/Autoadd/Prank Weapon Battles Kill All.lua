local args = {
   [1] = game:GetService("Players").Username,
   [2] = {
       ["duration"] = 7,
       ["handlePos"] = nil --[[Vector3]],
       ["upPower"] = 20,
       ["power"] = 8
   },
   [3] = game:GetService("Players").Username.Character
}

game:GetService("ReplicatedStorage")["\230\148\187\229\135\187\228\186\139\228\187\182"].GunShotRemoteFunction:FireServer(unpack(args))