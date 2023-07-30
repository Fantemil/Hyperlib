--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local args = {
    [1] = "coaster"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("QuestService"):WaitForChild("RE"):WaitForChild("SelfieStick"):FireServer(unpack(args))
