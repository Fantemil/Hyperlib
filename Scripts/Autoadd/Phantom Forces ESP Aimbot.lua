local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/hexress/sex-hub/main/uilib')))()

local Window = OrionLib:MakeWindow({Name = "Phantom Forces", HidePremium = false, SaveConfig = true, ConfigFolder = "sexhub"})

OrionLib:MakeNotification({
 Name = "sex hub",
 Content = "sex hub loaded",
 Image = "rbxassetid://4483345998",
 Time = 3
})

local Tab = Window:MakeTab({
 Name = "Aimbot",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Aimbot"
})

Tab:AddButton({
 Name = "Aimbot (Hold M2)",
 Callback = function()
   -- instancing
local drawing_new = Drawing.new
local instance_new = Instance.new

-- workspace
local vector2_new = Vector2.new
local vector3_new = Vector3.new
local cframe_new = CFrame.new
local cframe_angles = CFrame.Angles
local raycast_params_new = RaycastParams.new
local raycast = workspace.Raycast

-- color
local color3_rgb = Color3.fromRGB
local color3_hsv = Color3.fromHSV
local color3_new = Color3.new

-- math
local math_floor = math.floor
local math_ceil = math.ceil
local math_atan2 = math.atan2
local math_rad = math.rad
local math_random = math.random
local math_randomseed = math.randomseed

-- string
local string_char = string.char
local string_format = string.format

-- table
local table_sort = table.sort

-- task
local task_wait = task.wait

-- namecall
local gdbd = game.GetDebugId
local get_children = game.GetChildren
local get_descendants = game.GetDescendants
local find_first_child_of_class = game.FindFirstChildOfClass
local find_first_child = game.FindFirstChild
local is_descendant_of = game.IsDescendantOf
local world_to_view_point = find_first_child_of_class(workspace, "Camera").WorldToViewportPoint
local point_world_space = cframe_new().pointToWorldSpace
local point_object_space = cframe_new().pointToObjectSpace
local vector_world_space = cframe_new().vectorToWorldSpace
local is_a = game.IsA

-- globals
local workspace = workspace
local pairs = pairs
local pcall = pcall
local tostring = tostring
local tick = tick
local getgenv = getgenv
local mousemoverel = mousemoverel
local mouse1press = mouse1press
local mouse1release = mouse1release

-- random
math_randomseed(tick())
function random_string(len)
 local str = ""
 for i = 1, len do
  str = str .. string_char(math_random(97, 122))
 end
 return str
end

getgenv().render_loop_stepped_name = renderloop_stepped_name or random_string(math_random(15, 35))
getgenv().update_loop_stepped_name = update_loop_stepped_name or random_string(math_random(15, 35))

-- services
local players = game:GetService("Players")
local run_service = game:GetService("RunService")
local uis = game:GetService("UserInputService")

-- other
local local_player = players.LocalPlayer
local mouse = local_player:GetMouse()

local cam = find_first_child_of_class(workspace, "Camera")

local screen_size = cam.ViewportSize
local center_screen = vector2_new(screen_size.X / 2, screen_size.Y / 2)

local enum_rft_blk = Enum.RaycastFilterType.Blacklist
local glass = Enum.Material.Glass

local white = color3_rgb(255, 255, 255)
local green = color3_rgb(0, 255, 0)

local dummy_part = instance_new("Part", nil)

drawing_new("Square").Visible = false -- initialize drawing lib

local pi = math.pi

-- dont touch lol
local custom_players = true
local refresh_que = false
local start_aim = false
local aim_head = false
local added_fov = 0

-- execute to apply
local options = {
    -- global settings
    frame_delay = 10, -- delay between rendering each frame (in miliseconds)
    refresh_delay = 0.25, -- delay between refreshing script (in seconds)
    max_dist = 9e9, -- 9e9 = very big
    team_check = true,
    wall_check = true,
    
    loop_all_humanoids = false, -- loop through workspace to find npc's to lock onto
    ignore_player_humanoids = true, -- will not lock onto/esp players (only if loop_all_humanoids is enabled)

    -- ui settings (sort of ui)
    fov_circle = true,
    aiming_at = true,

    -- aimbot settings
    aimbot = true,
    smoothness = 1,
    fov = 700,
    fov_increase_on_aim = 0, -- increases your fov by this value while the aimbot is active
    rage_mode = false, -- disregards fov, smoothness, odds and will lock onto people behind you

    -- aim type settings
    mouse_emulation = true, -- the default, will emulate user input (and is more natural)
   -- aimlock, easier to detect, does not obey the smoothness setting but locks instantly

    -- will not lock on to people with this *username*, do not use a displayname for this, use the username
    ignore_people = {
        ["name"] = true, -- example of how you would exclude someone
    },

    -- will try to prefire when aiming
    triggerbot = false,

    -- aimbot activation settings
    acts_as_toggle = false,
    
    -- https://developer.roblox.com/en-us/api-reference/enum/UserInputType
    mouse_key = Enum.UserInputType["MouseButton2"],
    -- how to disable: mouse_key = nil,
    -- how to enable: mouse_key = Enum.UserInputType["*"],

    -- https://developer.roblox.com/en-us/api-reference/enum/KeyCode
    keyboard_key = Enum.KeyCode["E"],
    -- how to disable: keyboard_key = nil,
    -- how to enable: keyboard_key = Enum.KeyCode["*"],

    -- headshot odds
    headshot_chance = 100, -- odds for aiming on the head in percentage, 0 = no head (lol) and 100 = always head
    update_on_refresh_delay = false, -- less nauseating, will recalculate odds every refresh instead of every frame

    -- aiming prioritization options
    looking_at_you = false, -- whoever is most likely to hit you
    closest_to_center_screen = true,
    closest_to_you = false,

    -- taxing, usually useless, will iterate backwards through players list if the "best player to lock onto" cant be locked onto
    backwards_iteration = false,

    -- global esp settings
    esp = false,
    esp_thickness = 2,
    
    -- esp settings
    tracers = true,
    box = true,

    -- overhead esp settings
    overhead = true, -- disables name health and distance entirely
    name = true,
    distance = true,
    health = true,
    outline = true, -- text outline, laggier

    -- rainbow settings
    rainbow = false,
    rainbow_speed = 5, -- lower is faster, 0.000001 is the lowest you can go

    -- looking_at_tracer settings (lat = looking_at_tracer in short)
    looking_at_tracer = true, -- will show where a player is looking

    --https://www.google.com/search?q=color+picker
    lat_color = color3_rgb(200, 0, 255), -- color in rgb
    lat_thickness = 2,
    lat_length = 3, -- how far the tracer will go (in studs)
    
    -- crosshair settings
    crosshair = false,

    crosshair_distance = 4,
    crosshair_thickness = 1,
    crosshair_length = 8;
}

-- script already running?
if remove_all_esp then
    run_service:UnbindFromRenderStep(render_loop_stepped_name)
    run_service:UnbindFromRenderStep(update_loop_stepped_name)

    task_wait() -- wait for a frame to pass

    remove_all_esp()

    if descendant_hum_added then
        descendant_hum_added:Disconnect()
        descendant_hum_removing:Disconnect()
        player_name_added:Disconnect()
        player_name_removed:Disconnect()
    end

    player_added:Disconnect()
    player_removed:Disconnect()

    input_began:Disconnect()
    input_ended:Disconnect()

    getgenv().remove_all_esp = nil

    return;
end

-- how the script will find the players
local characters = {}
local player_names = {}

local function get_players()
    local place = game.PlaceId

    if options.loop_all_humanoids then
        if not player_names[local_player.Name] then -- ran for the first time
            -- get player names
            for _, val in pairs(get_children(players)) do
                player_names[val.Name] = true
            end

            getgenv().player_name_added = players.ChildAdded:Connect(function(added)
                player_names[added.Name] = true
            end)

            getgenv().player_name_removed = players.ChildRemoved:Connect(function(added)
                player_names[added.Name] = nil
            end)

            -- get players with events
            for _, val in pairs(workspace:GetDescendants()) do
                if is_a(val, "Humanoid") and val.Parent ~= local_player.Character and not (options.ignore_player_humanoids and player_names[val.Parent.Name]) then
                    characters[gdbd(val.Parent)] = val.Parent
                end
            end

            getgenv().descendant_hum_added = workspace.DescendantAdded:Connect(function(added)
                if is_a(added, "Humanoid") and added.Parent ~= local_player.Character and not (options.ignore_player_humanoids and player_names[added.Parent.Name]) then
                    characters[gdbd(added.Parent)] = added.Parent
                end
            end)
            
            getgenv().descendant_hum_removing = workspace.DescendantRemoving:Connect(function(removing)
                if is_a(removing, "Humanoid") then
                    characters[gdbd(removing.Parent)] = nil
                end
            end)
        end

        return characters
    end

    if place == 292439477 then -- phantom forces
        local leaderboard = local_player.PlayerGui.Leaderboard.Main

        if leaderboard then
            if options.team_check then
                local is_ghost = pcall(function()
                    return leaderboard.Ghosts.DataFrame.Data[local_player.Name]
                end)
                
                return get_children(workspace.Players[(is_ghost and "Bright blue") or "Bright orange"])
            else
                local instance_table = {}

                for idx, val in pairs(get_children(workspace.Players["Bright blue"])) do
                    if is_a(val, "Model") then
                        instance_table[#instance_table + 1] = val
                    end
                end

                for idx, val in pairs(get_children(workspace.Players["Bright orange"])) do
                    if is_a(val, "Model") then
                        instance_table[#instance_table + 1] = val
                    end
                end

                return instance_table -- return both teams
            end
        end

        return {} -- wtf???
    end

    if place == 3837841034 then
        return get_children(workspace.characters)
    end

    if place == 5938036553 then
        local chars = {}

        for _, val in pairs(get_children(workspace)) do
            if val.Name == "r15_rig" then
                chars[#chars + 1] = val
            end
        end

        return chars
    end

    custom_players = false
    return get_children(players)
end

local aiming = {
    fov_circle_obj = nil,
    line = nil,
    circle = nil;
}

local crosshair = {
    top = nil,
    bottom = nil,
    right = nil,
    left = nil;
}

local players_table = {}
local tracers = {}
local quads = {}
local overheads = {}
local looking_at_tracers = {}

-- needed functions
local function to_screen(vec3)
    local screen_pos, in_screen = world_to_view_point(cam, vec3)
    
    return vector2_new(screen_pos.X, screen_pos.Y), in_screen, screen_pos, options.rage_mode
end

local function get_part_corners(part)
    local size = part.Size * vector3_new(1, 1.5, 0)

    local cf = part.CFrame

    return {
        top_right = (cf * cframe_new(-size.X, -size.Y, 0)).Position,
        bottom_right = (cf * cframe_new(-size.X, size.Y, 0)).Position,
        top_left = (cf * cframe_new(size.X, -size.Y, 0)).Position,
        bottom_left = (cf * cframe_new(size.X, size.Y, 0)).Position,
    }
end

local function new_drawing(class_name)
    return function(props)
        local inst = drawing_new(class_name)

        for idx, val in pairs(props) do
            if idx ~= "instance" then
                inst[idx] = val
            end
        end
        
        return inst
    end
end

local function add_or_update_instance(tbl, child, props)
    local inst = tbl[child]
    if not inst then
        tbl[child] = new_drawing(props.instance)(props)

        return inst;
    end

    for idx, val in pairs(props) do
        if idx ~= "instance" then
            inst[idx] = val
        end
    end

    return inst
end

local function get_rainbow()
    return color3_hsv((tick() % options.rainbow_speed / options.rainbow_speed), 1, 1)
end

local function remove_esp(idx)
    add_or_update_instance(tracers, idx, {
        Visible = false,
        instance = "Line"
    })

    add_or_update_instance(quads, idx, {
        Visible = false,
        instance = "Quad"
    })

    add_or_update_instance(overheads, idx, {
        Visible = false,
        instance = "Text"
    })

    add_or_update_instance(looking_at_tracers, idx, {
        Visible = false,
        instance = "Line"
    })
end

local ignored_instances = {}

local raycast_params = raycast_params_new()
raycast_params.FilterType = enum_rft_blk
raycast_params.IgnoreWater = true

local function can_hit(origin_pos, part)
    if not options.wall_check then
        return true
    end

    local ignore_list = {cam, local_player.Character}

    for idx, val in pairs(ignored_instances) do
        ignore_list[#ignore_list + 1] = val
    end

    raycast_params.FilterDescendantsInstances = ignore_list
    
    local raycast_result = raycast(workspace, origin_pos, (part.Position - origin_pos).Unit * options.max_dist, raycast_params)

    local result_part = ((raycast_result and raycast_result.Instance) or dummy_part)

    if result_part ~= dummy_part then
        if result_part.Transparency >= 0.3 then -- ignore low transparency
            ignored_instances[#ignored_instances + 1] = result_part
        end

        if result_part.Material == glass then -- ignore glass
            ignored_instances[#ignored_instances + 1] = result_part
        end
    end

    return is_descendant_of(result_part, part.Parent)
end

local function hitting_what(origin_cframe)
    if not options.wall_check then
        return dummy_part
    end

    local ignore_list = {cam, local_player.Character}

    for idx, val in pairs(ignored_instances) do
        ignore_list[#ignore_list + 1] = val
    end
    
    raycast_params.FilterDescendantsInstances = ignore_list
    
    local raycast_result = raycast(workspace, origin_cframe.p, origin_cframe.LookVector * options.max_dist, raycast_params)

    local result_part = ((raycast_result and raycast_result.Instance) or dummy_part)
    
    if result_part ~= dummy_part then
        if result_part.Transparency >= 0.3 then -- ignore low transparency
            ignored_instances[#ignored_instances + 1] = result_part
        end

        if result_part.Material == glass then -- ignore glass
            ignored_instances[#ignored_instances + 1] = result_part
        end
    end

    return result_part
end

local function is_inside_fov(point)
    return options.rage_mode or ((point.x - center_screen.X) ^ 2 + (point.y - center_screen.Y) ^ 2 <= aiming.fov_circle_obj.Radius ^ 2)
end

local function chanced() -- shanced 2 - 0 gf *tabs*
    return options.rage_mode or math_random(1, 100) <= options.headshot_chance
end

local function screen_height(yval)
    if yval > (screen_size.Y / 2) then
        return -0.5
    end

    return 0.5
end

local function _refresh()
    for idx in pairs(tracers) do -- hide all esp instances
        remove_esp(idx)
    end

    players_table = get_players() -- fetch new player list
end

local function refresh()
    refresh_que = true -- queue refresh before next render
end

-- player events
getgenv().player_added = players.ChildAdded:Connect(refresh)
getgenv().player_removed = players.ChildRemoved:Connect(refresh)

-- aimbot triggers
getgenv().input_began = uis.InputBegan:Connect(function(input)
    if input.KeyCode == options.keyboard_key then
        if options.acts_as_toggle then
            start_aim = not start_aim
        else
            start_aim = true
        end

        if options.fov_increase_on_aim > 0 then
            for i = 1, options.fov_increase_on_aim * 0.3 do
                added_fov = added_fov + 3
                task_wait()
            end

            added_fov = options.fov_increase_on_aim
        end
    end

    if input.UserInputType == options.mouse_key then
        if options.acts_as_toggle then
            start_aim = not start_aim
        else
            start_aim = true
        end

        if options.fov_increase_on_aim > 0 then
            for i = 1, options.fov_increase_on_aim * 0.3 do
                added_fov = added_fov + 3
                task_wait()
            end

            added_fov = options.fov_increase_on_aim
        end
    end
end)

getgenv().input_ended = uis.InputEnded:Connect(function(input)
    if input.KeyCode == options.keyboard_key then
        if not options.acts_as_toggle then
            start_aim = false
        end

        if options.fov_increase_on_aim > 0 then
            for i = 1, options.fov_increase_on_aim * 0.3 do
                added_fov = added_fov - 3
                
                task_wait()
            end

            added_fov = 0
        end
    end

    if input.UserInputType == options.mouse_key then
        if not options.acts_as_toggle then
            start_aim = false
        end

        if options.fov_increase_on_aim > 0 then
            for i = 1, options.fov_increase_on_aim * 0.3 do
                added_fov = added_fov - 3

                task_wait()
            end

            added_fov = 0
        end
    end
end)

local last_tick = 0;

local function stepped()
    if (tick() - last_tick) > (options.frame_delay / 1000) then
        last_tick = tick()

        if refresh_que then -- refresh queed?
            _refresh()
            
            refresh_que = false
        end

        add_or_update_instance(aiming, "fov_circle_obj", {
            Visible = options.fov_circle,
            Thickness = options.esp_thickness,
            Radius = options.fov + added_fov,
            Position = center_screen,
            Color = (options.rainbow and get_rainbow()) or white,
            instance = "Circle";
        })
    
        add_or_update_instance(crosshair, "top", {
            Visible = options.crosshair,
            Thickness = options.crosshair_thickness,
            From = vector2_new(center_screen.X, center_screen.Y - options.crosshair_length - options.crosshair_distance),
            To = vector2_new(center_screen.X, center_screen.Y - options.crosshair_distance),
            Color = (options.rainbow and get_rainbow()) or white,
            instance = "Line";
        })
    
        add_or_update_instance(crosshair, "bottom", {
            Visible = options.crosshair,
            Thickness = options.crosshair_thickness,
            From = vector2_new(center_screen.X, center_screen.Y + options.crosshair_length + options.crosshair_distance + 1),
            To = vector2_new(center_screen.X, center_screen.Y + options.crosshair_distance + 1),
            Color = (options.rainbow and get_rainbow()) or white,
            instance = "Line";
        })
    
        add_or_update_instance(crosshair, "left", {
            Visible = options.crosshair,
            Thickness = options.crosshair_thickness,
            From = vector2_new(center_screen.X - options.crosshair_length - options.crosshair_distance, center_screen.Y),
            To = vector2_new(center_screen.X - options.crosshair_distance, center_screen.Y),
            Color = (options.rainbow and get_rainbow()) or white,
            instance = "Line";
        })
        
        add_or_update_instance(crosshair, "right", {
            Visible = options.crosshair,
            Thickness = options.crosshair_thickness,
            From = vector2_new(center_screen.X + options.crosshair_length + options.crosshair_distance + 1, center_screen.Y),
            To = vector2_new(center_screen.X + options.crosshair_distance + 1, center_screen.Y),
            Color = (options.rainbow and get_rainbow()) or white,
            instance = "Line";
        })

        local closers_chars = {}

        for _, plr in pairs(players_table) do
            local id = gdbd(plr)

            if plr == local_player then continue; end

            if options.ignore_people[plr.Name] then continue; end

            if options.team_check and not options.loop_all_humanoids and not custom_players and plr.Team then
                if plr.TeamColor == local_player.TeamColor then remove_esp(id); continue; end
                if plr.Team == local_player.Team then remove_esp(id); continue; end
            end

            local plr_char = ((options.loop_all_humanoids or custom_players) and plr) or plr.Character
            if plr_char == nil then remove_esp(id); continue; end

            local root_part = 
                find_first_child(plr_char, "Torso") 
                or find_first_child(plr_char, "UpperTorso") 
                or find_first_child(plr_char, "LowerTorso") 
                or find_first_child(plr_char, "HumanoidRootPart") 
                or find_first_child(plr_char, "Head") 
                or find_first_child_of_class(plr_char, "BasePart")
                
            if root_part == nil then remove_esp(id); continue; end
            if not is_a(root_part, "BasePart") then remove_esp(id); continue; end
            
            local head = find_first_child(plr_char, "Head") or root_part
            if not is_a(head, "BasePart") then continue; end

            local plr_screen, visible, scr_z = to_screen(head.Position)
            local mag = (head.Position - cam.CFrame.Position).Magnitude

            if mag > options.max_dist then remove_esp(id); continue; end

            if options.esp then
                local col = (options.rainbow and get_rainbow()) or white
                local corners = get_part_corners(root_part)

                local a_screen, a_visible = to_screen(corners.top_left)
                local b_screen, b_visible = to_screen(corners.top_right)
                local c_screen, c_visible = to_screen(corners.bottom_right)
                local d_screen, d_visible = to_screen(corners.bottom_left)

                if options.tracers then -- doesnt have a hide condition
                    local object_space_pos = point_object_space(cam.CFrame, vector3_new(
                        (corners.top_left.X + corners.top_right.X) / 2, 
                        (corners.top_left.Y + corners.top_right.Y) / 2, 
                        (corners.top_left.Z + corners.top_right.Z) / 2
                    ))
     
     if 0 > scr_z.Z then -- thanks unnamed esp for the math
      local angle = math_atan2(object_space_pos.Y, object_space_pos.X) + pi
                        object_space_pos = vector_world_space(cframe_angles(0, 0, angle), (cframe_angles(0, math_rad(89.99), 0).LookVector))
     end
     
     local tracer_pos = to_screen(point_world_space(cam.CFrame, object_space_pos))
                    
                    add_or_update_instance(tracers, id, {
                        Visible = options.esp,
                        Thickness = options.esp_thickness,
                        From = vector2_new(screen_size.X / 2, screen_size.Y - 36),
                        To = tracer_pos,
                        Color = (options.rainbow and get_rainbow()) or color3_new(255 / mag, mag / 255, 0),
                        instance = "Line";
                    })
                end

                if options.box then
                    if a_visible and b_visible and c_visible and d_visible then
                        add_or_update_instance(quads, id, {
                            Visible = options.esp,
                            Thickness = options.esp_thickness,
                            PointA = a_screen,
                            PointB = b_screen,
                            PointC = c_screen,
                            PointD = d_screen,
                            Color = col,
                            instance = "Quad";
                        })
                    else
                        add_or_update_instance(quads, id, {
                            Visible = false,
                            instance = "Quad";
                        })
                    end
                end

                if options.looking_at_tracer then
                    local a_head_src, a_visible = to_screen(head.Position)
                    local b_lv_src, b_visible = to_screen(head.Position + head.CFrame.LookVector * options.lat_length)

                    if a_visible and b_visible then
                        add_or_update_instance(looking_at_tracers, id, {
                            Visible = options.esp,
                            Thickness = options.lat_thickness,
                            To = a_head_src,
                            From = b_lv_src,
                            Color = options.lat_color or white,
                            instance = "Line";
                        })
                    else
                        add_or_update_instance(looking_at_tracers, id, {
                            Visible = false,
                            instance = "Line";
                        })
                    end
                end

                if options.overhead then
                    local text = "";

                    if options.health then
                        local hum = find_first_child_of_class(plr_char, "Humanoid")

                        if hum then
                            text = string_format("%s[%d/%d] ", text, math_ceil(hum.Health), math_ceil(hum.MaxHealth))
                        end
                    end

                    if options.distance then
                        text = string_format("%s[%d]\n", text, math_floor(mag))
                    end

                    if options.name then
                        text = string_format("%s%s ", text, plr.Name)
                    end
    
                    local head_screen, h_visible = to_screen(head.Position + head.CFrame.UpVector * 2)

                    if h_visible then
                        local obj = overheads[id]

                        add_or_update_instance(overheads, id, {
                            Visible = options.esp,
                            Outline = options.outline,
                            Center = true,
                            Position = head_screen - vector2_new(0, (obj and obj.TextBounds.Y) or 0),  
                            Text = text,
                            Color = col,
                            instance = "Text";
                        })
                    else
                        add_or_update_instance(overheads, id, {
                            Visible = false,
                            instance = "Text";
                        })
                    end
                end
            end

            if options.aimbot then
                if options.looking_at_you then
                    closers_chars[((head.Position + head.CFrame.LookVector * mag) - cam.CFrame.p).Magnitude] = plr_char
                elseif options.closest_to_center_screen then
                    closers_chars[(plr_screen - center_screen).Magnitude] = plr_char
                elseif options.closest_to_you then
                    closers_chars[mag] = plr_char
                end
            end
        end -- sort players, esp, teamcheck

        if not options.aimbot then return; end

        local mags = {}

        for idx in pairs(closers_chars) do
            mags[#mags + 1] = idx
        end

        table_sort(mags)

        local idx_sorted = {}

        for _, idx in pairs(mags) do
            idx_sorted[#idx_sorted + 1] = closers_chars[idx]
        end

        local run_aimbot = nil;
        run_aimbot = function(plr_offset)
            local char = idx_sorted[plr_offset]

            if char then
                local children = get_children(char)
                local parts = {}

                for _, obj in pairs(children) do
                    if is_a(obj, "BasePart") then
                        local part_screen, part_in_screen, _, rage = to_screen(obj.Position)

                        if can_hit(cam.CFrame.p, obj) and (part_in_screen or rage) and (is_inside_fov(part_screen) or rage) then
                            local set = {
                                part = obj,
                                screen = part_screen,
                                visible = part_in_screen;
                            }

                            parts[obj.Name] = set

                            parts[0] = set -- set last part
                        end
                    end
                end

                local chosen = nil;

                if not options.update_on_refresh_delay then
                    aim_head = chanced()
                end

                if parts["Head"] and aim_head then
                    chosen = parts["Head"]
                else
                    local torso = parts["Torso"] or parts["UpperTorso"] or parts["LowerTorso"]
                    if torso then
                        chosen = torso
                    else
                        chosen = parts["Head"] or parts[0] -- aim on head if odds are against the head, but the torso isnt visible, or on other visible part
                    end
                end
                
                if chosen then
                    local scale = (chosen.part.Size.Y / 2)

                    local top, top_z, top_visible = to_screen((chosen.part.CFrame * cframe_new(0, scale, 0)).Position);
                    local bottom, bottom_z, bottom_visible = to_screen((chosen.part.CFrame * cframe_new(0, -scale, 0)).Position);
                    local radius = -(top - bottom).y;

                    add_or_update_instance(aiming, "circle", {
                        Visible = top_visible and bottom_visible and options.aiming_at,
                        Thickness = options.esp_thickness,
                        Radius = radius / 2,
                        Position = chosen.screen,
                        Color = (options.rainbow and get_rainbow()) or (start_aim and green) or white,
                        instance = "Circle";
                    })

                    if start_aim then
                        add_or_update_instance(aiming, "line", {
                            Visible = options.aiming_at,
                            Thickness = options.esp_thickness,
                            From = center_screen,
                            To = chosen.screen,
                            Color = (options.rainbow and get_rainbow()) or (start_aim and green) or white,
                            instance = "Line";
                        })

                        local smoothness = (options.rage_mode and 1) or options.smoothness

                        if chosen.visible then
                            if options.mouse_emulation then
                                mousemoverel((chosen.screen.X - mouse.X) / smoothness, (chosen.screen.Y - (mouse.Y + 36)) / smoothness)
                            elseif options.camera_cframe then
                                cam.CFrame = cframe_new(cam.CFrame.p, chosen.part.Position)
                            end
                        elseif options.rage_mode then
                            if options.mouse_emulation then
                                mousemoverel(screen_size.X / 4, (chosen.screen.Y - (mouse.Y + 36)) * screen_height(mouse.Y))
                            elseif options.camera_cframe then
                                cam.CFrame = cframe_new(cam.CFrame.p, chosen.part.Position)
                            end
                        end

                        if options.triggerbot then
                            if is_descendant_of(hitting_what(cam.CFrame), chosen.part.Parent) then
                                mouse1press()
                            else
                                mouse1release()
                            end
                        end

                        return;
                    else
                        if options.triggerbot then
                            mouse1release()
                        end
                        
                        add_or_update_instance(aiming, "line", {
                            Visible = false,
                            instance = "Line";
                        })

                        return;
                    end -- aiming?

                    return; -- part is on screen, and in fov, no need to find a new player, loop ends here
                end -- part exists?

                if options.triggerbot then
                    mouse1release()
                end

                add_or_update_instance(aiming, "line", {
                    Visible = false,
                    instance = "Line";
                })

                add_or_update_instance(aiming, "circle", {
                    Visible = false,
                    instance = "Circle";
                })

                if options.backwards_iteration then
                    run_aimbot(plr_offset + 1); -- previous player
                end
            end
        end

        run_aimbot(1);
    end
end

local last_refresh = 0;

run_service:BindToRenderStep(render_loop_stepped_name, 300, function()
    if (tick() - last_refresh) > options.refresh_delay then
        last_refresh = tick()

        if not cam or not cam.Parent or cam.Parent ~= workspace then
            cam = find_first_child_of_class(workspace, "Camera")

            world_to_view_point = cam.WorldToViewportPoint
        end

        if options.update_on_refresh_delay then
            aim_head = chanced()
        end

        refresh()
    end
end) -- refresher

run_service:BindToRenderStep(update_loop_stepped_name, 199, stepped)

-- kills esp
getgenv().remove_all_esp = function()
    for idx in pairs(tracers) do -- hide all esp instances
        remove_esp(idx)
    end

    -- aiming
    add_or_update_instance(aiming, "fov_circle_obj", {
        Visible = false,
        instance = "Circle";
    })

    add_or_update_instance(aiming, "circle", {
        Visible = false,
        instance = "Circle";
    })

    add_or_update_instance(aiming, "line", {
        Visible = false,
        instance = "Line";
    })
    
    -- crosshair
    add_or_update_instance(crosshair, "top", {
        Visible = false,
        instance = "Line";
    })

    add_or_update_instance(crosshair, "bottom", {
        Visible = false,
        instance = "Line";
    })

    add_or_update_instance(crosshair, "left", {
        Visible = false,
        instance = "Line";
    })
    
    add_or_update_instance(crosshair, "right", {
        Visible = false,
        instance = "Line";
    })
end
   end    
})

local Tab2 = Window:MakeTab({
 Name = "Visuals",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab2:AddSection({
 Name = "Visuals"
})

Tab2:AddButton({
 Name = "Outline ESP",
 Callback = function()
           -- Settings --

local settings = {
   
    fillcolor = Color3.fromRGB(255, 255, 255);
    filltransparency = .75;
    
    outlinecolor = Color3.fromRGB(255, 255, 255);
    outlinetransparency = 0;
    
 }
 
 -- Script --
 
 local plr = game:service'Players'.LocalPlayer
 local highlights = Instance.new('Folder', game:service'CoreGui')
 
 local function addhighlight(object)
    local highlight = Instance.new('Highlight', highlights)
    highlight.Adornee = object
    
    highlight.FillColor = settings.fillcolor
    highlight.FillTransparency = settings.filltransparency
    
    highlight.OutlineColor = settings.outlinecolor
    highlight.OutlineTransparency = settings.outlinetransparency
    
    highlight.Adornee.Changed:Connect(function()
        if not highlight.Adornee or not highlight.Adornee.Parent then
            highlight:Destroy()    
        end
    end)
    
    return highlight
 end
 
 local function addtoplayer(object)
    if object:IsA'Model' and object.Name == 'Player' and object.Parent.Name ~= tostring(plr.TeamColor) then
        addhighlight(object)
    end
 end
 
 for i,v in pairs(workspace.Players:GetDescendants()) do
    addtoplayer(v)
 end
 
 workspace.Players.DescendantAdded:Connect(function(v)
    addtoplayer(v)
 end)
   end    
})

local Tab3 = Window:MakeTab({
 Name = "Exploit",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab3:AddSection({
 Name = "Exploit"
})

Tab3:AddButton({
 Name = "Unlock All Weapons",
 Callback = function()
               -- made by siper#9938

-- modules
local network, char, loadgun, loadknife; do
    for _, object in next, getgc(true) do
        if (typeof(object) == "table") then
            if (rawget(object, "send")) then
                network = object;
            elseif (rawget(object, "setbasewalkspeed")) then
                char = object;
            end
        elseif (typeof(object) == "function") then
            local name = debug.getinfo(object).name;

            if (name == "loadgun") then
                loadgun = object;
            elseif (name == "loadknife") then
                loadknife = object;
            end
        end
    end
end

-- services
local replicatedStorage = game:GetService("ReplicatedStorage");

-- cache
local content = replicatedStorage:WaitForChild("Content");
local productionContent = content:WaitForChild("ProductionContent");
local attachmentModules = productionContent:WaitForChild("AttachmentModules");
local gunModules = productionContent:WaitForChild("GunModules");

-- stored data
local gunIgnore = {"JUGGUN", "HK417Old", "PAINTBALL GUN", "RAILGUN OLD", "PPK12", "SVK12E", "MG42"};
local weaponData = {};
local attachmentData = {};
local primaryClasses = { "ASSAULT", "BATTLE", "CARBINE", "SHOTGUN", "PDW", "DMR", "LMG", "SNIPER" };
local generalClassData = {
    ["ASSAULT"] = "AK12",
    ["BATTLE"] = "AK12",
    ["CARBINE"] = "M4A1",
    ["SHOTGUN"] = "KSG 12",
    ["PDW"] = "MP5K",
    ["DMR"] = "INTERVENTION",
    ["LMG"] = "COLT LMG",
    ["SNIPER"] = "INTERVENTION",
    ["PISTOL"] = "M9",
    ["MACHINE PISTOL"] = "M9",
    ["REVOLVER"] = "M9",
    ["OTHER"] = "M9",
    ["FRAGMENTATION"] = "M67 FRAG",
    ["HIGH EXPLOSIVE"] = "M67 FRAG",
    ["IMPACT"] = "M67 FRAG",
    ["ONE HAND BLADE"] = "KNIFE",
    ["TWO HAND BLADE"] = "KNIFE",
    ["ONE HAND BLUNT"] = "MAGLITE CLUB",
    ["TWO HAND BLUNT"] = "HOCKEY STICK",
};
local weapons = {};

-- hooks
do
    local oldNetworkSend = network.send; network.send = function(self, name, ...)
        local args = {...};

        if (name == "changewep") then
            weaponData[args[1]] = args[2];
            args[2] = generalClassData[weapons[args[2]].type];
        end

        if (name == "changeatt") then
            attachmentData[args[2]] = args[3];
            return
        end

        return oldNetworkSend(self, name, unpack(args));
    end

    local oldLoadgrenade = char.loadgrenade; char.loadgrenade = function(self, name, ...)
        name = weaponData["Grenade"] or name;
        return oldLoadgrenade(self, name, ...);
    end;

    local oldLoadknife; oldLoadknife = hookfunction(loadknife, function(name, ...)
        name = weaponData["Knife"] or name;
        return oldLoadknife(name, ...);
    end);

    local oldLoadgun; oldLoadgun = hookfunction(loadgun, function(name, magsize, sparerounds, attachments, ...)
        local gunData = weapons[name];
        local newName = table.find(primaryClasses, gunData.type) and weaponData["Primary"] or weaponData["Secondary"];

        name = (newName and newName or name);

        local attachs = attachmentData[name];

        if (attachs) then
            attachments = attachs;
        end

        return oldLoadgun(name, magsize, sparerounds, attachments, ...);
    end);
end

-- init
do
    for _, module in next, gunModules:GetChildren() do
        if (not table.find(gunIgnore, module.Name)) then
            local data = require(module);
            weapons[module.Name] = data;
        end
    end

    for _, module in next, attachmentModules:GetChildren() do
        local data = require(module);
        data.unlockkills = 0;
    end

    for _, module in next, gunModules:GetChildren() do
        if (not table.find(gunIgnore, module.Name)) then
            local data = require(module);
            data.unlockrank = 0;
            data.adminonly = false;
            data.supertest = false;
            data.exclusiveunlock = false;
            data.hideunlessowned = false;
            data.adminonly = false;
        end
    end
end
   end    
})

Tab3:AddButton({
 Name = "Fly (Press X For Toggle)",
 Callback = function()
             local User = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local GuiService = game:GetService("StarterGui")
local mouse = game.Players.LocalPlayer:GetMouse()

local holdingWKey = false
local holdingSKey = false
local holdingAKey = false
local holdingDKey = false
local holdingSpaceKey = false
local holdingControlKey = false

Speed_1 = -1

mouse.KeyDown:connect(function(key)
   if key == "-" then
       Speed_1 = Speed_1 + 0.2
       
   end
end)

mouse.KeyDown:connect(function(key)
   if key == "=" then
       Speed_1 = Speed_1 - 0.2
       
   end
end)

mouse.KeyDown:connect(function(key)
   if key == "x" then
       if startup  == true then
           startup = false
           
       else
           startup = true
           local brick = Instance.new("Part", workspace)
           brick.Size = Vector3.new(3, 2, 3)
           brick.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
           brick.Transparency = 1
           brick.Anchored = true
           brick.Name = "Brick"
           mouse.KeyDown:connect(function(key)
               if key == "x" then
                   brick:remove()
               end
           end)
           for i = 1, math.huge do
               brick.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
               wait(0)
           end
       end
   end
end)

game:GetService('RunService').Stepped:connect(function()
   if startup then
       if WHeld == true then
         player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,Speed_1)

       end
   end
end)

game:GetService('RunService').Stepped:connect(function()
   if startup then
   if SHeld == true then
        player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-Speed_1)
   end
   end
end)

game:GetService('RunService').Stepped:connect(function()
   if startup then
   if AHeld == true then
   player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(Speed_1,0,0)
   end
   end
end)


game:GetService('RunService').Stepped:connect(function()
   if startup then
   if DHeld == true then
   player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(-Speed_1,0,0)
   end
   end
end)


game:GetService('RunService').Stepped:connect(function()
   if startup then
   if SpaceHeld == true then
    player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,-Speed_1,0)
   end
   end
end)

game:GetService('RunService').Stepped:connect(function()
   if startup then
    if ControlHeld == true then
    player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,Speed_1,0)
       end
   end

end)

User.InputBegan:Connect(function(inputObject)
   if(inputObject.KeyCode==Enum.KeyCode.W) then
       holdingWKey = true WHeld = true
   end
   
   if(inputObject.KeyCode==Enum.KeyCode.S) then
       holdingSKey = true SHeld = true
   end

   if(inputObject.KeyCode==Enum.KeyCode.A) then
       holdingAKey = true AHeld = true
   end

   if(inputObject.KeyCode==Enum.KeyCode.D) then
       holdingDKey = true DHeld = true
   end
   if(inputObject.KeyCode==Enum.KeyCode.LeftControl) then
       holdingControlKey = true ControlHeld = true
   end

   if(inputObject.KeyCode==Enum.KeyCode.Space) then
       holdingSpaceKey = true SpaceHeld= true
   end

   if(inputObject.KeyCode==Enum.KeyCode.W) then
       holdingUKey = true WHeld = true
   end
end)

User.InputEnded:Connect(function(inputObject)
   if(inputObject.KeyCode==Enum.KeyCode.W) then
       holdingWKey = false WHeld = false
   end

   if(inputObject.KeyCode==Enum.KeyCode.S) then
       holdingSKey = false SHeld = false    
   end

   if(inputObject.KeyCode==Enum.KeyCode.A) then
       holdingAKey = false AHeld = false    
   end

   if(inputObject.KeyCode==Enum.KeyCode.D) then
       holdingDKey = false DHeld = false    
   end

   if(inputObject.KeyCode==Enum.KeyCode.LeftControl) then
       holdingShiftKey = false ControlHeld = false    
   end

   if(inputObject.KeyCode==Enum.KeyCode.Space) then
       holdingSpaceKey = false SpaceHeld = false
   end
end)
   end    
})

Tab3:AddButton({
 Name = "Airjump",
 Callback = function()
               local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
   end    
})

OrionLib:Init()