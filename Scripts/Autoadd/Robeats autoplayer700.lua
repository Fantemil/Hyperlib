--// variables

local player = game:GetService("Players").LocalPlayer;

local accuracy_bounds = {
    Perfect = -0, 
    Great = -100,
    Okay = -100
};

local accuracy_names = {"Perfect", "Great", "Okay"};

local accuracy = shared.accuracy or "Perfect"; -- Perfect, Great, Okay, Random
local note_time_target = accuracy_bounds[accuracy];

local track_system;

--// functions 

local function get_track_action_functions(track_system)
    local press_track, release_track; 
    
    for index, track_function in next, track_system do 
        if type(track_function) == "function" then 
            local constants = getconstants(track_function);
            
            if table.find(constants, "press") then 
                press_track = track_function;
                
                if release_track then 
                    break; 
                end;
            elseif table.find(constants, "release") then 
                release_track = track_function;
                
                if press_track then 
                    break; 
                end;
            end;
        end;
    end;
    
    return press_track, release_track;
end;

local function get_local_track_system(session)
    local local_slot_index = getupvalue(session.set_local_game_slot, 1);
    
    for index, session_function in next, session do 
        if type(session_function) == "function" then 
            local object = getupvalues(session_function)[1];
            
            if type(object) == "table" and rawget(object, "count") and object:count() <= 4 then 
                return object:get(local_slot_index);
            end;
        end;
    end;
end;

--// get tracksystem 

for index, module in next, getloadedmodules() do 
    local module_value = require(module);
    
    if type(module_value) == "table" then 
        local new_function = rawget(module_value, "new");
        
        if new_function then 
            local first_upvalue = getupvalues(new_function)[1];
            
            if type(first_upvalue) == "table" and rawget(first_upvalue, "twister") then 
                track_system = module_value;
                
                break;
            end;
        end;
    end;
end;

--// main autoplayer 

local old_track_system_new = track_system.new;
track_system.new = function(...)
    local track_functions = old_track_system_new(...);
    local arguments = {...};
    
    if arguments[2]._players._slots:get(arguments[3])._name == player.Name then -- make sure its only autoplaying your notes if in multiplayer
        for index, track_function in next, track_functions do 
            local upvalues = getupvalues(track_function);
            
            if type(upvalues[1]) == "table" and rawget(upvalues[1], "profilebegin") then 
                local notes_table = upvalues[2];
                
                track_functions[index] = function(self, slot, session)
                    local local_track_system = get_local_track_system(session);
                    local press_track, release_track = get_track_action_functions(local_track_system);
                    
                    local test_press_name = getconstant(press_track, 10);
                    local test_release_name = getconstant(release_track, 6);
                    
                    if accuracy == "Random" then 
                        note_time_target = accuracy_bounds[accuracy_names[math.random(1, 3)]];
                    end;
    
                    for note_index = 1, notes_table:count() do 
                        local note = notes_table:get(note_index);
                        
                        if note then 
                            local test_press, test_release = note[test_press_name], note[test_release_name];
                            
                            local note_track_index = note:get_track_index(note_index);
                            local pressed, press_result, press_delay = test_press(note);
                            
                            if pressed and press_delay >= note_time_target then
                                press_track(local_track_system, session, note_track_index);
                                
                                session:debug_any_press();
                                
                                if rawget(note, "get_time_to_end") then -- if its not a long note then release right after
                                    delay(math.random(5, 18) / 100, function()
                                        release_track(local_track_system, session, note_track_index);
                                    end);
                                end;
                            end;
                            
                            if test_release then 
                                local released, release_result, release_delay = test_release(note);
                                
                                if released and release_delay >= note_time_target then 
                                    delay(math.random(2, 5) / 100, function()
                                        release_track(local_track_system, session, note_track_index);
                                    end);
                                end;
                            end;
                        end;
                    end;
                    
                    return track_function(self, slot, session);
                end;
            end;
        end;
    end;
    
    return track_functions;
end;