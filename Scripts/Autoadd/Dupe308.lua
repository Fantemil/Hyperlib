local LockPet = game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("pets/lockPets")
local clientStores = require(game:GetService("Players").LocalPlayer.PlayerScripts.bsx_client.clientStores)
local stores = clientStores.stores
function GetRandomPet()
    return stores[game.Players.LocalPlayer]["_state"]["pets"][1]["guid"]
end

local arguments = {
    [1] = {
        [1] = {
            ["enabled"] = "\255",
            ["guid"] = GetRandomPet()
        }
    }
}


while task.wait() do 
    LockPet:FireServer(unpack(arguments))
end
