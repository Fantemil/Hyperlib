--[[ Made by ThroughTheFireAndFlames#9925

       Simple Run Changer [Open Source]

--]]

getgenv().RunID = "1150967949" -- Your Idle Animation  ID here

repeat task.wait() until game:IsLoaded();
game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "rbxassetid://" .. getgenv().RunID
