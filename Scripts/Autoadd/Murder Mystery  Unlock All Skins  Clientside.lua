local WeaponOwnedRange = {
min=1,
max=5
}

local DataBase, PlayerData = getrenv()._G.Database, getrenv()._G.PlayerData

local newOwned = {}

for i,v in next, DataBase.Item do
newOwned[i] = math.random(WeaponOwnedRange.min, WeaponOwnedRange.max) -- newOwned[Weapon]: ItemCount
end

local PlayerWeapons = PlayerData.Weapons

game:GetService("RunService"):BindToRenderStep("InventoryUpdate", 0, function()
PlayerWeapons.Owned = newOwned
end)

game.Players.LocalPlayer.Character.Humanoid.Health = 0