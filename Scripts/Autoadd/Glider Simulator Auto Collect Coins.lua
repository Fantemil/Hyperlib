getgenv().on = true; -- change to false to disable
while getgenv().on == true do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Collectables.CoinBoost.Weight.CFrame
print("This code is running.")
game:GetService("RunService").Heartbeat:wait();
end;