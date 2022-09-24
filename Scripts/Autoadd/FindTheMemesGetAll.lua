game.Workspace.Pals.floppa.Head.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(2)
game.Workspace.Pals.floppa:Destroy()

for i,v in pairs(game.Workspace.Pals:GetChildren()) do
    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end