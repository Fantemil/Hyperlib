 
while true do

local args = {
    [1] = "DiamondCoin",
    [2] = "id936323",
    [3] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Framework.Network.DestoryCoinServer:FireServer(unpack(args))

wait()
end