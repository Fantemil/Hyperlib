local args = {
    [1] = "Wolverine",
    [2] = -100000000 -- enter how much money u want
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PurchaseCharNEW"):FireServer(unpack(args))

wait(1)

local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 

ts:Teleport(game.PlaceId, p)