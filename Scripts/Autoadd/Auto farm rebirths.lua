local check = {}
for i=1,40 do
    check[i] = game:GetService("Workspace").Checkpoints[tostring(i)]
end

while wait(1) do
    local player = game.Players.LocalPlayer
    local stage = player.leaderstats.Stage.Value
    
    if stage >= 1 and stage < 40 then
        local next_check = check[stage+1]
        if next_check then
            player.Character:MoveTo(next_check.Position)
        end
    elseif stage == 40 then
        local event = game:GetService("ReplicatedStorage").Remotes.Rebirth
        event:FireServer()
    elseif stage == 0 then
        player.Character:MoveTo(Vector3.new(681, 19, -148))
    end
end
