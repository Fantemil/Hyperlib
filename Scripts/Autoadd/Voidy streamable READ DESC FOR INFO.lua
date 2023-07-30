_G.SilentAim = {
    --[[MAIN]]
    AimingMode = "Index", -- "Namecall" or "Index" || CANNOT BE CHANGED MID GAME 
    Key = "e",
    AimParts = {"All"},
    -- Aimparts = {"Head","UpperTorso","HumanoidRootPart","LowerTorso","LeftHand","RightHand","LeftLowerArm","RightLowerArm","LeftUpperArm","RightUpperArm","LeftFoot","LeftLowerLeg","LeftUpperLeg","RightLowerLeg","RightFoot","RightUpperLeg"},
    MainPart = "HumanoidRootPart",
    KeyMode = "Toggle", -- "Hold",
    Prediction = 0.1319,
    AutoPrediction = false,
    Notifications = false,
    --[[RESOLVER (EXPERIMENTAL VERSION)]]
    ResolverV1 = false, -- false uses HumanoidRootPart/Torso velocity | true uses ResolverAimpart velocity
    ResolverDelay = 0.195,
    ResolverAimpart = "HumanoidRootPart",
    AntiSky = false,
    AntiGround = false,
    ReversePrediction = false,
    --[[SELECTION]]
    FOVCheck = true, -- false just checks for closest player to ur cursor btw
    FOVColor = Color3.fromRGB(119,0,255),
    FOVSize = 100,
    FOVThickness = 2,
    FOVFilled = false,
    FOVTransparency = 1,
    DistancePriority = true,
    VisibleCheck = false,
    DownCheck = false,
    --[[VISUALS]] -- BTW THESE JUST SHOW U WHERE ITS AIMING
    Dot = true,
    DotColor = Color3.fromRGB(119,0,255),
    Tracer = true,
    TracerColor = Color3.fromRGB(119,0,255),
    Highlight = false,
    HighlightColor = Color3.fromRGB(119,0,255),
    --[[EXTRAS]]
    RandomizeShots = false,
    XRandomization = 500, -- x,y, and z are all divided by 1000 btw so its not gonna completely fucking shoot at the sky if u do 500
    YRandomization = 500,
    ZRandomization = 500,
    --[[LEAVE THESE ALONE UNLESS U KNOW WHAT UR DOING (literally nothing complicated)]]
    Enabled = true,
    AllowAim = true,
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/nyulachan/nyula/main/Standalones/FOVSilentV2", true))()