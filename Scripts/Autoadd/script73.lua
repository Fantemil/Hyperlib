getgenv().TargetTeamName = "Red"  -- Initial target team
getgenv().cooldown = 0  -- Cooldown in seconds between shots
getgenv().bulletSpeed = 49.5  -- Speed of the bullet in studs/second
getgenv().minPredictionDistance = 0  -- Minimum distance for prediction in studs
getgenv().maxPredictionDistance = 10  -- Maximum distance for prediction in studs
getgenv().lastShotTime = 0  -- Variable to track the last time a shot was fired

loadstring(game:HttpGet("https://pastebin.com/raw/g05mEMLH"))()