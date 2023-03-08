local Remotes = game:GetService("ReplicatedStorage").Remotes

Remotes.DataChange_Item:FireServer("update", "item3", "Surplus", 99999999*2)
Remotes.ItemBuy:FireServer("item3", {99;"GameCoin"}, -99999999)
Remotes.ItemBuy:FireServer("item3", {99;"GameCoin2"}, -99999999)