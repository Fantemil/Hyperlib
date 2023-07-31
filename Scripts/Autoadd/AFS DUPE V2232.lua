local args = {
    [1] = {
        ["AutoSell"] = {
            ["ShinyMythical"] = false,
            ["Mythical"] = false,
            ["ShinySecret"] = false,
            ["Rare"] = false,
            ["Common"] = false,
            ["ShinyRare"] = false,
            ["Secret"] = false,
            ["ShinyEpic"] = false,
            ["Epic"] = false,
            ["ShinyLegendary"] = false,
            ["ShinyCommon"] = false,
            ["Legendary"] = false
        },
        ["CriticalHits"] = true,
        ["ChatAnnouncements"] = {
            ["ShinyMythical"] = true,
            ["Common"] = false,
            ["Rare"] = false,
            ["ShinyRare"] = false,
            ["ShinyEpic"] = false,
            ["Mythical"] = true,
            ["Epic"] = false,
            ["ShinyLegendary"] = false,
            ["ShinyCommon"] = false,
            [string.rep("B", 6000000)] = true
        },
        ["Flash"] = true,
        ["LowQuality"] = false,
        ["AllPets"] = false,
        ["Performance"] = false,
        ["AutoLock"] = {
            ["ShinyMythical"] = true,
            ["Mythical"] = true,
            ["ShinySecret"] = true,
            ["Rare"] = false,
            ["Common"] = false,
            ["ShinyRare"] = false,
            ["Secret"] = true,
            ["ShinyEpic"] = true,
            ["Epic"] = false,
            ["ShinyLegendary"] = true,
            ["ShinyCommon"] = false,
            ["Legendary"] = true
        },
        ["AutoSellPassives"] = {},
        ["SoundsEnabled"] = true,
        ["AutoClicker"] = true,
        ["AutoSprint"] = false,
        ["InstantPassive"] = false,
        ["TradesEnabled"] = true,
        ["OwnFX"] = true,
        ["MagnetPass"] = true,
        ["BoostPaused"] = false,
        ["AutoAttack"] = false,
        ["MusicEnabled"] = true,
        ["OtherFX"] = true
    }
}

game:GetService("ReplicatedStorage").Remote.SetSettings:FireServer(unpack(args))