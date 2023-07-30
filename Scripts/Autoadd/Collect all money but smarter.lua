local player = game.Players.LocalPlayer
local workspace = game.Workspace

for _, child in pairs(workspace.Effects:GetChildren()) do
    if child:IsA("MeshPart") and child.Name == "Money" then
        firetouchinterest(player.Character.HumanoidRootPart, child, 0)
        firetouchinterest(player.Character.HumanoidRootPart, child, 1)
    end
end
