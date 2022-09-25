 getgenv().farm = true  --type false here instead of true and execute to stop the auto farm
;

local p = game:GetService("ReplicatedStorage").Knit.Services

while wait() do
    if getgenv().farm == true then
p.MilkService.RE.Drink:FireServer()
wait()
p.SellService.RE.Sell:FireServer()
end
end