local l__LocalPlayer__1 = game.Players.LocalPlayer;
l__ReplicatedEvents__7 = game:GetService('ReplicatedStorage'):WaitForChild('ReplicatedEvents');
local l__ProjectileDamage__32 = l__ReplicatedEvents__7.ProjectileDamage;

local Connections = {};
local Players = game:GetService('Players');

local function Hit(Target)
if (Target ~= nil) and (Target.Character ~= nil) and (Target.Character:FindFirstChild('Head')) then
l__ProjectileDamage__32:FireServer('fffffffff', "5Ã\nEâ¬MBÃ¾mÃCÃ¬QHAÃ¬QÃ@ffÅAÂ«ÂªÂ¦BÃgÂ£A\0\0\0\0", Target.Character.Head, 0);
end;
end;

local function SetUp(Target)
Connections[Target.Name] = Target.CharacterAdded:Connect(function(Character)
repeat task.wait() until Character:FindFirstChild('Head');
Hit(Target);
end);
end;

local function OnLeave(Target)
if (Connections[Target.Name] ~= nil) then
Connections[Target.Name]:Disconnect();
end;
end;

for Index, Value in next, Players:GetPlayers() do
Hit(Value);
SetUp(Value);
end;

Players.PlayerAdded:Connect(SetUp);
Players.PlayerRemoving:Connect(OnLeave);