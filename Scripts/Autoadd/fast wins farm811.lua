auto weight script:
while true do
game:GetService("Players").LocalPlayer.RemoteEvent:FireServer()
wait(0.000000000000000000000001)
end

fast wins farm:
zone 1:
while true do
local args = {
    [1] = workspace.Worlds.Spawn.Scripted.FrisbeeArea
}

game:GetService("ReplicatedStorage").Shared.RBXUtil.Net:FindFirstChild("RE/ThrowFrisbee"):FireServer(unpack(args))


local args = {
    [1] = 25,
    [2] = Vector3.new(-189.19898986816406, 11.157164573669434, -199.45095825195312)
}

game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(args))


wait(0.000000000000000000000001)
end


zone 3:
while true do
local args = {
    [1] = workspace.Worlds.Japan.Scripted.FrisbeeArea
}

game:GetService("ReplicatedStorage").Shared.RBXUtil.Net:FindFirstChild("RE/ThrowFrisbee"):FireServer(unpack(args))


local args = {
    [1] = 70,
    [2] = Vector3.new(-147.2750701904297, 4.4004058837890625, 288.38958740234375)
}

game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(args))
wait(0.000000000000000000000001)
end

zone 4:
while true do

local args = {
    [1] = workspace.Worlds.Mexico.Scripted.FrisbeeArea
}

game:GetService("ReplicatedStorage").Shared.RBXUtil.Net:FindFirstChild("RE/ThrowFrisbee"):FireServer(unpack(args))


local args = {
    [1] = 250,
    [2] = Vector3.new(-140.43353271484375, 4.431581020355225, 534.8003540039062)
}

game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(args))
wait(0.000000000000000000000001)
end


zone 6:
while true do
local args = {
    [1] = workspace.Worlds.Jungle.Scripted.FrisbeeArea
}

game:GetService("ReplicatedStorage").Shared.RBXUtil.Net:FindFirstChild("RE/ThrowFrisbee"):FireServer(unpack(args))


local args = {
    [1] = 6500,
    [2] = Vector3.new(-400.37876892089844, 4.458342552185059, 867.978271484375)
}

game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(args))

wait(0.000000000000000000000001)
end