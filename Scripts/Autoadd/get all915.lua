game.Workspace.Impostor["do not remove or edit"]:Destroy()
wait(1)

for i,v in pairs(game.Workspace.Impostor:GetChildren()) do
    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end