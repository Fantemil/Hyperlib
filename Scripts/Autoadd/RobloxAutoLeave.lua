if not game:IsLoaded() then game.Loaded:wait() end
local Players = game:GetService('Players')
list = {"Builderman", "ROBLOX", "ps4atrain"} -- names of unwanted users
local plrlist = {} -- for getting list of player names to check if unwanted users are already in your game by chance

local function kick(Name)
 local plr = Players.LocalPlayer
 plr:Kick("Unwanted Player: ".. Name .." has joined your server") -- kicks you telling you the unwanted player name
end

function addPlayers() -- add already existing players
    for _, v in pairs(Players:GetChildren()) do
        local t = plrlist
        local name = v.name
        table.insert(t, name) -- will add player names to end of table
    end
end

function addPlayer(plr) -- for player joining
    local Name = plr.Name
    table.insert(plrlist, name)
end

function check()
    for _, name in pairs(plrlist) do
        -- since list is a table we gotta make it check every name in it
        for  i = 1, 50 do -- you can make this check for more players but idk why you got 50 unwanted players but you do you.
            if name == list[i] then
                kick(name)
            end
        end
    end
end

addPlayers()
wait(0.5)
check()

game.Players.PlayerAdded:Connect(function(player)
    addPlayer(player)
    check()
end)