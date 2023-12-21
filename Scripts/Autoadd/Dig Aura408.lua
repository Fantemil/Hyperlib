--Script can be improved by a lot but It's pretty hard to script using mobile, It will randomly dig blocks within a radius of 15 so about a 3x3 range.

spawn(function()
while wait() do
for i,v in pairs(workspace.__THINGS.__INSTANCE_CONTAINER.Active.Digsite.Important.ActiveBlocks:GetChildren()) do
if v.Name == "Part" and (v.Position and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude < 15) then
for i = 1, 5 do
local args = {
    [1] = "Digsite",
    [2] = "DigBlock",
    [3] = v:GetAttribute('Coord')
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_FireCustomFromClient"):FireServer(unpack(args))
end
wait(0.1)
break
end
end
end
end)