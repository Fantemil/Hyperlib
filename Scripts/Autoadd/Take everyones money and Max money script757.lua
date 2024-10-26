    local Players = game:GetService("Players")
    for i, plr in pairs(Players:GetChildren()) do
    if plr ~= game:GetService("Players").LocalPlayer then
    wait(1)
    game:GetService("ReplicatedStorage"):WaitForChild("BankProcessRemote"):InvokeServer("Send","nan",plr.Name)
    game:GetService("ReplicatedStorage"):WaitForChild("BankAction"):FireServer("depo","30000")
    print(game:GetService("Players").LocalPlayer.stored.Bank.Value)
    end
    end