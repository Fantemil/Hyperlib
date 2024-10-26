local v0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))();
local v1 = v0:NewWindow("Like or pass money script");
local v2 = v1:NewSection("Money");
v2:CreateTextbox("Get Money", function(v3)
	local v4 = 1422 - (378 + 1044);
	local v5;
	while true do
		if (v4 == (0 - 0)) then
			v5 = {[1]={ItemName="ShrinkPlayer",Key=v3,Cash=v3}};
			game:GetService("ReplicatedStorage").Events.PurchaseTroll:InvokeServer(unpack(v5));
			break;
		end
	end
end);