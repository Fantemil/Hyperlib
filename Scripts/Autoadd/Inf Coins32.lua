local coins = { 500,1000,1500,2000 } -- u can increase the amount of coins u gain here, depending on your level and the world u at
while true do
for i = 1,10000 do task.wait()
for i,v in pairs(coins) do
local args = {
    [1] = "Dirt",
    [2] = v}
game:GetService("ReplicatedStorage").Knit.Packages.Knit.Services.RewardService.RE.COLLECT_CHANGE:FireServer(unpack(args))
game:GetService("ReplicatedStorage").Knit.Packages.Knit.Services.ExchangeService.RF.SellAllBones:InvokeServer()
end
end
end