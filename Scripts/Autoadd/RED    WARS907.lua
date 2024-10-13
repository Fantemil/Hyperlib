--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local args = {
    [1] = "buy",
    [2] = {
        [1] = "Whale",
        [2] = -500000
    }
}

game:GetService("ReplicatedStorage").OnCouponBuyState:InvokeServer(unpack(args))
