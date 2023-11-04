mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Fake train"
tool.Activated:connect(function()
                local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://10811474704"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
wait(0)
song = Instance.new("Sound")
	
song.Parent = game.Players.LocalPlayer
song.Volume = 1
song.Playing = true
song.Looped = true
song.SoundId = "rbxassetid://10741352347" 
song.Name = "a-train"
song.PlaybackSpeed = 1
wait(0)
local MyNumber = 1

while true do 
	MyNumber += 1
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.6
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.6
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.6
	wait(0.01)
	if MyNumber == 600 then
	k:Stop()
	song.Volume = 0
	wait(0)
		break
	end
end

end)
tool.Parent = game.Players.LocalPlayer.Backpack

