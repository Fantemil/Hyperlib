-- Read THIS BEFORE COMPLAINING JOIN A PRIVATE SERVER FOR AUTOBUY TO WORK --

getgenv().AutoFarm = true -- true = on false = off --
getgenv().AutoBuy = true -- true = on false = off --
getgenv().AutoRebirth = true -- true = on false = off --

spawn(function()
    while AutoFarm do
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }

        game:GetService("ReplicatedStorage").Knit.Services.TycoonService.RF.PayIncome:InvokeServer(unpack(args))
    end
end)

spawn(function()
    while AutoBuy do
        local Buttons = game:GetService("Workspace").Tycoons.Tycoon.Buttons -- cant find anything that can indicate witch tycoon is the local players so use a private server
        for _, child in ipairs(Buttons:GetChildren()) do
            local args = {
                [1] = child.Name,
                [2] = 1
            }
            game:GetService("ReplicatedStorage").Knit.Services.TycoonService.RF.BuyObject:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while AutoRebirth do
        game:GetService("ReplicatedStorage").Knit.Services.TycoonService.RF.Rebirth:InvokeServer()
    end
end)