repeat task.wait() until game:IsLoaded()
if not hookmetamethod then game.Players.LocalPlayer:Kick('your exploit is not supported') end

local players = game:GetService('Players')
local RunService = game:GetService('RunService')
local Teams = game:GetService('Teams')
local user_input_service = game:GetService('UserInputService')
local workspace = game:GetService('Workspace')

local camera = workspace.CurrentCamera
local wtvp = camera.WorldToViewportPoint
local localplayer = players.LocalPlayer

local function indexExists(object, index)
    local _, value = pcall(function() return object[index] end)
    return value
end

local function get_character(player) return indexExists(player, 'Character') end

local function get_mouse_location() return user_input_service:GetMouseLocation() end

local function is_alive(player) return player.Character and player.Character:FindFirstChild('Humanoid') and player.Character:FindFirstChild('Humanoid').Health > 0 end
local function is_team(player) return #Teams:GetChildren() > 0 and player.Team == localplayer.Team end

local function getClosestPlayerToCursor(fov)

    local maxDistance = fov or math.huge

    local closestPlayer = nil
    local closestPlayerDistance = math.huge

    for _, player in pairs(players:GetPlayers()) do

        if player ~= localplayer and not is_team(player) and get_character(player) and is_alive(player) then
            local pos, on_screen = wtvp(camera, get_character(player).Head.Position)

            if not on_screen then continue end

            local distance = (get_mouse_location() - Vector2.new(pos.X, pos.Y)).magnitude

            if distance <= maxDistance and distance < closestPlayerDistance then
                closestPlayer = player
                closestPlayerDistance = distance
            end
        end
    end

    return closestPlayer
end

shared.fov = 400
local circle = Drawing.new('Circle')
circle.Thickness = 2
circle.NumSides = 12
circle.Radius = shared.fov or 400
circle.Filled = false
circle.Transparency = 1
circle.Color = Color3.new(1, 0, 0.384313)
circle.Visible = true
local target = nil
RunService.Heartbeat:Connect(function(deltaTime)
    task.wait(deltaTime ^ 2)
    target = getClosestPlayerToCursor(shared.fov)
    circle.Position = get_mouse_location()
end)

local OldNamecall
OldNamecall = hookmetamethod(workspace, '__namecall', newcclosure(function(...)
    local args = { ... }
    local method = string.lower(getnamecallmethod())
    local caller = getcallingscript()
    if method == 'findpartonraywithwhitelist' and tostring(caller) == 'First Person Controller' then

        local HitPart = target and target.Character and target.Character.Head or nil
        if HitPart then
            local Origin = HitPart.Position + Vector3.new(0, 5, 0)
            local Direction = (HitPart.Position - Origin)
            args[2] = Ray.new(Origin, Direction)

            return OldNamecall(unpack(args))
        else
            return OldNamecall(...)
        end
    end
    return OldNamecall(...)
end))