-- << GetServices >>
local Players = game:GetService("Players")

-- << Variables >>
local BOMB_AMOUNT = 200-- how many bombs will be spawned.
local LocalPlayer = Players.LocalPlayer

assert(LocalPlayer.Character:FindFirstChild("FakeBomb"), "You need to equip the PrankBomb.")

for i = 1, BOMB_AMOUNT do
    LocalPlayer.Character.FakeBomb.Remote:FireServer(LocalPlayer.Character.Head.CFrame, 50)
end