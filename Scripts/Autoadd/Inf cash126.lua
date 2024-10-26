setclipboard('https://discord.gg/VudXCDCaBN')
print("copied discord inv to your clipboard made by 4cen2 and kylosilly")

while true do
    for i = 1, 30 do
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }

        game:GetService("ReplicatedStorage").Knit.Services.TycoonService.RF.PayIncome:InvokeServer(unpack(args))
    end

    wait(0.25)
end