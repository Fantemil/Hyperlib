local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hood Pack", "DarkTheme")

local Tab = Window:NewTab("The Pack")
local TabSection = Tab:NewSection("Other")





TabSection:NewButton("Streamable-Silent", "go away", function()
-- 0.138
-- 0.11243
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChaseSYNX/Scripts/main/StreamableSilent"))()
DaHoodSettings.Prediction = 0.121
Aiming.TargetPart = {"Head", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "HumanoidRootPart", "LeftUpperLeg", "RightLowerLeg", "RightFoot", "LowerTorso"}
Aiming.FOV = 25
Aiming.FOVSides = 25
Aiming.HitChance = 400
Aiming.ShowFOV = false
end)

TabSection:NewButton("Smooth-CamLock", "go away", function()
getgenv().RecurringPoint = "UpperTorso"
getgenv().Hitbox = "UpperTorso"
getgenv().Keybind = "q" -- lock keybind
getgenv().AimbotStrengthAmount = 0.0421
getgenv().PredictionAmount = 11
getgenv().Radius = 25
getgenv().UsePrediction = true
getgenv().AimbotStrength = true
getgenv().FirstPerson = true
getgenv().ThirdPerson = true
getgenv().TeamCheck = false
getgenv().Enabled = true


-- main script use with silent aim

loadstring(game:HttpGet("https://raw.githubusercontent.com/ChaseSYNX/Scripts/main/Streamable-Camlock"))()
end)