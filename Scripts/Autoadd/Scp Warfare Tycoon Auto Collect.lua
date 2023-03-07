_G.autoCollect =true;

while _G.autoCollect == true do
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").Tycoons.ECHO.collector.collectPart:GetDescendants()) do
if v.Name == "TouchInterest" and v.Parent then
firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
wait()
firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
end
end
wait()
end