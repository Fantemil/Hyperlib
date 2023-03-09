repeat wait() until game:IsLoaded()

spawn(function()
    while wait(1) do
    for i,v in pairs(game:GetService("Workspace").Map.Objects:GetChildren()) do
        if v:IsA("Model") then 
            game:GetService("ReplicatedStorage").Knit.Services.WorldCurrencyService.RE.PickupCurrency:FireServer(v.Name)
            end
        end
    end
end)

spawn(function()
game:GetService("ReplicatedStorage").Knit.Services.LevelingService.RF.AttemptRebirth:InvokeServer()
end)

spawn(function()
    wait(6) --- perfer 6
    loadstring(game:HttpGet('https://raw.githubusercontent.com/LeadMarker/OpenSource/main/Resources/Hop.lua'))()

    serverhop()
end)