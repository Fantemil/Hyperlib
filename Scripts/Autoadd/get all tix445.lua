for tix = 0, 10 do
    local rizz = string.format("%02d", tix)
    local args = {[1] = {["badgeKey"] = "CLASSIC_EVENT_TIX_"..rizz}}
    game:GetService("ReplicatedStorage").Remotes.RequestClassicBadge:InvokeServer(unpack(args))
end