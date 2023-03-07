_G.AutoUpgrade = true

_G.UpgradeType = "Strength" -- Defence, Strength, Agility, Regen or Luck

while wait(2) do
if _G.AutoUpgrade == true then
local args = {
    [1] = _G.UpgradeType,
    [2] = ""
}
game:GetService("ReplicatedStorage").EventStorage.Upgrade:InvokeServer(unpack(args))
end
end