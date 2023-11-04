for i,v in pairs(game.workspace.Crates:GetDescendants()) do
if v:IsA("MeshPart") or v:IsA("UnionOperation") then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end