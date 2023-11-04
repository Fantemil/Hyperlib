Game.Workspace.Gravity = 0
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://181526230"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 5
Sound.Playing = true
Sound.Looped = false
Sound.SoundId = "rbxassetid://4898328740"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1
wait(0)
local MyNumber = 1

while true do 
	MyNumber += 1
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0);
	game.Lighting.Brightness = (MyNumber)
	wait(0.03)
	if MyNumber == 100 then
		break
	end
end
wait(0)
k:Stop()
Game.Workspace.Gravity = 196.2
game.Lighting.Brightness = 2