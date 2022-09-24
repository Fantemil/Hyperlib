local clans = { "Kamado", "Agatsuma" };

local players = game:GetService("Players");
local runService = game:GetService("RunService");
local replicatedStorage = game:GetService("ReplicatedStorage");

local localPlayer = players.LocalPlayer;
local playerData = replicatedStorage:WaitForChild("Player_Data");
local localData = playerData:WaitForChild(localPlayer.Name);
local clan = localData:WaitForChild("Clan");

local remotes = replicatedStorage:WaitForChild("Remotes");
local sendServer = remotes:WaitForChild("To_Server");
local handleSpin = sendServer:WaitForChild("Handle_Initiate_S_");

while task.wait() do
    if (not table.find(clans, clan.Value)) then
        if (game.PlaceId ~= 5956785391) then
            localPlayer:Kick("use the script in the main menu");
        else
            handleSpin:InvokeServer("check_can_spin");
        end
    end
end