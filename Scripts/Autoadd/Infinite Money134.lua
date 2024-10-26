while true do
    local args = {
    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Body Colors")
}

game:GetService("ReplicatedStorage").MetaPlugin.Events.GroupChestEvents.CanClaimChest:FireServer(unpack(args))

local args = {
    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Body Colors")
}

game:GetService("ReplicatedStorage").Events.Rewards.Chest:FireServer(unpack(args))
wait(0)
end