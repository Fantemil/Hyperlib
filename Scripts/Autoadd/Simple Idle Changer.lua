--[[ Made by ThroughTheFireAndFlames#9925

       Simple Idle Changer [Open Source]

--]]

getgenv().IdleID = "1014390418" -- Your Idle Animation  ID here

repeat task.wait() until game:IsLoaded();
game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://" .. getgenv().IdleID
game.Players.LocalPlayer.Character.Animate.idle.Animation2:Destroy();