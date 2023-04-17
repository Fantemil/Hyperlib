fireclickdetector(game:GetService("Workspace").Lobby.DiamondGlove.ClickDetector)
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = false
}
for i=1,50000 do
game:GetService("ReplicatedStorage").HumanoidDied:FireServer(unpack(args))
game:GetService("ReplicatedStorage").Rockmode:FireServer()
end