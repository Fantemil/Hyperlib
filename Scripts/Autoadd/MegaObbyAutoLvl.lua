getgenv().Cucumber = true -- false to stop
while getgenv().Cucumber do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ArrowGuide.CFrame
wait(1.5)
end