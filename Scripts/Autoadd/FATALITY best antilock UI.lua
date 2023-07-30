UI VERSION (SYNAPSE ONLY) - loadstring(game:HttpGet("https://raw.githubusercontent.com/tailgater/Fatality/main/Synapse"))()
STANDALONE ANTI LOCK -
getgenv().Fatality = {
    Underground = {
        ["Enabled"] = true,
        ["Amount"] = 150,
        ["Keybind"] = "X",
    },
    Sky = {
        ["Enabled"] = true,
        ["Amount"] = 150,
        ["Keybind"] = "C",
    },
    CustomVelocity = {
        ["Enabled"] = true,
        ["CustomX"] = 200,
        ["CustomY"] = 200,
        ["CustomZ"] = 200,
        ["Keybind"] = "V",
    },
    Shake = {
        ["Enabled"] = true,
        ["Keybind"] = "B",
    },
    AimViewer = {
        ["Enabled"] = true,
        ["ViewTarget"] = false,
        ["RainbowBeam"] = true,
        ["Keybind"] = "T",
        ["Width"] = 0.1,
        ["Color"] = Color3.fromRGB(255, 0, 0),
    },
    Miscellaneous = {
        ["VelocityStatistics"] = false
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/tailgater/Fatality/main/StandaloneAntiLock", true))()

