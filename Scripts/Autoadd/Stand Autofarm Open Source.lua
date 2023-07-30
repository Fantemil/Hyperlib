--[[Made by ThroughTheFireAndFlames#9925 | Project Menacing

        Simple Stand Autofarm [Open Source]

--]]------------------------------------


--[[ This script is to check other's stand values, Open F9 console to see some stand names and paste them in the getgenv().WantedStands variable

warn("[--------------------[Players Stands]----------------]")
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    print(v.Name .. " Has: " .. game.Players[v.Name].Data.Stand.Value)
end

--]]------------------------------------------------------------------------------------------------------------------------------------

getgenv().WantedStands = {"StarPlatinumTheUniverse","DirtyDeedsLT","StarPlatinumOVA","TheWorldOVA","D4CKrampus","","","","","","",""} -- Put here exact stand value names

-- Main
repeat wait() until game:IsLoaded();
-- Anti afk was not made by me but rightfully used as a open source tool for everyone to look at.
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
wait(4.5); -- Extra load
function AutofarmItem()
task.spawn(function()
		while true do wait(1);
			if (game.Players.LocalPlayer.Data.Stand.Value == "None") then
				game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace")["Stand Arrow"].Position);
				wait(0.5);
				fireproximityprompt(game:GetService("Workspace")["Stand Arrow"]:FindFirstChildOfClass("ProximityPrompt"), 0);
			else
				game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace")["Rokakaka Fruit"].Position);
				wait(0.5);
				fireproximityprompt(game:GetService("Workspace")["Rokakaka Fruit"]:FindFirstChildOfClass("ProximityPrompt"), 0);
			end
		end
	end);
end
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
	wait(1.5);
	coroutine.resume(coroutine.create(AutofarmItem));
end);
function AutofarmStand()
task.spawn(function()
		while true do wait(0.1);
			if (game.Players.LocalPlayer.Data.Stand.Value == "None") then
				pcall(function()
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Stand Arrow") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stand Arrow") == nil)) then
						game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Stand Arrow"));
					end
				end);
				wait(0.1);
				local args = {[1]="Stand Arrow"};
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ItemUsage"):FireServer(unpack(args));
			elseif table.find(getgenv().WantedStands, game.Players.LocalPlayer.Data.Stand.Value) then
				game.Players.LocalPlayer:Kick("🥳🎉🎉🎁: " .. game.Players.LocalPlayer.Data.Stand.Value);
				return;
			else
				pcall(function()
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rokakaka Fruit") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rokakaka Fruit") == nil)) then
						game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rokakaka Fruit"));
					end
				end);
				wait(0.1);
				local args = {[1]="Rokakaka Fruit"};
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ItemUsage"):FireServer(unpack(args));
			end
		end
	end);
end
function ServerHopper()
task.spawn(function()
		while true do wait(1);
			if not game:GetService("Workspace"):FindFirstChild("Rokakaka Fruit") then
			-- Server hopper that was not made by me but rightfully used as a open source tool for everyone to look at.
            repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
				local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService");
				local OtherServers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"));
				function joinNew()
					if not isfile("servers.sss") then
						writefile("servers.sss", HttpService:JSONEncode({}));
					end
					local dontJoin = readfile("servers.sss");
					dontJoin = HttpService:JSONDecode(dontJoin);
					for Index, Server in next, OtherServers['data'] do
						if (Server ~= game.JobId) then
							local j = true;
							for a, c in pairs(dontJoin) do
								if (c == Server.id) then
									j = false;
								end
							end
							if j then
								table.insert(dontJoin, Server['id']);
								writefile("servers.sss", HttpService:JSONEncode(dontJoin));
								wait();
								return Server['id'];
							end
						end
					end
				end
				local server = joinNew();
				if not server then
					writefile("servers.sss", HttpService:JSONEncode({}));
					local server = joinNew();
					TPService:TeleportToPlaceInstance(game.PlaceId, server);
				else
					TPService:TeleportToPlaceInstance(game.PlaceId, server);
				end
			end
		end
		game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
			wait(1.5);
			coroutine.resume(coroutine.create(ServerHopper));
		end);
	end);
end
task.spawn(function()
	wait(45); -- Fixer
	repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
	local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService");
	local OtherServers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"));
	function joinNew()
		if not isfile("servers.sss") then
			writefile("servers.sss", HttpService:JSONEncode({}));
		end
		local dontJoin = readfile("servers.sss");
		dontJoin = HttpService:JSONDecode(dontJoin);
		for Index, Server in next, OtherServers['data'] do
			if (Server ~= game.JobId) then
				local j = true;
				for a, c in pairs(dontJoin) do
					if (c == Server.id) then
						j = false;
					end
				end
				if j then
					table.insert(dontJoin, Server['id']);
					writefile("servers.sss", HttpService:JSONEncode(dontJoin));
					wait();
					return Server['id'];
				end
			end
		end
	end
	local server = joinNew();
	if not server then
		writefile("servers.sss", HttpService:JSONEncode({}));
		local server = joinNew();
		TPService:TeleportToPlaceInstance(game.PlaceId, server);
	else
		TPService:TeleportToPlaceInstance(game.PlaceId, server);
	end
end);

AutofarmStand();
AutofarmItem();
ServerHopper();