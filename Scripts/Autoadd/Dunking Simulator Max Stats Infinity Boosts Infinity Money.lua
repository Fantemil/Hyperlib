while true do
   wait(0.1)
game:GetService("ReplicatedStorage").Remote.DailySpin.AddToInventory:FireServer("50xCash",true)
game:GetService("ReplicatedStorage").Remote.DailySpin.AddToInventory:FireServer("2xCash",true)
game:GetService("ReplicatedStorage").Remote.DailySpin.AddToInventory:FireServer("1000xCash",true)
game:GetService("ReplicatedStorage").Remote.DailySpin.AddToInventory:FireServer("100xCash",true)
game:GetService("ReplicatedStorage").Remote.DailySpin.AddToInventory:FireServer("5xCash",true)
end

game:GetService("Players").LocalPlayer.pStats.Accuracy.Value = "2500"
game:GetService("Players").LocalPlayer.pStats.Range.Value = "2500"
game:GetService("Players").LocalPlayer.pStats.Focus.Value = "5"
game:GetService("Players").LocalPlayer.pStats.Speed.Value = "1200"
game:GetService("Players").LocalPlayer.animLevel.Value = "5"