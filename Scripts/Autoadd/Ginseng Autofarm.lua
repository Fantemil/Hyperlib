local UIS = game:GetService("UserInputService")
local loopOn = true
UIS.InputBegan:Connect(function(i,g)
if i.KeyCode == Enum.KeyCode.P then
if loopOn == true then
loopOn = false
else
loopOn = true
end
print(loopOn)
end
end)
while true do
for i,v in pairs (game.Workspace.Areas["Forest Of Dao"].Ginseng:GetChildren()) do
if loopOn == false then break end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
task.wait(0.3)
local args = { v, "Ginseng" }
game:GetService("ReplicatedStorage").Harvest.Harvest:FireServer(unpack(args))
task.wait(9)
end
task.wait()
end