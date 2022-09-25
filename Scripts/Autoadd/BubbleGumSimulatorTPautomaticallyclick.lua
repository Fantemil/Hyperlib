rs = game:GetService("ReplicatedStorage")
while wait() do
rs.NetworkRemoteEvent:FireServer("BlowBubble")
rs.NetworkRemoteEvent:FireServer("Teleport", "Sell")
rs.NetworkRemoteEvent:FireServer("SellBubble", "Sell")
end