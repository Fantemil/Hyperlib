getgenv().ADGKNI = 'SCRIPT_KEY' -- get your key at https://syrexhub.netlify.app/keysystem

getgenv().Config = {
    Items = { ConsumeFruits = false, tptofruits = false },
    Upgrade = { autoupgrade = false },
    Rolls = { autoRoll = false },
    Settings = { savegpu = false }
}

loadstring(game:HttpGet('https://syrexhub.netlify.app/raw/syrexhub'))()
