local ohString1 = "TurnOn"

game:GetService("Players").LocalPlayer.Backpack.Client.Server.Enhance:FireServer(ohString1)

while wait() do
    for i=1,10 do
        game:GetService("Players").LocalPlayer.Backpack.Client.Server.EnhanceLevel:FireServer()
    end
end