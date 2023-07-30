-- Made by ThroughTheFireAndFlames#9925

repeat task.wait() until game:IsLoaded();
task.spawn(function()
	while true do wait(0.0001)
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("MainFunction"):InvokeServer(unpack({{"Blocking",true}}));
	end
end);
task.spawn(function()
	game:GetService("Players")[game:GetService("Players").LocalPlayer.Name].Data.Ki.Value = math.huge; game:GetService("Players")[game:GetService("Players").LocalPlayer.Name].Data.Stamina.Value = math.huge;
end);