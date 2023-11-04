local v0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Singularity5490/rbimgui-2/main/rbimgui-2.lua"))();
local v1 = v0.new({text="Creepstu's Script",size=UDim2.new(300, 362 - 162)});
v1.open();
local v2 = v1.new({text="FORM #1"});
local v3 = v2.new("label", {text="A remake of @AlperSocial's script.",color=Color3.new(186 + 69, 997 - (915 + 82), 0 - 0)});
local v4 = v2.new("button", {text="Spam Up On Carts"});
v4.event:Connect(function()
	for v28, v29 in pairs(workspace:GetDescendants()) do
		if ((v29.Parent.Name == "Up") and (v29.ClassName == "ClickDetector")) then
			spawn(function()
				while true do
					wait();
					if v29 then
						fireclickdetector(v29);
					else
						break;
					end
				end
			end);
		elseif ((v29.Parent.Name == "On") and (v29.ClassName == "ClickDetector")) then
			if (v29.Parent.BrickColor ~= BrickColor.new("Dark green")) then
				fireclickdetector(v29);
			end
			v29.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
				if (v29.Parent.BrickColor ~= BrickColor.new("Dark green")) then
					fireclickdetector(v29);
				end
			end);
		end
	end
	workspace.DescendantAdded:Connect(function(v30)
		if ((v30.Parent.Name == "Up") and (v30.ClassName == "ClickDetector")) then
			spawn(function()
				while true do
					wait();
					if v30 then
						fireclickdetector(v30);
					else
						break;
					end
				end
			end);
		elseif ((v30.Parent.Name == "On") and (v30.ClassName == "ClickDetector")) then
			local v40 = 0 + 0;
			while true do
				if (v40 == (0 - 0)) then
					if (v30.Parent.BrickColor ~= BrickColor.new("Dark green")) then
						fireclickdetector(v30);
					end
					v30.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
						if (v30.Parent.BrickColor ~= BrickColor.new("Dark green")) then
							fireclickdetector(v30);
						end
					end);
					break;
				end
			end
		end
	end);
end);
local v5 = v2.new("button", {text="Spam Down On Carts"});
v5.event:Connect(function()
	for v31, v32 in pairs(workspace:GetDescendants()) do
		if ((v32.Parent.Name == "Down") and (v32.ClassName == "ClickDetector")) then
			spawn(function()
				while true do
					wait();
					if v32 then
						fireclickdetector(v32);
					else
						break;
					end
				end
			end);
		elseif ((v32.Parent.Name == "On") and (v32.ClassName == "ClickDetector")) then
			local v41 = 1187 - (1069 + 118);
			while true do
				if (v41 == (0 - 0)) then
					if (v32.Parent.BrickColor ~= BrickColor.new("Dark green")) then
						fireclickdetector(v32);
					end
					v32.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
						if (v32.Parent.BrickColor ~= BrickColor.new("Dark green")) then
							fireclickdetector(v32);
						end
					end);
					break;
				end
			end
		end
	end
	workspace.DescendantAdded:Connect(function(v33)
		if ((v33.Parent.Name == "Down") and (v33.ClassName == "ClickDetector")) then
			spawn(function()
				while true do
					wait();
					if v33 then
						fireclickdetector(v33);
					else
						break;
					end
				end
			end);
		elseif ((v33.Parent.Name == "On") and (v33.ClassName == "ClickDetector")) then
			local v42 = 0 - 0;
			while true do
				if (v42 == (0 + 0)) then
					if (v33.Parent.BrickColor ~= BrickColor.new("Dark green")) then
						fireclickdetector(v33);
					end
					v33.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
						if (v33.Parent.BrickColor ~= BrickColor.new("Dark green")) then
							fireclickdetector(v33);
						end
					end);
					break;
				end
			end
		end
	end);
