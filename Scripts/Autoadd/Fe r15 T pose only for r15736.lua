local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://2516930867"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(0)
k:AdjustSpeed(0)
wait(9999)
k:stop()