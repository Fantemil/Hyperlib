local client; do
    for index, actor in pairs(getactors()) do
        if (actor.name == "frontlines_client_actor") then
            client = actor;
            --
            break;
        end;
    end;
    --
    assert(client ~= nil, "the client actor could not be acquired");
end;
--
pcall(syn.run_on_actor, client, [[
local client = game.Players.LocalPlayer;
local mouse = client:GetMouse();
local camera = workspace.CurrentCamera;
local point = camera.WorldToScreenPoint;
local look = CFrame.lookAt;
local environment = getrenv()._G;
--
local globals; do
    warn("yielding for global upload...");
    --
    local tick = 0;
    --
    while task.wait(1.5) do
        globals = rawget(environment, "globals");
        --
        if (globals) then
            break;
        end;
        --
        tick += 1;
        --
        if tick > 5 then
            client:Kick("globals under the actor state could not be fetched");
            --
            break;
        end;
    end;
end;
--
local players = environment.PLAYER_COUNT;
local characters = globals.soldier_models;
local teams = globals.cli_teams;
local id = globals.cli_state.fpv_sol_id;
local spawn = environment.exe_set_t.FPV_SOL_BULLET_SPAWN;
--
local function target()
    local range, target = math.huge; do
        for index = 1, players do
            local character = characters[index];
            --
            if (character and teams[index] ~= teams[id]) then
                local part = character.PrimaryPart;
                local position, visible = point(camera, part.Position);
                --
                if (visible) then
                    local distance = Vector2.new((position.X - mouse.X), (position.Y - mouse.Y)).magnitude;
                    --
                    if (distance < range) then
                        range = distance;
                        target = part;
                    end;
                end;
            end;
        end;
    end;
    --
    return target;
end;
--
local function discharge(level)
    for index, value in pairs(getstack(1 + level)) do
        if (type(value) == "table" and type(rawget(value, "fire_params")) == "table") then
            return value;
        end;
    end;
end;
--
local exe; do
    local function proxy(event, ...)
        local arguments = {...};
        --
        if (event == spawn) then
            local target, discharge = target(), discharge(3);
            --
            if (target and discharge) then
                arguments[4] = (look(arguments[3], target.Position).lookVector * (discharge.fire_params.muzzle_velocity * discharge.fire_multipliers.muzzle_velocity));
            end;
        end;
        --
        return exe(event, unpack(arguments));
    end;
    --
    exe = replaceclosure(environment.exe_set, function(...)
        return proxy(...);
    end);
end;
--
warn("script initiated under the actor state");
]]);
--
warn("script initiated under the local state");