local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local AuraEquipRemote = Remotes:WaitForChild("AuraEquip")

local args = {
    [1] = ReplicatedStorage:WaitForChild("Auras"):WaitForChild("Gargantua")
}

AuraEquipRemote:FireServer(unpack(args))