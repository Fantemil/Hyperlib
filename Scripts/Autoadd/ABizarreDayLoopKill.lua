while true do
wait(0.1)
for i,v in pairs (game:GetService("Players"):GetPlayers()) do
if v.Name ~= game.Players.LocalPlayer.Name then
local args = {
   [1] = v.Character.Humanoid,
   [2] = CFrame.new(-6778.92041015625, 582.7293701171875, -26.717456817626953) * CFrame.Angles(1.504410982131958, 0.045612189918756485, -2.7124948501586914),
   [3] = 90,
   [4] = 0.25,
   [5] = Vector3.new(-5.3440752029418945, -8.054662004042257e-08, 8.452269554138184),
   [6] = "rbxassetid://241837157",
   [7] = 0.075,
   [9] = "rbxassetid://260430079",
   [10] = 0.9,
   [11] = 0.4
}

game:GetService("ReplicatedStorage").Damage:FireServer(unpack(args))

end
end
end