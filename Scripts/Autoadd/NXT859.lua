local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/StepBroFurious/Script/main/HydraHubUi.lua'))()
local Window = UILib.new("Blade Ball", game.Players.LocalPlayer.UserId, "NXT. Member")
local Category1 = Window:Category("Main", "http://www.roblox.com/asset/?id=8395621517")
local SubButton1 = Category1:Button("Combat", "http://www.roblox.com/asset/?id=8395747586")
local Section1 = SubButton1:Section("Section", "Left")
Section1:Button({
    Title = "Circle Parry",
    ButtonName = "Start",
    Description = "X to stop",
    }, function(value)
    getgenv().visualizer = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/RedCircleBlock"))()
end)
Section1:Button({
    Title = "AI Parry",
    ButtonName = "Start",
    Description = "AI",
    }, function(value)
getgenv().Mode = "AI" -- "AimOnly","Rage", "AI" 
getgenv().ForceWin = false --100% Win Need Telekenis 
getgenv().AutoUseSkill = true
getgenv().BaseVelocity = 0 --Base On The Server, IDK Where To Get it It Should Be 4-6 Or 0 (Old Server) 
getgenv().BasePredictVelocity = 3.4 -- Should be From 3-3.5 Work Good With 3 If Old Server 
getgenv().VisualizePath = true -- false // 
getgenv().AutoSpamClickDetect = true -- Spam Click If Near Other Player 
getgenv().CloseRangeAttack = true -- Just Move Forward To The Last Character 
getgenv().AutoGetVelocity = false -- Need The Ball To Be Stopped 
getgenv().AutoClickKeyBind = "X" -- Need The Ball To Be Stopped 
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fd07660d92cb26891e9acfab9f0c6ba4.lua"))() 
end)