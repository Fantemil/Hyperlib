--[[ Made by ThroughTheFireAndFlames#9925 (DBZ Final Stand)
    [https://www.roblox.com/games/536102540/DBZ-Final-Stand]
    
        Auto Dodge/Block [Open Source]

--]] 

--------------------------------------------------------------
getgenv().KeybindToggle = "V"
getgenv().AutoBlock = true
getgenv().DetectionDistance = 15

--------------------------------------------------------------
getgenv().ReactionSource = function(ThroughTheFireAndFlames)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0);
end

--------------------------------------------------------------
--[if you mess with this then you are skid 🤡🫵🎉🎉🎉]--
repeat task.wait() until game:IsLoaded();
game.StarterGui:SetCore("SendNotification", {Title="ULTRA INSTINCT!",Text="search Lvl9999 on github!",Icon="rbxassetid://0",Duration=10});
local Key = getgenv().KeybindToggle;
local Toggle = false;
game:GetService("UserInputService").InputBegan:Connect(function(keyobject, stuffhappening)
	if ((keyobject.KeyCode == Enum.KeyCode[Key]) and not stuffhappening) then
		Toggle = not Toggle;
		if Toggle then
			game.StarterGui:SetCore("SendNotification", {Title="ULTRA INSTINCT!",Text="ON",Icon="rbxassetid://0",Duration=0.1});
		else
			game.StarterGui:SetCore("SendNotification", {Title="ULTRA INSTINCT!",Text="OFF",Icon="rbxassetid://0",Duration=0.1});
		end
	end
end);
game:GetService("RunService").Stepped:connect(function()
	if Toggle then
		for i, v in pairs(game:GetService("Players"):GetChildren()) do
			if (v.Name ~= game.Players.LocalPlayer.Name) then
				local dis = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude;
				if (dis <= getgenv().DetectionDistance) then
					for i, v in next, v.Character:GetChildren() do
						if (v.Name == "Attacking") then
							getgenv().ReactionSource(ThroughTheFireAndFlames);
						end
					end
				end
			end
		end
	end
end);
spawn(function()
	while getgenv().AutoBlock == true do
		function getNil(name, class)
			for _, v in next, getnilinstances() do
				if ((v.ClassName == class) and (v.Name == name)) then
					return v;
				end
			end
		end
		local args = {[1]={[1]="blockon"},[2]=CFrame.new(),[3]=getNil("InputObject", "InputObject")};
		game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Input:FireServer(unpack(args));
		wait(0.1);
	end
end);
spawn(function()
	while getgenv().AutoBlock == true do
		local AutoBlock = game.Players.LocalPlayer.Character:FindFirstChild("Block");
		if AutoBlock then
			AutoBlock.Value = false;
			wait(0.1);
		end
	end
end);