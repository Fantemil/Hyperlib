for i,v in pairs(game:GetService("Workspace").Dump.LiveEvents:GetDescendants()) do
if v:IsA('MeshPart') then
game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = v.CFrame
wait()
end
end