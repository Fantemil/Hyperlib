while true do
wait(0.1)
game:GetService("ReplicatedStorage").Knit.Services.TycoonService.RF.PayIncome:InvokeServer(game:GetService("Players").LocalPlayer)
end