end);
local v6 = v2.new("button", {text="Auto Join Back"});
v6.event:Connect(function()
	local v13 = game.PlaceId;
	local v14 = game.JobId;
	local v15 = game.Players;
	local v16 = game.CoreGui:FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay");
	v16.DescendantAdded:Connect(function(v34)
		if (v34.Name == "ErrorTitle") then
			v34:GetPropertyChangedSignal("Text"):Connect(function()
				if (v34.Text:sub(0, 12) == "Disconnected") then
					if (#v15:GetPlayers() <= (1 - 0)) then
						local v44 = 0;
						while true do
							if (v44 == (1 + 0)) then
								TeleportService:Teleport(v13, v15.LocalPlayer);
								break;
							end
							if (v44 == 0) then
								v15.LocalPlayer:Kick("\nRejoining...");
								wait();
								v44 = 792 - (368 + 423);
							end
						end
					else
						TeleportService:TeleportToPlaceInstance(v13, v14, v15.LocalPlayer);
					end
				end
			end);
		end
	end);
end);
local v7 = v2.new("button", {text="Rejoin To Stop"});
v7.event:Connect(function()
	local v17 = 0;
	local v18;
	local v19;
	while true do
		if (v17 == (3 - 2)) then
			v18:Teleport(game.PlaceId, v19);
			break;
		end
		if (v17 == (18 - (10 + 8))) then
			v18 = game:GetService("TeleportService");
			v19 = game.Players.LocalPlayer;
			v17 = 1;
		end
	end
end);
local v8 = v2.new("button", {text="Mess Carts"});
v8.event:Connect(function()
	local v20 = 0 - 0;
	while true do
		if (v20 == 0) then
			getgenv().AutoBreakCarts = true;
			spawn(function()
				while AutoBreakCarts do
					local v43 = 442 - (416 + 26);
					while true do
						if (v43 == 0) then
							wait(0.3 - 0);
							pcall(function()
								for v45, v46 in pairs(workspace:GetDescendants()) do
									if v46:IsA("ClickDetector") then
										fireclickdetector(v46);
									end
								end
							end);
							break;
						end
					end
				end
			end);
			break;
		end
	end
end);
local v4 = v2.new("button", {text="Break Game"});
v4.event:Connect(function()
	local v21 = 0 + 0;
	while true do
		if (v21 == (0 - 0)) then
			for v37, v38 in next, workspace:GetDescendants() do
				if (v38("ClickDetector") and (v38.Parent.Name ~= "Down")) then
					spawn(function()
						while v38:IsDescendantOf(workspace) and wait() do
							if (v38.Parent.Name ~= "On") then
								fireclickdetector(v38);
							elseif (tostring(v38.Parent.BrickColor) == "Bright red") then
								fireclickdetector(v38);
							end
						end
					end);
				end
			end
			workspace.DescendantAdded:Connect(function(v39)
				if (v39("ClickDetector") and (v39.Parent.Name ~= "Down")) then
					while v39:IsDescendantOf(workspace) and wait() do
						if (v39.Parent.Name ~= "On") then
							fireclickdetector(v39);
						elseif (tostring(v39.Parent.BrickColor) == "Bright red") then
							fireclickdetector(v39);
						end
					end
				end
			end);
			break;
		end
	end
end);
local v9 = v2.new("button", {text="Teleport Winner Place"});
v9.event:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310.683014, 849.75, 759.389221 - (145 + 293), 431 - (44 + 386), 1486 - (998 + 488), 0, 0, 1 + 0, 0 + 0, 772 - (201 + 571), 1138 - (116 + 1022), 4 - 3);
end);
local v10 = v2.new("button", {text="Teleport Default Place"});
v10.event:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(44, 0.049999997 + 0, -76, 3 - 2, 0 - 0, 0, 859 - (814 + 45), 1, 0 - 0, 0 + 0, 0 + 0, 886 - (261 + 624));
end);
local v11 = v2.new("slider", {text="WalkSpeed",color=Color3.new(0.8 - 0, 1080.5 - (1020 + 60), 1423 - (630 + 793)),min=0,max=50,value=(53 - 37),rounding=1});
v11.event:Connect(function(v24)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v24;
end);
v11.set(16);
local v12 = v2.new("slider", {text="JumpPower",color=Color3.new(0.8 - 0, 0.5 + 0, 0 - 0),min=(1747 - (760 + 987)),max=(2013 - (1789 + 124)),value=50,rounding=(767 - (745 + 21))});
v12.event:Connect(function(v26)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = v26;
end);
v12.set(18 + 32);