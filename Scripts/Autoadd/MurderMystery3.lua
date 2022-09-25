 -- coin autofarm
while wait(1) do
for i, v in pairs(game:GetService("Workspace").CoinsFolder:GetChildren()) do
    if v.Name == "Coin" then
    if game.Players.LocalPlayer.Name == game.Players.LocalPlayer.Name then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
wait(0.05)
else wait(0.05)
end
end
end
end