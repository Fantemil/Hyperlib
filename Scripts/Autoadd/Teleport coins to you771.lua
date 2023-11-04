for i,v in pairs(workspace.Dabloons:GetDescendants()) do
if v:IsA("UnionOperation") then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end