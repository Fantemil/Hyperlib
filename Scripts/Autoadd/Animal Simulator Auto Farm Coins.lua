while wait() do
 local Event = game:GetService("ReplicatedStorage").Events.CoinEvent
Event:FireServer()
end