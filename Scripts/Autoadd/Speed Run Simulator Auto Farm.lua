local plr = game:GetService("Players").LocalPlayer
while task.wait() do
    for _, v in next, game:GetService("Workspace").GameAssets.GlobalAssets.OrbSpawns:GetChildren() do
        for _, v in next, v:GetDescendants() do
            if v:IsA("TouchTransmitter") then
                firetouchinterest(plr.Character.HumanoidRootPart, v.Parent, 0)
            end
        end
    end
end