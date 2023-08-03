- Script Made by ch_s

plr = game:GetService('Players').LocalPlayer -- Get's local players vision with some extenses
	function FogSaved() -- Just getting the Fog effect for use
		wait()
		game:GetService('Lighting').FogEnd = 500 -- Setting the FOG End 500
	end
	toggled1 = false -- And make it toggle false so its infinite
	script.Parent.Toggle_Fog.MouseButton1Click:Connect(function(FOG)
		if toggled1 == false then	
			wait()
			game:GetService('Lighting').FogEnd = 900000009 -- Ends the FOG with the hard as possible
			toggled1 = true -- The SAME thing
		elseif toggled1 == true then
			wait()
			FogSaved()
			toggled1 = false
		end
	end)
end)