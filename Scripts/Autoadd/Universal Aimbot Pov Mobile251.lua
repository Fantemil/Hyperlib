-- Config
_G.config = {
    fov = 60,
    maxDistance = 400,
    maxTransparency = 0.1,
    teamCheck = true,
    targetPart = "Head", -- HumanoidRootPart
    wallCheck = true -- a little buggy
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/D0LLYNHO/AIMBOT-FOV/main/MOBILE", true))()