_G.AutoFill = true;

spawn(function()
while _G.AutoFill == true do
local ohNumber1 = 1

game:GetService("ReplicatedStorage").DepositHeads:FireServer(ohNumber1)
wait()
end
end)