local args = {
    [3] = 100,
    [4] = Vector3.new(0.8440878391265869, -0.1331290602684021, 0.5194154977798462),
    [5] = 2,
    [6] = 0,
    [7] = false
}
local loopEnabled = true

while loopEnabled do
for i, player in pairs(game:GetService("Players"):GetPlayers()) do
    if player.Character:FindFirstChild("HumanoidRootPart") then
    args[1] = player.Character.Humanoid
    args[2] = player.Character.HumanoidRootPart
    game:GetService("Players").LocalPlayer.Character.Pistol.GunScript_Server.InflictTarget:FireServer(unpack(args))
end
end
  wait(1)
end