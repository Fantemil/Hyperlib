local lplr = game.Players.LocalPlayer
while true do
	task.wait()
	local args = {
	    [1] = true,
	    [2] = "Classic",
	    [3] = lplr.UserId.." : Key Gen #$%^&#&$($^#*EndGame"
	}
	
	game:GetService("ReplicatedStorage").Events.GameFinalOutcome:FireServer(unpack(args))
end