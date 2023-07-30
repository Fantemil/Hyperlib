getgenv().killgame = true
while killgame and task.wait() do
pcall(function()
for i,v in pairs(workspace["AUT MAP"].Map["City of Tears"]:GetDescendants()) do
local ohCFrame1 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local ohNumber2 = 100
local ohNumber3 = 0
local ohNumber4 = 0
local ohNumber5 = 0
local ohInstance6 = v
local ohNumber7 = 220833967
local ohNumber8 = 2

game:GetService("ReplicatedStorage").newremotes.CreateProjectile:FireServer(ohCFrame1, ohNumber2, ohNumber3, ohNumber4, ohNumber5, ohInstance6, ohNumber7, ohNumber8)
end
end)
end