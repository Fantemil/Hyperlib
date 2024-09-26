local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:FindFirstChildWhichIsA("Humanoid")
local animator = humanoid:FindFirstChildWhichIsA("Animator")
local animation = loadstring(game:HttpGet("https://pastebin.com/raw/yM1SBjUk"))()
if humanoid.RigType == Enum.HumanoidRigType.R15 then
    game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "Warning", ["Text"] = "Sorry this only works with R6!"})
else
    local anim = animator:LoadAnimation(animation)
    anim:Play()
    anim.TimePosition = 0.1
    anim:AdjustSpeed(0)
end