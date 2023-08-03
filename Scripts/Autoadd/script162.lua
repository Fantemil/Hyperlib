local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("RIOT V.4", "DarkTheme")
local Tab = Window:NewTab("Home")
local Section = Tab:NewSection("yes")

Section:NewToggle("Auto Leave when Staff Join", "ToggleInfo", function(state)
	if state then
		getrenv().StaffKick = true

		function check(value)
			local rank = value:GetRoleInGroup(10294339)
			if rank == "Moderator" or rank == "Admin" or rank == "Developers" or rank == "Head Developer" or rank == "dokso" or rank == "Astrix" or rank == "Holder" then
				game.Players.LocalPlayer:Kick(rank.." | "..value.Name.." | ".."Is In Server")
			end
		end

		print( "Started Anti Staff" )
		if getrenv().StaffKick == true then
			while getrenv().StaffKick == true do
				--Check Against Roles So it auto updates
				for key, value in pairs( game:GetService("Players"):GetChildren() ) do
					coroutine.wrap(check)(value)
				end
				wait(1)
			end
		end
	else
		print("Toggle Off")
	end
end)

Section:NewButton("Infinite Rage Mode", "ButtonInfo", function()
	local plr = game:GetService("Players").LocalPlayer
	plr:SetAttribute("RageMode", true)
	print("Clicked")
end)