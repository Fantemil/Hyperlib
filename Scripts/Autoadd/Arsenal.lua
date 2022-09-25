getgenv().AimPart = "Head" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}
getgenv().AimlockToggleKey = "X" -- Toggles Aimbot On/Off
getgenv().AimRadius = 30 -- How far away from someones character you want to lock on at
getgenv().ThirdPerson = false -- Locking onto someone in your Third Person POV
getgenv().FirstPerson = true -- Locking onto someone in your First Person POV
getgenv().WallCheck = true -- Check if Target is behind a wall
getgenv().TeamCheck = true -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)

loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/Universal-Scripts/main/Aimbot", true))()