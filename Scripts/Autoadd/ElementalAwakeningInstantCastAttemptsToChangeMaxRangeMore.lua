local players = game.GetService(game, "Players")
local repstorage = game.GetService(game, "ReplicatedStorage")
local spells = require(repstorage.SpellLibrary)

for i,v in next, spells do
    if spells[i].MagicCircle then
        spells[i].MagicCircle = "Gravity"
    end
    if spells[i].Charge then
        spells[i].Charge = true
    end
    if spells[i].Anim then
        spells[i].Anim = "Cast"
    end
    if spells[i].CastTime then
        spells[i].CastTime = -1
    end
    if spells[i].CanMove then
        spells[i].CanMove = true
    end
    if spells[i].ChargeMultiplier then
        spells[i].ChargeMultiplier = 10^1000
    end
    if spells[i].EndLag then
        spells[i].EndLag = 0
    end
    if spells[i].MaxChargeEndlag then
        spells[i].MaxChargeEndlag = 0
    end
    if spells[i].MaxCharge then
        spells[i].MaxCharge = 10^1000
    end
    if spells[i].Spin then
        spells[i].Spin = false
    end
    if spells[i].Range then
        spells[i].Range = 10^1000
    end
end