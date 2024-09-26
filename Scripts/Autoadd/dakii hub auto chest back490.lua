getgenv().Setting = {
    ["Team"] = "Marines", -- Start With Team Pirates, Marines
    ["WhiteScreen"] = false, -- White Screen
    ["FpsBoost"] = false, -- Fps Boost
    ["AutoRejoin"] = true, -- AutoRejoin
    ["RST"] = 1.5, -- Time Reset Character
    ["Settings"] = {
        ["StopItems"] = true, -- Stop Item Legendary
        ["SMKD"] = true -- Summon And Kill Dark Beard
    },
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/m1M-Plqer819/dakiiuem/main/main/autochest.lua", true))()