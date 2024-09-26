getgenv().ScriptSettings = {
    Enabled = true,
    Prediction = 0.1433,
    HitscanPriority = "HumanoidRootPart",
    FOV = 200, 
    Scan = true,
    JumpOffset = 0, 
    TargetStrafeSettings = {
        Enabled = true,
        GiveTool = true,
        Speed = 1,
        Height = 0,
        Distance = 7
    },
    CameraLock = {
        Enabled = true,
        Smoothing = 0.5
    }
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/7dd05d66b1acebfeec4fb31431a601eb.lua"))()