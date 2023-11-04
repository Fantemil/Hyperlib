--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--discord.gg/w-azure

getgenv()" -- "AimOnly","Rage", "AI"
getgenv().AIJumpState = true --Allow Ai To Jump
getgenv().StopAutoParry = false
getgenv().PingBased = true
getgenv().ForceWin = false --100% Win Need  Telekenis, Premium Only
getgenv().AutoUseSkill = false
getgenv().BaseVelocity = 0 --Base On The Server, IDK Where To Get it It Should Be 4-6 Or 0 (Old Server)
getgenv().BasePredictVelocity = 3.5 -- Should be From 3-3.5 Work Good With 3 If Old Server
getgenv().VisualizePath = true -- false //
getgenv().AutoSpamClickDetect = true -- Spam Click If Near Other Player
getgenv().CloseRangeAttack = false -- Just Move Forward To The Last Character
getgenv().AutoClickKeyBind = "X" -- Need The Ball To Be Stopped
getgenv().AutoClickThreshold = 0.2
getgenv().DistanceBall = 10
getgenv().NoUi = false

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fd07660d92cb26891e9acfab9f0c6ba4.lua"))()