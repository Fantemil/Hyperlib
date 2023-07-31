game.Workspace.NoJumpZones.NoJumpZone:destroy()
print("No Jump Zones Deleted")
local check = {}
for i=1,40 do
    check[i] = game:GetService("Workspace").Checkpoints[tostring(i)]
end

while wait(0.2) do
    local player = game.Players.LocalPlayer
    local stage = player.leaderstats.Stage.Value
    
    if stage >= 0 and stage < 40 then
        local next_check = check[stage+1]
        if next_check then
            player.Character:MoveTo(next_check.Position)
        end
    elseif stage == 40 then
        local event = game:GetService("ReplicatedStorage").Remotes.Rebirth
        event:FireServer()
    elseif stage == 0 then
        print("There was an error with the script. Retrying")
    end
end
