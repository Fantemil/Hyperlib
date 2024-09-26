-- \\ nblm.cc on top ;; .gg/Sk2a6UycSF
-- \\ pc only, tested on solara
-- \\ table can update, no need to rj!
getgenv().fag = {
    Aimbot = {
        Keybind = Enum.KeyCode.C,
        fagbot = 0.157,
        Prediction = 0.1247724521,

        ShakeEnabled = false,
        Shake = 0,
        
        Amount = 0.9,
        Amount = 0.9,
        Style = "Back",
        Direction = "Inout",

        TargetPart = "HumanoidRootPart",
    
    },
    ['HitBox'] = {
        Part = "HumanoidRootPart",
    },
    ['Resolver'] = {
        Enabled = false,
    },
    ['Silent'] = {
        Prediction = 0.116,
        Detection = {Close = 27, Mid = 38, Far = math.huge},
    },
    ['SpecificDis'] = {
        Enabled = true,
        Prediction = {
            Close = 0.116243115666,
            Mid = 0.1188237,
            Far = 0.1224451,
        },
    },
    ['OffSets'] = {
        Jump = {Amount = 0.90},
        Fall = {Amount = -1.50},
    },  
    ['FieldOfView'] = {
        Enabled = false,
        Size = 240,
        Color = Color3.fromRGB(255, 255, 255),
        Transparency = 1,
        Filled = false,
    },
    ['Air'] = {
        Enabled = true,
        AirPart = "Head",
    },
    ['Checks'] = {
        TargetDeath = true,
        PlayerDeath = true,
        PlayerDeath = true,
    },
    
    ['Macro'] = {
        Enabled = false,
        Keybind = "x",
        Speed = 0.0200,
        Type = "Third", -- "First", "Third"
    },
    
    ['Spin'] = {
        Enabled = true,
        SpinSpeed = 4900,
        Degrees = 360,
        Keybind = Enum.KeyCode.V,
    },
}
-- \\ nice 100 ping cfg
loadstring(game:HttpGet("https://raw.githubusercontent.com/Emplic/fagbot/main/nblm.cc"))()