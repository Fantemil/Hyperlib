local modulex = require(game:GetService("ReplicatedStorage").SharedModules.Data.Tools)
for i,v in pairs(modulex) do
    modulex[i]["Speed"] = math.huge
end

local modulex = require(game:GetService("ReplicatedStorage").SharedModules.Constants)
modulex.MinMiningTime = 0
modulex.MaxMiningTime = 0
modulex.MaxSelectionDistance = 12

local LoadModule = require(game:GetService("ReplicatedStorage").LoadModule);
local ChunkUtil = LoadModule("ChunkUtil");
local Network = LoadModule("Network");
local LocalData = LoadModule("LocalData");
local Blocks = LoadModule("Blocks");
local GetCurrencyMultiplier = LoadModule("GetCurrencyMultiplier");
local GetRebirthCost = LoadModule("GetRebirthCost");
local GetSellTeleport  = LoadModule("GetSellTeleport");
local GetBackpackStatus = LoadModule("GetBackpackStatus");

function TeleportTo(...)
    Network:FireServer("RemoveTeleporter")
    Network:FireServer("PlaceTeleporter",Vector3.new(...))
    Network:FireServer("GotoTeleporter")
end

function VectorToNumber(vec)
    return vec.X,vec.Y,vec.Z 
end

function CurrentBackpackValue()
    local numberr = 0 
    for i,v in pairs(LocalData:GetData("BackpackInventory")) do
        numberr += Blocks[v[1]]["Value"][2] * v[2]
    end
    return numberr * GetCurrencyMultiplier(game.Players.LocalPlayer, "Coins", LocalData:GetData("Passes"), LocalData:GetData("GemEnchantments"))
end

function RebirthCosts()
    return GetRebirthCost(LocalData:GetData("Rebirths"), LocalData:GetData("GemEnchantments"));
end

xd = nil
function TeleportAndMine(Name)
    if xd ~= nil then
        return
    end
    for i,v in pairs(game:GetService("Workspace").Chunks:GetDescendants()) do
        if v.Name == Name then
            TeleportTo(VectorToNumber(ChunkUtil.worldToCell(v.Position)))
            task.wait()
            Network:FireServer("MineBlock", ChunkUtil.worldToCell(v.Position))
            return v
        end
    end

    --Just so its farming some other stuff if it can't find the ore u want
    for i,v in pairs(game:GetService("Workspace").Chunks:GetDescendants()) do
        if v.Name == "chromite" then
            TeleportTo(VectorToNumber(ChunkUtil.worldToCell(v.Position)))
            task.wait()
            Network:FireServer("MineBlock", ChunkUtil.worldToCell(v.Position))
            return v
        end
    end
    for i,v in pairs(game:GetService("Workspace").Chunks:GetDescendants()) do
        if v.Name == "unobtanium" then
            TeleportTo(VectorToNumber(ChunkUtil.worldToCell(v.Position)))
            task.wait()
            Network:FireServer("MineBlock", ChunkUtil.worldToCell(v.Position))
            return v
        end
    end
    for i,v in pairs(game:GetService("Workspace").Chunks:GetDescendants()) do
        if v.Name == "fireshard" then
            TeleportTo(VectorToNumber(ChunkUtil.worldToCell(v.Position)))
            task.wait()
            Network:FireServer("MineBlock", ChunkUtil.worldToCell(v.Position))
            return v 
        end
    end
    for i,v in pairs(game:GetService("Workspace").Chunks:GetDescendants()) do
        if v.Name == "mythril" then
            TeleportTo(VectorToNumber(ChunkUtil.worldToCell(v.Position)))
            task.wait()
            Network:FireServer("MineBlock", ChunkUtil.worldToCell(v.Position))
            return v
        end
    end
end

spawn(function()
    while task.wait() do
        for i,v in pairs(game:GetService("Workspace").Chunks:GetDescendants()) do
            if v.Name ~= "larimar" and v.Name ~= "chromite" and v.Name ~= "unobtanium" and v.Name ~= "fireshard" and v.Name ~= "mythril" and v:IsA("Part") then
                v:Destroy()
            end
        end
    end
end)

while task.wait(0.1) do
    if CurrentBackpackValue() >= RebirthCosts() then
        print("Sell/Rebirth")
        Network:FireServer("Teleport", GetSellTeleport(game.Players.LocalPlayer));
        Network:FireServer("QuickSell");
        Network:FireServer("Rebirth");
    else
        xd = TeleportAndMine("larimar")
    end
end