local v0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))();
local v1 = v0:NewWindow("block digging sim ð¨");
local v2 = v1:NewSection("Get power and wins");
v2:CreateTextbox("get strength", function(v4)
	local v5 = {[878 - (282 + 595)]=v4};
	game:GetService("ReplicatedStorage").Game.RemoteEvents.GiveStrength:FireServer(unpack(v5));
end);
v2:CreateTextbox("get wins", function(v6)
	local v7 = 1637 - (1523 + 114);
	local v8;
	while true do
		if (0 == v7) then
			v8 = {[1 + 0]={Amount=v6,StatName="Win",Time=(1137 - (892 + 65)),GiftType="Stat"}};
			game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(v8));
			break;
		end
	end
end);
v2:CreateToggle("auto rebirth", function(v9)
	local v10 = 0 + 0;
	while true do
		if (v10 == (0 - 0)) then
			G_Rebirth = v9;
			while G_Rebirth do
				local v16 = {[1066 - (68 + 997)]=math.huge};
				game:GetService("ReplicatedStorage").Game.RemoteEvents.GiveStrength:FireServer(unpack(v16));
				game:GetService("ReplicatedStorage").Game.RemoteFunctions.Rebirth:InvokeServer();
				wait(0.01 - 0);
			end
			break;
		end
	end
end);
local v3 = v1:NewSection("pets from rewards");
v3:CreateButton("bear pet", function()
	local v11 = 1270 - (226 + 1044);
	local v12;
	while true do
		if (v11 == (180 - (67 + 113))) then
			v12 = {[1 + 0]={PetName="Bear",Time=420,GiftType="Pet"}};
			game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(v12));
			break;
		end
	end
end);
v3:CreateButton("blue pet", function()
	local v13 = {[4 - 3]={PetName="Blue",Time=(1031 - 611),GiftType="Pet"}};
	game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(v13));
end);
v3:CreateButton("grimace pet", function()
	local v14 = 0 + 0;
	local v15;
	while true do
		if (v14 == (0 - 0)) then
			v15 = {[953 - (802 + 150)]={PetName="Grimace",Time=(537 - (32 + 85)),GiftType="Pet"}};
			game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(v15));
			break;
		end
	end
end);