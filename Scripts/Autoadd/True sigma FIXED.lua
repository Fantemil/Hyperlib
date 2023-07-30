getgenv().Abillity = true -- Dont touch
getgenv().KillEveryoneKeybind = "v" -- Kill everyone Keybind
getgenv().KillNearestKeybind = "b" -- Kill nearest Keybind
getgenv().Distance  = 20 --Nearest kill distance activation

if (game.PlaceId == 8657766101) then
	spawn(function()
		local Mouse = game:GetService("Players").LocalPlayer:GetMouse();
		local Toggled = false;
		Mouse.KeyDown:Connect(function(Key)
			if (Key == getgenv().KillEveryoneKeybind) then
				if Toggled then
					Toggled = false;
				else
					Toggled = true;
					while Toggled and wait(0.1) do
						for i, v in pairs(game:GetService("Players"):GetChildren()) do
							if (v.Name ~= game.Players.LocalPlayer.Name) then
								local args = {[1]=workspace:WaitForChild(v.Name)};
								game:GetService("ReplicatedStorage"):WaitForChild("Characters"):WaitForChild("Combat"):WaitForChild("Remotes"):WaitForChild("Combo"):FireServer(unpack(args));
								local args = {[1]=workspace:WaitForChild(v.Name)};
								game:GetService("ReplicatedStorage"):WaitForChild("Characters"):WaitForChild("Combat"):WaitForChild("Remotes"):WaitForChild("ComboEndRemote"):FireServer(unpack(args));
							end
						end
					end
				end
			end
		end);
	end);
	local Mouse = game:GetService("Players").LocalPlayer:GetMouse();
	local Toggled = false;
	Mouse.KeyDown:Connect(function(Key)
		if (Key == getgenv().KillNearestKeybind) then
			if Toggled then
				Toggled = false;
			else
				Toggled = true;
				while Toggled and wait(0.1) do
					local closestPlayer = nil;
					local closestDistance = getgenv().Distance;
					for i, v in pairs(game:GetService("Players"):GetChildren()) do
						if (v.Name ~= game.Players.LocalPlayer.Name) then
							local distance = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
							if (distance < closestDistance) then
								closestPlayer = v;
								closestDistance = distance;
							end
						end
					end
					if (closestPlayer ~= nil) then
						local args = {[1]=workspace:WaitForChild(closestPlayer.Name)};
						game:GetService("ReplicatedStorage"):WaitForChild("Characters"):WaitForChild("Combat"):WaitForChild("Remotes"):WaitForChild("Combo"):FireServer(unpack(args));
						local args = {[1]=workspace:WaitForChild(closestPlayer.Name)};
						game:GetService("ReplicatedStorage"):WaitForChild("Characters"):WaitForChild("Combat"):WaitForChild("Remotes"):WaitForChild("ComboEndRemote"):FireServer(unpack(args));
					end
				end
			end
		end
	end);
	if (getgenv().Abillity == true) then
		spawn(function()
			while true do
				local args = {[1]=game:GetService("Players").LocalPlayer};
				game:GetService("Players").LocalPlayer.Character.Patrick.CounterActivate:FireServer(unpack(args));
				wait(0.1);
			end
		end);
		spawn(function()
			while true do
				local args = {[1]=game:GetService("Players").LocalPlayer};
				game:GetService("Players").LocalPlayer.Character.Patrick.Pills:FireServer(unpack(args));
				wait(0.1);
			end
		end);
	end
end