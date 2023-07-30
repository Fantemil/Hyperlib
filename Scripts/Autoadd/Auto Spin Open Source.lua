local family = {"YEAGER","ACKERMAN","REISS"} -- All Characters must be upper letters Example: SMITH
local famltext

function familyupdate()
	famltext = game:GetService("Players").LocalPlayer.PlayerGui.Interface.Customisation.Right.Family.Selected.Text
end

function spin()
	local spinbut = game:GetService("Players").LocalPlayer.PlayerGui.Interface.Customisation.Right.Family.Buttons.Roll
	local epreroll = game:GetService("Players").LocalPlayer.PlayerGui.Interface.Customisation.Notification.Accept
	for i,v in pairs(getconnections(epreroll.MouseButton1Click)) do
		v:Fire()
	end
	for i,v in pairs(getconnections(spinbut.MouseButton1Click)) do
		v:Fire()
	end
end

spin()

while true do
	wait(6)
	familyupdate()
	for i,v in pairs(family) do
		if v == famltext then
			wait(10)
			game.Players.LocalPlayer:Kick("You Got Selected Family! :)")
		end
	end
	spin()
end