local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local maxHouses = 35 


local function givePermissionToAll()
    for _, player in pairs(Players:GetPlayers()) do
        for houseNumber = 1, maxHouses do
            local args = {
                [1] = "GivePermissionLoopToServer",
                [2] = player,
                [3] = houseNumber
            }

           
            ReplicatedStorage:FindFirstChild("RE"):FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
        end
    end
end


givePermissionToAll()