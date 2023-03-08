getgenv().fov = 180 -- Any angle between 0-180 degrees
getgenv().visibleCheck = false -- Checks if the target is behind a wall
getgenv().randomization = 0 -- A factor for the maximum randomization offset
getgenv().headChance = 0.5 -- A factor for the chance to hit a headshot with random hitpart
getgenv().targetedPart = "Head" -- "Head", "Torso" or "Random"

loadstring(game:HttpGet("https://raw.githubusercontent.com/Spoorloos/scripts/main/silent_aim_v2.lua"))()