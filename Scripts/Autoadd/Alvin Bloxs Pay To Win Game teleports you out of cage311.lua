repeat task.wait() until game:IsLoaded()
wait(1)
game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.6617775, 5.11784983, -35.8674088, 0.999873877, -3.33570398e-08, -0.0158811584, 3.41142119e-08, 1, 4.74066013e-08, 0.0158811584, -4.79423967e-08, 0.999873877)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 75 --edit walkspeed to your liking
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 75 --edit jump power to your liking
game:GetService("CoreGui").PurchasePrompt:Destroy()