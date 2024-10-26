if not Game:IsLoaded() then Game.Loaded:Wait() end --> DO NOT DELETE
loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua",true))() --> DO NOT DELETE

--> Silent Aim | Global Table <--
getgenv().Silent = {
    Settings = {
        Toggled = true,
        AimPart = "HumanoidRootPart", --> HumanoidRootPart, UpperTorso, LowerTorso, Head <-- Main Parts
        HitChance = 100, 
        
        Prediction = {
            Enabled = true,
            Horizontal = 0.1347647464, --> X, Z
            Vertical = 0.1747467474, --> Y
        },
       
        Circle = {
            Visible = true,
            Color = Color3.fromRGB(255, 255, 255),
            Transparency = 0.1,
            Thickness = 1.5,
            NumSides = 1000,
            Radius = 35, --> Change Circle Size Here
            Filled = false,
        },
    },
}

-- Basic Silent-Aim [ DAHOOD GAMES ]
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealXORA/Roblox/Scripts/Basic%20Silent-Aim", true))()