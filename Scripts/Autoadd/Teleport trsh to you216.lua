for i,v in pairs(workspace.Map:GetDescendants()) do
if v:IsA("MeshPart") and v.Name == "Trash" then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end