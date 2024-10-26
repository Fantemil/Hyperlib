while true do
wait("1")
game:FindService("ReplicatedStorage").Events.Auctions.EnterQueue:InvokeServer("10")
end