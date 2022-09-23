local root = game.Players.LocalPlayer.Character.HumanoidRootPart

local hearts = game:GetService("Workspace").ScavengerHunt.IheartScavengerHunt

root.Position = Vector3.new(-26, 146, -1930)

for _, v in ipairs(hearts:GetDescendants()) do
    if v:IsA("TouchTransmitter") then
        firetouchinterest(root, v.Parent, 0)
        firetouchinterest(root, v.Parent, 1)
    end
end