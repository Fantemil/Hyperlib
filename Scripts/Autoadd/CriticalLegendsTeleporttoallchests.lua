while true do
for i,v in pairs(game.Workspace.Chests:GetChildren()) do
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Giver.CFrame
   wait()

end
end