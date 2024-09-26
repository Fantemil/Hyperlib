for i = 1, 12 do
    local ohString = string.format("OLT_%03d", i)
    game:GetService("ReplicatedStorage").Remotes.OnlineTimeClaimRF:InvokeServer(ohString)
end