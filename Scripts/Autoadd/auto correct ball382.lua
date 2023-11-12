while true do wait(.1)
for i,v in pairs(game.Workspace.BallFolder:GetDescendants()) do

if v:IsA("StringValue") then
if v.Name == "DisplayRarity" then

local split = string.split(v.Parent.Name, ", ")
local split2 = string.split(split[#split], " ")
local total = #split - 1


local tablee = {
[1] = {
},
[2] = v.Parent
}
if total >= 1 then
for i = 1, total do
tablee[1][i] = split[i]
print(split[i])
end
local i2 = total + 1
print(i2)
tablee[1][i2] = split2[1]
end
print(tablee)
game:GetService("ReplicatedStorage"):WaitForChild("BallCollected"):FireServer(unpack(tablee))

end
end
end
end