getgenv().Orbit = {
    Silent = {
        SilentToggle = 'P',
        Enabled = true,
        AimPart = "HumanoidRootPart",
        Prediction = 0.11645,
        ClosestPart = true
    },
    FOV = {
        Visible = true,
        Radius = 15,
    },

    Tracer = {
        TracerToggle = "E",
        Enabled = true,
        AimPart = "HumanoidRootPart",
        Prediction = 4.8,
        SmoothnessValue = 0.07,
        Smoothness = true,
        TraceClosestPart = false,
        UseTracerRadius = false,
        Radius = 150,
        ShowFOV = false
    },
    Resolver = {
        AutoResolve = true,
        Positive = 80,
        Negative = -40,
    },

    Extras = {
        WallCheck = true,
        UnlockedOnDeath = true,
    },
}
    
loadstring(game:HttpGet("https://raw.githubusercontent.com/primegotemdontworry/orbit-/main/orbits"))()