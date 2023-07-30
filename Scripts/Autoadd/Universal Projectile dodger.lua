--[[ Made by ThroughTheFireAndFlames#9925
   
              Open source
        [Part/Projectile Dodger📜]

]]--
    

getgenv().Distance = 70
getgenv().Part = "BasePart"


getgenv().Source = (function(ThroughTheFireAndFlames)
	local dis = (ThroughTheFireAndFlames.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude;
	if (dis <= getgenv().Distance) then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(10, 0, 0);
		wait(0.2);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-10, 0, 0);
	end
end);
workspace.DescendantAdded:Connect(function(Part)
	if Part:IsA(getgenv().Part) then
		getgenv().Source(Part);
	end
end);