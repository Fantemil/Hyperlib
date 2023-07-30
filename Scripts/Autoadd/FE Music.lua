for i = 1,1 do --this is what amplifies the sound, pretty much breaks if it's more than 1,10
    local mainThing = "PlayAudio"
    local usefulTable = {
        ["Echo"] = true,
        ["DistantSoundVolume"] = 1000, --another volume thingy, keep at 1k for best results
        ["Origin"] = workspace.rocket.boost,
        ["Instance"] = game:GetService("Players").LocalPlayer.Backpack.Pistol.Handle["1"].FireSounds.FireSound,
        ["DistantSoundIds"] = {
            [1] = 5409360995 --sound id here (default = gun shot id)
        },
        ["Silenced"] = false
    }
    local uselessTable = {
        ["AmmoPerMag"] = 12,
        ["RaisePitch"] = false,
        ["Origin"] = game:GetService("Players").LocalPlayer.Backpack.Pistol.Handle.GunMuzzlePoint1,
        ["Instance"] = game:GetService("Players").LocalPlayer.Backpack.Pistol.Handle["1"].LowAmmoSound,
        ["CurrentAmmo"] = 12
    }
    local randomVal = true --no clue what this does

    game:GetService("ReplicatedStorage").Events.gunEvent:Fire(mainThing, usefulTable, uselessTable, randomVal)
end