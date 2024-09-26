while true do
 
 local plr = game:GetService("Players").LocalPlayer

 game:GetService("ReplicatedStorage").Knit.Services.TycoonService.RF.PayIncome:InvokeServer(plr)
end