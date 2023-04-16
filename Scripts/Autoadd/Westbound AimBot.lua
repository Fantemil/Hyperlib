-- // Settings
getgenv().Settings = {
    AimbotEnabled = true,
    AimbotFOVRadius = 150,
    AimbotKey = 'LeftControl',
    AimbotShowFOV = true,
    AimbotFOVColor = Color3.fromRGB(0, 125, 255),
    AimbotRange = 1000,
    AimbotWallCheck = true,
    AimbotHitPart = 'Head',
    AimbotTeamCheck = false,
    AimbotFriendCheck = false,
    AimbotWhitelistCheck = false,
    AimbotWhitelist = { }
}
loadstring(game:HttpGet('https://raw.githubusercontent.com/Mapple7777/WestboundAimbot/main/Main.lua'))()