while wait() do
local args = {
    [1] = "SellBubble",
    [2] = "Sell"
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "BlowBubble"
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end