local v0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))();
local v1 = v0:NewWindow("school canteen line");
local v2 = v1:NewSection("Get money");
v2:CreateTextbox("get free money", function(v3)
	local v4 = 0 - (0 + 0);
	local v5;
	while true do
		if (v4 == ((0 + 0) - (1073 - (986 + 87)))) then
			v5 = {[1]=v3};
			game:GetService("ReplicatedStorage").Events.Avanza:FireServer(unpack(v5));
			break;
		end
	end
end);
v2:CreateButton("enter cafeteria", function()
	local v6 = {[1]="start"};
	game:GetService("ReplicatedStorage").Events.Enter:FireServer(unpack(v6));
end);