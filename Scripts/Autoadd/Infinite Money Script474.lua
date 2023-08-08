--[[
 WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--Made By: Shag420#6729

getgenv().Shag420 = true 
repeat
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Robbery_Framework.Objects.Money.Handle.CFrame
fireproximityprompt(game.workspace.Robbery_Framework.Objects.Money.Handle.ProximityPrompt)
task.wait()
until game.Players.LocalPlayer.otherStats.Argent.Value == game.Players.LocalPlayer.otherStats.Argent.MaxValue or Shag420 == false