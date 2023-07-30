--[[ Made by ThroughTheFireAndFlames#9925
          
      Alternate Battlegrounds Projectile Dodger (Open Source)

     Choose character, After their little speech execute the script
     Recommended to use bypassed walkspeed script changer!
--]]

getgenv().Distance = 80 -- Distance Detection
getgenv().Cooldown = 3.4 -- Time before Unblocking

spawn(function()
	local Folder = game:GetService("Workspace").Cooldowns;
	for i, v in pairs(game:GetService("Players"):GetChildren()) do
		if (v.Name ~= game.Players.LocalPlayer.Name) then
			local Players = Folder:WaitForChild(v.Name);
			Players.ChildAdded:Connect(function(child)
				if not (string.match(child.Name, "Melee") or string.match(child.Value, "Melee")) then
					local distance = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude;
					if (distance <= getgenv().Distance) then
						local args = {[1]="Blocking",[2]=true};
						game:GetService("ReplicatedStorage"):WaitForChild("GenericEvents"):WaitForChild("Ban"):FireServer(unpack(args));
						wait(getgenv().Cooldown);
						local args = {[1]="Blocking",[2]=false};
						game:GetService("ReplicatedStorage"):WaitForChild("GenericEvents"):WaitForChild("Ban"):FireServer(unpack(args));
					end
				end
			end);
		end
	end
end);