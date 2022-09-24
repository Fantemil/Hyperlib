local utils = {};
local Players = game:GetService('Players');
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local LocalPlayer = Players.LocalPlayer;
utils.attackPlayer = function(player)
    if (player.Character ~= nil) then ReplicatedStorage.GameRemotes.Attack:InvokeServer(player.Character) end
end
utils.getClosestPlayer = function()
    local Closest;
    for i,v in pairs(Players:GetPlayers()) do
        if (v ~= LocalPlayer and v.Character ~= nil and v.Character.PrimaryPart ~= nil) then
            if (Closest ~= nil) then
                if ((LocalPlayer.Character.PrimaryPart.Position-v.Character.PrimaryPart.Position).Magnitude < (LocalPlayer.Character.PrimaryPart.Position-Closest.Character.PrimaryPart.Position).Magnitude) then
                    Closest = v;
                end
            else
                Closest = v;
            end
        end
    end
    return Closest;
end

while wait() do utils.attackPlayer(utils.getClosestPlayer()) end