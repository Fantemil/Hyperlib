function Run()
        for _, sound in next, workspace:GetDescendants() do

  if sound:IsA("Sound") and sound.Name == "spoosky"  then
   sound:Play()
end
end
end

    local player = game.Players.LocalPlayer
local character = player.Character
 local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")
local Naruto = Instance.new("Animation")
Naruto.AnimationId = "rbxassetid://12772543293"
local Nar = animator:LoadAnimation(Naruto)
local uis = game:GetService("UserInputService")
 local ta = true
uis.InputBegan:Connect(function(input, e)
  if e then return end
  if input.KeyCode == Enum.KeyCode.C then


if ta == true then
Nar:Play()
Nar:AdjustSpeed(1)
Run()
ta = false
while ta == false do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 19
wait(0.01)
end

else
Nar:Stop() 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 19
ta = true
end
end
end)