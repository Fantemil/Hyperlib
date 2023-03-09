rem = game:GetService("ReplicatedStorage").BadgeRemote

rem:FireServer("award", "DevBadge")
rem:FireServer("award", "FirstLvlComplete")
rem:FireServer("award", "SecondLvlComplete")
rem:FireServer("award", "ThirdLvlComplete")


-- Ty https://v3rmillion.net/member.php?action=profile&uid=1814072
-- i fixed his script but this gets you 2 badges so may aswell add it
game:GetService("Players").LocalPlayer.PlayerScripts.MazeGame.CoinRemote:FireServer("addCoin", math.huge)
wait(1)
game:GetService("ReplicatedStorage").MerchBuyEvent:FireServer("BodySuit")
game:GetService("ReplicatedStorage").MerchBuyEvent:FireServer("Hat")