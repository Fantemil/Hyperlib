local wishes = {"Common Wish", "Lucky Wish", "Very Lucky Wish", "Godly Wish"}
for i,v in pairs(wishes) do
   for e=1, 10 do
game:GetService("ReplicatedStorage").RemoteEvents.Wishes.Wish:InvokeServer(v)
end
end