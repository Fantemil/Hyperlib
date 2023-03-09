local a = {2127480711,2125747688,2127480708,2127480712}
for i = 1,#a do
game:GetService("ReplicatedStorage"):WaitForChild("AwardBadge"):FireServer(a[i])
end