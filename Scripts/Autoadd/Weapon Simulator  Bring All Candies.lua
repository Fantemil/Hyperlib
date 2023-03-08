for i,v in pairs(game:GetService("Workspace").CandyCanes:GetDescendants()) do
if v:IsA('MeshPart') then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end