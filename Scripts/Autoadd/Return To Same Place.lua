--[[Made by ThroughTheFireAndFlames#9925

       Return to same place after rejoin

--]]---------------------------------------------------

-- Note1: It saves your positions in diffrent games too.
-- Note2: To reset your location turn autoexe false, goto workspace and reset every folder named "LocationFile".
-- Note3: When u execute for the first time u wont feel any change so after executing put this inside autoexe and rejoin.

-----------------------------------
getgenv().ResetLocationFile = false -- Reset your current game location. [Rejoins you shortly after]
-----------------------------------
getgenv().AutoExecute = true -- Dont touch.
getgenv().Keybind = "V" -- Change if you want.
getgenv().AutoTeleport = true -- If you set it false then you have to press the keybind u set in time. [Dont touch]
getgenv().TweenSpeed = 3 -- Change if you want.
getgenv().Tween = true -- Turn "false" for games that are safe to play.
getgenv().LocationSaveTime = 0.1 -- Change if you want. [Not recommended]

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/ReturnToPlace/main/Universal"))();