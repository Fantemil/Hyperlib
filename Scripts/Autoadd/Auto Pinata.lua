local lib = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))

    local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network)
    local functions = Network.Fire, Network.Invoke
    local old 
    old = hookfunction(getupvalue(functions, 1) , function(...) return true end)

function JoinCoin(Coinid, PetTable)
    if Coinid ~= nil and PetTable ~= nil then
        lib.Network.Invoke("Join Coin", Coinid, PetTable)
    end
end

function FarmCoin(Coinid, PetTable)
    if Coinid ~= nil and PetTable ~= nil then
        for i, v in pairs(PetTable) do
            lib.Network.Fire("Farm Coin", Coinid, v)
        end
    end
end

function GetPetsTable()
    local PetsEquipped = {}
    for i, v in pairs(lib.PetCmds.GetEquipped()) do
        table.insert(PetsEquipped, v.uid)
    end
    return PetsEquipped
end


function farm()
for i, v in pairs(lib.Network.Invoke("Get Coins")) do
            if v.n == "Pinata" then
                Coinid = i
                if Coinid ~= nil then
                    JoinCoin(Coinid, GetPetsTable())
                    FarmCoin(Coinid, GetPetsTable())
                end
            end
        end
    end

while wait(.3) do
farm()
end