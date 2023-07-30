--[[]
!!! MUST HAVE COIL GLOVE (9750 slaps needed) !!
DOESNT CRASH THE SERVER JUST LAGS

Make server go kaboom
Might possibly flush your fps down the drain idk
]]

getgenv().laggy = true

local plr = game.Players.LocalPlayer

if laggy == true then
	if plr.Character.IsInDefaultArena.Value == true or plr.leaderstats.Glove.Value ~= "Coil" then
		plr.Character.Humanoid.Health = 0
		task.wait(3)
	end
	local portal;

	if plr.Character:WaitForChild("isInArena").Value == false then
		task.wait(0.35)
		fireclickdetector(game:GetService("Workspace").Lobby.Coil.ClickDetector)
		portal = game:GetService("Workspace").Lobby.Teleport1

		spawn(function()
			firetouchinterest(plr.Character.HumanoidRootPart, portal, 0)
			task.wait()
			firetouchinterest(plr.Character.HumanoidRootPart, portal, 1)
		end)
	end
	wait(0.1)
	plr.Character:MoveTo(Vector3.new(-415.957763671875, -9.271105766296387, -6.567013263702393))
	wait(0.1)
	plr.Character.HumanoidRootPart.Anchored = true
	repeat task.wait() until plr.Character.HumanoidRootPart.Anchored == true
	while laggy and task.wait() do
		local args = {
			[1] = game:GetService("Players").LocalPlayer.Character:WaitForChild("Coil")
		}

		-- Add more or less of these if u want
		game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
		game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
	end
else
	plr.Character.HumanoidRootPart.Anchored = false
end
