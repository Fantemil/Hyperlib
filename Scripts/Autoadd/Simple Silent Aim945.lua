--[[
    Arsenal 2 uses the workspace:Raycast function as seen in game.ReplicatedStorage.Modules.NewMouse
    you can either hook camera:ScreenPointToRay or workspace:Raycast for the silent aim
    i tried doing other stuff but this seemed to be the most native method
]]

--// services
local players = game:GetService("Players");
local workspace = game:GetService("Workspace");
local user_input_service = game:GetService("UserInputService");
local run_service = game:GetService("RunService");

--// instances
local camera = workspace.CurrentCamera;
local local_player = players.LocalPlayer;

--// script table
local script = {
    functions = {},
    locals = {
        silent_aim_target = nil,
        silent_aim_is_targetting = false
    }
}

--// functions
script.functions.new_connection = function(type: RBXScriptSignal, func: any): RBXScriptConnection
    return type:Connect(func);
end;

script.functions.get_direction = function(origin: Vector3, destination: Vector3): Vector3 --// https://github.com/Averiias/Universal-SilentAim
    return ((destination - origin).Unit * 1000);
end;

script.functions.world_to_screen = function(position: Vector3): any
    local viewport_position, on_screen = camera:WorldToViewportPoint(position);

    return {position = Vector2.new(viewport_position.X, viewport_position.Y), on_screen = on_screen};
end;

script.functions.has_character = function(player: Player): boolean
    return (player and player.Character and player.Character:FindFirstChildWhichIsA("Humanoid")) and true or false;
end;

script.functions.get_closest_player = function(): Player
    local mouse_position = user_input_service:GetMouseLocation();
    local radius = math.huge;
    local closest_player;

    for _, player in players:GetPlayers() do
        if (player == local_player) then continue end;

        if (not (script.functions.has_character(player))) then continue end;

        local screen_position = script.functions.world_to_screen(player.Character.HumanoidRootPart.Position);

        if (not (screen_position.on_screen)) then continue end;

        local distance = (mouse_position - screen_position.position).Magnitude;

        if (distance <= radius) then 
            radius = distance;
            closest_player = player;
        end;
    end;

    return closest_player;
end;

--// connections
script.functions.new_connection(run_service.RenderStepped, function()
    local new_target = script.functions.get_closest_player();
    
    script.locals.silent_aim_is_targetting = new_target and true or false;
    script.locals.silent_aim_target = new_target or nil;
end);

--// main hook
local __namecall; __namecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args, method = {...}, tostring(getnamecallmethod());

    if (not checkcaller() and (script.locals.silent_aim_is_targetting and script.locals.silent_aim_target) and self == workspace and method == "Raycast") then --// https://create.roblox.com/docs/workspace/raycasting
        local origin = args[1];

        args[2] = script.functions.get_direction(origin, script.locals.silent_aim_target.Character.HumanoidRootPart.Position);

        return __namecall(self, unpack(args));
    end;

    return __namecall(self, ...);
end);