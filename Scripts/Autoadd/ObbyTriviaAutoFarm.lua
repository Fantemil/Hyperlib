e = true
while wait(0.1) and e == true do
for i, v in pairs(game:GetService("Workspace").Lobby.PracticeCoinSpawns:GetChildren()) do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
    wait()
end
end