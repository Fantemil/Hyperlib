--Simply run it for a few seconds then exit the game however you can as it will lag the living shit out you
while wait(0.5) do
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainUI.Enabled = false
for i,v in pairs(workspace.Destructible:GetDescendants()) do
if string.find(v.Name, "HitBox") then
local ohInstance1 = v

game:GetService("ReplicatedStorage").Remote.BreakTheCrate:FireServer(ohInstance1)
end
end
end