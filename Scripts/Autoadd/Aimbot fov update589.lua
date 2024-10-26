   _G.config = {
    Fov = 30,
    Smoothness = 1,
    Prediction = 0, -- recommend 0.05 0.03
    TargetPart = "Head", -- "HumanoidRootPart" "Torso"
    TeamCheck = false,
    WallCheck = false,
    Distance = false, 
    MaxDistance = 10000, 
    FovColor = Color3.fromRGB(65, 105, 225)
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/D0LLYNHO/AIMBOT-FOV/main/MOBILE-BETA-0.4", true))()
