local players = game:GetService("Players") --// players
local local_player = players.LocalPlayer --// localplayer
local mouse = local_player:GetMouse() --// mouse
local user_input_service = game:GetService("UserInputService") --// userinputservice
local run_service = game:GetService("RunService") --// runservice
local current_camera = game:GetService("Workspace").CurrentCamera --// currentcamera
local mouse_location = user_input_service:GetMouseLocation() --// mouselocation
local teams = game:GetService("Teams") --// teams

local ts = require(game:GetService("ReplicatedStorage").TS) --// ts

--// index hook
local old_index
old_index = hookmetamethod(game, "__index", function(t, i)
    if i == "Character" then
        return ts.Characters:GetCharacter(t)
    elseif i == "Team" then
        return ts.Teams:GetPlayerTeam(t)
    end
    return old_index(t, i)
end)

--// ignore this. (not needed here)
local old = ts.Network.Fire
ts.Network.Fire = function(self, name, ...)
    local args = {...}
    if getnamecallmethod() == "GetService" then
        return wait(9e9)
    end
    return old(self, name, ...)
end

--// get closest entity to cursor
local function closest_to_cursor()
    local target, max_distance = nil, math.huge
    for i, v in next, players:GetPlayers() do
        if v ~= local_player and v.Character and v.Character:FindFirstChild("Root") and v.Team ~= local_player.Team then
            local position, on_screen = current_camera:WorldToScreenPoint(v.Character.Root.Position)
            local distance = (Vector2.new(position.x, position.y) - Vector2.new(mouse.x, mouse.y)).Magnitude
            if distance < max_distance then
                target, max_distance = v, distance
            end
        end
    end
    return target
end

--// silent aim (max dist of 150m)
local old = ts.Raycast.CastGeometryAndEnemies
ts.Raycast.CastGeometryAndEnemies = function(...)
    local args = {...}
    if closest_to_cursor() then
        args[3] = (closest_to_cursor().Character.Root.Position - args[2])
    end
    return old(unpack(args))
end