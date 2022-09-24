local table_1 = {
[1] = 'Cadet',
[2] = '50Cal',
[3] = 'NukeSilo',
};
local table_2 = {

};
local Target = game:GetService("ReplicatedStorage").UpdateTowers;
Target:FireServer(table_1, table_2);