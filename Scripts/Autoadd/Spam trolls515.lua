--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
while true do
    local argsPurchaseTroll = {
        [1] = {
            ["ItemName"] = "ClownPlayer",
            ["Key"] = "x7",
            ["Cash"] = 0
        }
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PurchaseTroll"):InvokeServer(unpack(argsPurchaseTroll))

    task.wait()

    local Players = game:GetService("Players")
    local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TrollPlayer")

    for _, player in ipairs(Players:GetPlayers()) do
        local trollArgs = {
            [1] = player.Name
        }
        event:FireServer(unpack(trollArgs))
        task.wait()
    end
end