local function invokeFirstScript()
	game:GetService("ReplicatedStorage").RemoteFunctions.SpeedChange.ChangeSpeedRemoteFunction:InvokeServer();
end
local function spamScripts()
	local args1 = {[1]=2,[2]="u010002s0",[3]="u010002",[4]=Vector3.new(32.696189880371094, 1.2297264337539673, 2.2412023544311523)};
	game:GetService("ReplicatedStorage").RemoteFunctions.PlaceUnitFunctions.PlaceUnit:InvokeServer(unpack(args1));
	local args2 = {[1]=3,[2]="u004005s0",[3]="u004005",[4]=Vector3.new(21.84115219116211, 1.2306228876113892, 0.5818965435028076)};
	game:GetService("ReplicatedStorage").RemoteFunctions.PlaceUnitFunctions.PlaceUnit:InvokeServer(unpack(args2));
	local args3 = {[1]=4,[2]="u011005s0",[3]="u011005",[4]=Vector3.new(33.20808029174805, 1.2296844720840454, -1.464932918548584)};
	game:GetService("ReplicatedStorage").RemoteFunctions.PlaceUnitFunctions.PlaceUnit:InvokeServer(unpack(args3));
	local args4 = {[1]=workspace.Units.UFolder.U0Model,[2]=1};
	game:GetService("ReplicatedStorage").RemoteFunctions.UpgradeUnitFunctions.UpgradeUnit:InvokeServer(unpack(args4));
end
invokeFirstScript();
while true do
	wait(0.2);
	spamScripts();
end