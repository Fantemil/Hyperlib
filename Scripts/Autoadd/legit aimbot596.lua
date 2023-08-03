-- Settings --
getgenv().Settings = {
   Aimbot = true,
   
   Adjust_Bullet_Drop = true,
   Target_Prediction = true,
   Realistic_Aiming_Speed = true,

   Hitscan_Priority = "Head", -- Head, Torso, Closest
   Hitscans = { { "Head", true }, { "Body", true }, { "Limbs", false } },

   Smoothing_Type = "Exponential", -- Exponential (For realistic aiming but isn't as good as Linear) / Linear
   Randomization = 1,

   Smoothing = 20,
   FOV = 8,
   FOVType = "Dynamic", -- Dynamic / Static

   Wallbang = true,
   MaxWalls = 2,

   ShowDebugMenu = true,

   DrawFOVCircle = true,
   FOVCircleSettings = {
       Color = Color3.fromRGB(255, 255, 255),
       Transparency = 1,
       Thickness = 1,
   }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nexilist/MyScripts/main/Pishy%20Pampor.lua", true))()