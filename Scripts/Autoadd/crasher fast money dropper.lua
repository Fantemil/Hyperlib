--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local args = {
    [1] = "100"
}

local walletRemotes = game:GetService("ReplicatedStorage"):WaitForChild("WalletRemotes")
local dropCash = walletRemotes:WaitForChild("DropCash")

while true do
    dropCash:FireServer(unpack(args))
    wait() -- add a small delay to prevent the server from being overloaded
end
