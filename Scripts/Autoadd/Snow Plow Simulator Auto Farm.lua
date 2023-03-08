getgenv().autofarm = true


while autofarm do
local args = {[1] = -922337203685411699,[2] = "1 Stick",[3] = true}game:GetService("ReplicatedStorage").Shop.Events.BuyItem:FireServer(unpack(args))
wait()
local args = {[1] = 99999}game:GetService("ReplicatedStorage").RebirthEvent:FireServer(unpack(args))
end