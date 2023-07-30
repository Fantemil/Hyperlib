

local player = game.Players.LocalPlayer
local workspace = game.Workspace

for _, child in pairs(workspace.Effects:GetChildren()) do
    if child:IsA("MeshPart") and child.Name == "Money" then
        child.CFrame = player.Character.HumanoidRootPart.CFrame
    end
end
