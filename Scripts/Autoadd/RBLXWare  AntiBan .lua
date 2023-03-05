local modvals = {'Owner','Admin','Moderator','HiddenMode'}
local players = game:GetService('Players')

players.PlayerAdded:Connect(function(plr)
    local status = plr:WaitForChild('PlayerStatus')
    status:WaitForChild('Moderator')
    status:WaitForChild('HiddenMode')
 task.wait(1)
    for i,v in next, modvals do
        if status[v].Value == true and plr ~= players.LocalPlayer then
            players.LocalPlayer:Kick('Mod joined')
        end
    end
end)

for _,plr in next, players:GetPlayers() do
    local status = plr:WaitForChild('PlayerStatus')
    for i,v in next, modvals do
        if status[v].Value == true and plr ~= players.LocalPlayer then
            players.LocalPlayer:Kick('Mod is in the server')
        end
    end
end