local Checkpoints = game:GetService("Workspace").Checkpoints

local children = Checkpoints:GetChildren()

table.sort(children, function(a, b)
    return tonumber(a.Name) < tonumber(b.Name)
end)

while task.wait() do
    for _,v in pairs(children) do
        if tonumber(v.Name) <= game.Players.LocalPlayer.leaderstats.Stage.Value then continue end
        game.Players.LocalPlayer.Character:PivotTo(v.CFrame + Vector3.new(0,1,0))
        task.wait(0.1)
    end
    if game.Players.LocalPlayer.leaderstats.Stage.Value == "71" then break end
end