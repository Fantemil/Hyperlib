while wait() do
game:GetService("ReplicatedStorage").ProjectBlue_ClientNewLaunchEvent:FireServer(workspace.World.Lobby.Launcher.Collision)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108391248, 9e+18, 9e+18)
game:GetService("ReplicatedStorage").ProjectBlue_ClientStopLaunchEvent:FireServer()
end