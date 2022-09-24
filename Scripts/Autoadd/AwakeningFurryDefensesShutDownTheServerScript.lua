while wait() do
for i,v in pairs(game:GetDescendants()) do
local userdata_1 = v
local Target = game:GetService("ReplicatedStorage")["ReplicatedStorage_CLOUD"].UnitControls.RemoveUnit;
Target:FireServer(userdata_1);
end
end