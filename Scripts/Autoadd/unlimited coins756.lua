_G.unlimitedpoints = true

while _G.unlimitedpoints do
	wait()
	game:GetService("ReplicatedStorage"):WaitForChild("Scripts"):WaitForChild("Common"):WaitForChild("Event"):WaitForChild("RemoteEvent"):FireServer("player_"..game.Players.LocalPlayer.UserId.."_claim_online_gift", 1)
end