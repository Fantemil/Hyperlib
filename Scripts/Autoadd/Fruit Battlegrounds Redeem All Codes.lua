for _, k in pairs(game.Players:GetChildren()) do
print(k.Name)
print("------------------------------------")
for _, v in pairs(k["MAIN_DATA"].Codes:GetChildren()) do
print(v.Value)
local ohString1 = "Codes"
local ohString2 = "Redeem"
local ohTable3 = {
["Code"] = v.Value,
}

game:GetService("ReplicatedStorage").Replicator:InvokeServer(ohString1, ohString2, ohTable3)
end
end