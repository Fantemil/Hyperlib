while true do
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=10921355261"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
game.Players.LocalPlayer.Character.Humanoid.Jump = false
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=10921308158" 
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=10921307241"      wait(1)
end