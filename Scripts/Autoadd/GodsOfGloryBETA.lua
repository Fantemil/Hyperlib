local destruction = game:GetService("Workspace").GameWorlds.NormalWorlds.World1.Destructibles:GetChildren()

for i = 1, #destruction do
    local des = destruction[i]
    local pog = {
        ["TagFullName"] = 'Workspace.GameWorlds.NormalWorlds.World1.Destructibles.' .. des.name
    };


local maybepog = game:GetService("ReplicatedStorage").Remotes.BreakBuilding;
maybepog:FireServer(pog);
end