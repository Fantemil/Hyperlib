local GC = getconnections or get_signal_cons
	if GC then
        game.StarterGui:SetCore("SendNotification", {
            Title = "		 ANTI - AFK",
            Text = "  		  ENABLED",
            Icon = "rbxassetid://10799956104",
            Duration = 5
        })
        wait(1)
		for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
            v:Disable()
		end
	end