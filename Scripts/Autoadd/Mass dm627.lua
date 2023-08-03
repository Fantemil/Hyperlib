message = "@everyone join my eminem sever Inv rIolD"

for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Screen.Background.Server.ChannelList.List:GetChildren()) do
if v.Name == "ServerMemberItem" then
task.spawn(function()
print(v.Id)
local table_1 = {
	["Message"] = message,
	["ServerId"] = v.Id.Value,
	["ReplyMessageId"] = 0,
	["Files"] = {

	},
	["ChannelId"] = v.Id.Value,
	["Type"] = 'DM',
	["ThreadId"] = 0
};
local Target = game:GetService("ReplicatedStorage").Functions.SendMessage;
Target:FireServer(table_1);
end)
wait(1)
end
end
