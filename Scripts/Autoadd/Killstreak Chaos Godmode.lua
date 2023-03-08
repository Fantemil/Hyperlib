--// The dev is an actual retard I swear ððð \\--
game.RunService.RenderStepped:Connect(function()
pcall(function()
if game.Players.LocalPlayer.Character:FindFirstChild("AnticheatValue") ~= nil then
    game.Players.LocalPlayer.Character:FindFirstChild("AnticheatValue").Parent = nil
end

if game.Players.LocalPlayer.Character:FindFirstChild("InSpawn").Value == true then
else game.Players.LocalPlayer.Character:FindFirstChild("InSpawn").Parent = nil
end
end)
end)