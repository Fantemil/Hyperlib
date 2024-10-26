--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
setclipboard('https://discord.gg/VudXCDCaBN')
print("copied discord inv to your clipboard made by kylosilly")

while task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Train"):WaitForChild("Remote"):WaitForChild("TrainAnimeHasEnded"):FireServer()
end