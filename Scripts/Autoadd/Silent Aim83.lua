--// cache the shared table
local shared;

--// services
local workspace = game:GetService("Workspace");
local players = game:GetService("Players");

--// instances
local camera = workspace.CurrentCamera;
local local_player = players.LocalPlayer;

--// main loop for getting the shared table
local nil_instances = getnilinstances();

for i = 1, #nil_instances do
    local instance = nil_instances[i];

    if instance.Name == "ClientLoader" then
        shared = getsenv(instance).shared; --// get the shared table of the client loader which includes the require function which we need
    end;
end;

--// game modules
local character_object = shared.require("CharacterObject");
local firearm_object = shared.require("FirearmObject");
local replication_interface = shared.require("ReplicationInterface");
local weapon_controller_interface = shared.require("WeaponControllerInterface");

--// get the entries table itself instead of calling getEntry everytime
local entries = debug.getupvalue(replication_interface.addEntry, 1);

--// classes
local combat_t = {}; do
    combat_t.get_closest_player = function()
        local radius = math.huge;
        local center = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2);
        local closest_player;
        local closest_torso;
        
        local all_players = players:GetPlayers();
        
        for i = 1, #all_players do
            local player = all_players[i];
            
            if player ~= local_player and player.Team ~= local_player.Team then
                local entry = entries[player];

                if not entry then
                    continue end;

                local third_person_object = entry:getThirdPersonObject();

                if not third_person_object then
                    continue end;
                
                local torso = third_person_object._torso;
                
                if not torso then
                    continue end;
                
                local screen_position, on_screen = camera:WorldToViewportPoint(torso.Position);
                
                if not on_screen then
                    continue end;
                
                local distance = (center - Vector2.new(screen_position.X, screen_position.Y)).Magnitude;
                
                if distance <= radius then
                    closest_player = player;
                    closest_torso = torso;
                    radius = distance;
                end;
            end;
        end;
        
        return closest_player, closest_torso;
    end;
end;

--// hook the fireRound function, used to change the direction cframe
local old_get_root_part = clonefunction(character_object.getRootPart);
local old_fire_round = clonefunction(firearm_object.fireRound);

--// useful
local is_spoofing = false;

--// save the old offsets in a table, so if you're not targeting it you can restore it
local old_offsets = {};

--// main hook
character_object.getRootPart = function(self)
    if debug.getinfo(2).name == "fireRound" then
        local actual_hrp = old_get_root_part(self);
        local closest_player, closest_torso = combat_t.get_closest_player();

        if closest_player and closest_torso then
            is_spoofing = true;
            local new_cframe = CFrame.new(actual_hrp.Position, closest_torso.Position);
            return {CFrame = new_cframe}; --// the only thing they access in the getRootPart func is the CFrame in fireRound, we can just return a fake table instead of a part, this MIGHT get detected tho by just adding a simple type check
        else
            is_spoofing = false;
        end;
    end;
    
    return old_get_root_part(self);
end;

--// hook the fireRound function, used to change the offsets
--// so the silent aimed position isn't offseted
firearm_object.fireRound = function(self, ...)
    old_offsets[self] = {
        _barrelOffset = self._barrelOffset,
        _mainC0 = self._mainC0
    };
    
    if is_spoofing then
        self._barrelOffset = CFrame.new();
        self._mainC0 = CFrame.new();
    else
        self._barrelOffset = old_offsets[self]._barrelOffset;
        self._mainC0 = old_offsets[self]._mainC0;
    end;

    return old_fire_round(self, ...);
end;