game:GetService("ReplicatedStorage").RemoteEvent.PurchaseRequest:FireServer("Bonus", "Call Police")
for i, v in pairs(game:GetService'Players':GetChildren()) do
if v and v.Character then
game:GetService("ReplicatedStorage").RemoteEvent.CallPolice:FireServer(v)
end
end