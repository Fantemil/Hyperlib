getgenv().givemoney = true -- set to false if u want to stop, set to true if u want to continue

while task.wait() and givemoney do --  set to whatever number inside the double quotes to make it slower

game:GetService("ReplicatedStorage").Remote.Event.RandomGift:FindFirstChild("[C-S]GetFreeGoldEgg"):FireServer() -- delete 1 - 2 of this 3 lines if you're lagging bad but u earn less
game:GetService("ReplicatedStorage").Remote.Event.RandomGift:FindFirstChild("[C-S]GetFreeGoldMilk"):FireServer() -- delete 1 - 2 of this 3 lines if you're lagging bad but u earn less
game:GetService("ReplicatedStorage").Remote.Event.RandomGift:FindFirstChild("[C-S]GetFreeGoldWool"):FireServer() -- delete 1 - 2 of this 3 lines if you're lagging bad but u earn less

end