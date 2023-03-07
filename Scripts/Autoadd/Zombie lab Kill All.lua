for i=2,#game.Players:GetPlayers() do
v=game.Players:GetPlayers()[i]
local args = {
    [1] = v.Character:WaitForChild("Humanoid"),
    [2] = v.Character:WaitForChild("HumanoidRootPart"),
    [3] = math.huge,
}
pcall(function()
if not game.Players.LocalPlayer.Backpack:FindFirstChild("Pistol") then
game:GetService("Players").LocalPlayer.Character.Pistol.GunScript_Server.InflictTarget:FireServer(unpack(args))
else
game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Server.InflictTarget:FireServer(unpack(args))
end
end)
end