getgenv().Kyouki = {
    Options = {
        Notifications = true, -- set to true if u wanna know when ur silent enabled/disabled
    },
    Silent = {
        ["Enabled"] = true,
        ["UseKeybind"] = true,-- using keybind to enable/disable silent aim
        ["Keybind"] = "p",-- use whatever key u want(works only if UseKeybind set to true)
        ["Predict"] = true,-- Using Prediction for silent
        ["Prediction"] = 0.156,-- Prediction value set to whatever u want
        ["Aimpart"] = "UpperTorso",-- aimpart of silent
        ["NearestCursorAimpart"] = true,-- u should set this to true if u don't wanna get caught
    }, 
    Camlock = {
        ["Enabled"] = true,
        ["Keybind"] = "C",-- set to any keybind u want
        ["Predict"] = false,
        ["Prediction"] = 0.1267,-- only works if predict set to true
        ["SmoothnessValue"] = 0.0881,-- smoothness value
        ["Shake"] = true,-- shaking screen
        ["ShakeValue"] = 10,-- value of shaking
        ["Aimpart"] = "HumanoidRootPart",-- u should not change that
        ["NearestCursorAimpart"] = true,
    },
    Fov = {
        Silent = {
            ["Visible"] = true,-- set to false if u don't want to see FOV circle
            ["Filled"] = true, -- only works if first setting set to true
            ["Size"] = 71,
            ["Thickness"] = 1.5,
            ["Transparency"] = 0.25,
            ["Color"] = Color3.fromRGB(0, 0, 0),
        },
        Camlock = {
            ["Visible"] = true,-- set to false if u don't want to see FOV circle
            ["Filled"] = false,-- set to true if u want to be ur circle filled also works only if first setting set to true
            ["Size"] = 71,-- size of FOV circle works only if Visible set to true
            ["Thickness"] = 1.5,
            ["Transparency"] = 0.25,-- transperency works only if Filled set to true
            ["Color"] = Color3.fromRGB(0, 0, 0),-- color of ur FOV circle :D
        },
    },
    Checks = {
        ["Wall"] = true,-- wallchecking
        ["Knocked"] = true,-- checking if ur oponent knocked down if yes it will unlock
        ["DisableOnDeath"] = true,
        ["DisableOutsideFov"] = false,
        ["AntiGroundShots"] = true,-- u should prob set it to true
    },
    Resolver = {
        ["Enabled"] = true,-- i don't think it can resolve desync
    },
    Macro = {
        ["Enabled"] = true,-- macro?? in a free streamable? hmm that's interesting
        ["Keybind"] = "q", -- keybind to enable macro(works only if Enabled set to true)
        ["Type"] = "Normal", -- ioioioioio mode only has normal mode(for now)
    },
    AutoPrediction = {
        ["Enabled"] = false, -- set to true if u want to ur prediction will change based on ur ping
    },
    GunFov = {
        ["Enabled"] = false, -- if true u can set different FOV for each gun(u can change FOV for every gun)
        ["DoubleBarrel"] = 22.5,
        ["Revolver"] = 27.5,
        ["Shotgun"] = 35,
        ["TacticalShotgun"] = 35,
        ["Smg"] = 25,
        ["Silencer"] = 32.5,
    },
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/maaaanyx/kyo/main/kyoukirewrite.lua"))()