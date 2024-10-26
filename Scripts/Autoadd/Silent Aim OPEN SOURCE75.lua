--[[
    the last arguement in the CreateBullet function expects a part,
    the only purpose of that arg is to get the lookvector of the part as you can see here https://linemaster-is.submissive.lol/feqJaTDZZDxS.png
    we simply create a fake part and replace the last arg with our fake part
--]]

--// services
local players = game:GetService("Players");
local workspace = game:GetService("Workspace");
local user_input_service = game:GetService("UserInputService");

--// instances
local local_player = players.LocalPlayer;
local camera = workspace.CurrentCamera;

--// macros
local cframe_new = CFrame.new;
local find_first_child = game.FindFirstChild;
local vector2_new = Vector2.new;
local wtvp = camera.WorldToViewportPoint;

--// functions
local utility = {}; do
    utility.new_connection = function(signal, func)
        return signal:Connect(func);
    end;

    utility.instance_new = function(type, properties)
        local instance = Instance.new(type);

        for property, value in properties do
            instance[property] = value;
        end;

        return instance;
    end;

    utility.has_character = function(player)
        return (player and player.Character and player.Character:FindFirstChild("Humanoid")) and true or false;
    end;

    utility.require = function(module_name)
        local loaded_modules = getloadedmodules();

        for i = 1, #loaded_modules do
            local loaded_module = loaded_modules[i];

            if loaded_module.Name == module_name then
                return require(loaded_module);
            end;
        end;

        return nil;
    end;
end;

local combat = {}; do
    combat.get_closest_player = function()
        local closest_player;
        local mouse_position = user_input_service:GetMouseLocation();
        local radius = math.huge;

        local all_players = players:GetPlayers();

        for i = 1, #all_players do
            local player = all_players[i];

            if player ~= players.LocalPlayer and utility.has_character(player) then
                local hrp = find_first_child(player.Character, "HumanoidRootPart");
                
                if not hrp then continue end; --// stupid check because of project delta

                local position, on_screen = wtvp(camera, hrp.Position);

                if not on_screen then continue end;


                local distance = (mouse_position - vector2_new(position.X, position.Y)).Magnitude;

                if distance <= radius then
                    radius = distance;
                    closest_player = player;
                end;
            end;
        end;

        return closest_player;
    end;
end;

--// silent aim

local fake_part_silent_part = utility.instance_new("Part", {
    Anchored = true,
    CanCollide = false,
    Transparency = 1,
    CFrame = cframe_new(1, 1, 1)
});

local bullet_module = utility.require("Bullet");

local old; old = hookfunction(bullet_module.CreateBullet, function(...)
    local args = {...};

    local closest_player = combat.get_closest_player();

    if not closest_player then return old(...) end; --// this is very stupid xD

    fake_part_silent_part.CFrame = cframe_new(camera.CFrame.Position, closest_player.Character.HumanoidRootPart.Position);

    args[9] = fake_part_silent_part;

    return old(unpack(args));
end);
