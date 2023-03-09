-- Services
local UserInputService = game:GetService("UserInputService") 
local RunService = game:GetService("RunService") 
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

-- Local
local local_player = Players.LocalPlayer

local mouse = local_player:GetMouse()

-- Drawings
local fov_circle
local fov_target

-- Status
local aim_distance = 500
local ignore_fov = true
local current_target = nil

-- Garbage Collector
local garbage_collection = getgc(true)

local game_client = {}
for _, v in pairs(garbage_collection) do
    if typeof(v) == "table" then
        if rawget(v, "humanoid") then -- Init Chunk (IDK why but game no longer uses this, so it will never appear)
            game_client.setup = v
        elseif rawget(v, "fillHunger") then -- Character Chunk
            game_client.integrity = v
        elseif rawget(v, "animateSnow") then
            game_client.stance = v
        elseif rawget(v, "dragCart") then -- Inventory Chunk
            game_client.operable = v
        elseif rawget(v, "getBackpackNameItem") then
            game_client.inventory = v
        elseif rawget(v, "_start") then
            game_client.interaction = v
        elseif rawget(v, "eat") then
            game_client.item = v
        elseif rawget(v, "setupStocks") then
            game_client.economy = v
        elseif rawget(v, "newHint") then -- UI Chunk
            game_client.interface = v
        elseif rawget(v, "Request") then -- Network Chunk
            game_client.misc = v
        elseif rawget(v, "animateProjectile") then
            game_client.weapon_fire = v
        end
    end
end

-- Functions
local function handle_drawing(type, properties)
    local drawing = Drawing.new(type)
    for i,v in next, properties do
        drawing[i] = v
    end
    return drawing
end

local function get_character(player)
    return Workspace.World.Characters:FindFirstChild(player)
end

local function get_camera(player)
    return Workspace.CurrentCamera
end

local function calculate_target()
    if local_player.Character then
        local max_distance = math.huge
        local target 
        local magnitude
        local current_character
        for _,v in next, Players:GetPlayers() do
            if v ~= local_player then
                current_character = get_character(v.Name)
                if current_character then
                    if current_character:FindFirstChild("Torso") then
                        if local_player:DistanceFromCharacter(current_character.Torso.Position) < aim_distance then
                            local camera = get_camera()
                            local screen_position, on_screen = camera:WorldToViewportPoint(current_character.Torso.Position)
                            if on_screen then
                                magnitude = (fov_circle.Position - Vector2.new(screen_position.X, screen_position.Y)).magnitude
                                if (magnitude < fov_circle.Radius) or ignore_fov then
                                    if magnitude < max_distance then
                                        max_distance = magnitude
                                        target = current_character
                                    end
                                end
                                current_character = nil
                            else
                                current_character = nil
                            end
                        end
                    end
                end
            end
        end
        if UserInputService:IsKeyDown("LeftControl") then
            current_target = target
        else
            current_target = nil
        end
    end
end

do -- Hooks
    do -- integrity hooks
        local old_set_warmth = game_client.integrity.setWarmth
        local old_set_stamina = game_client.integrity.setStamina
        local old_set_hunger = game_client.integrity.setHunger

        game_client.integrity.setWarmth = function(self, warmth)
            warmth = 6000 -- This get's clamped anyways
            return old_set_warmth(game_client.integrity, warmth)
        end

        game_client.integrity.setStamina = function(self, stamina)
            stamina = 100 -- This get's clamped anyways
            return old_set_stamina(game_client.integrity, stamina)
        end

        game_client.integrity.setHunger = function(self, hunger)
            hunger = 200 -- This get's clamped anyways
            return old_set_hunger(game_client.integrity, hunger)
        end
    end

    do -- interaction hooks
        local old_start_interaction = game_client.interaction._start

        game_client.interaction._start = function(object)
            if object.objectTargetting or object.deployValid then
                object.interacting = true
                object:request()
            end
        end
    end

    do -- stance hooks
        local old_update_walkspeed = game_client.stance.updateWalkSpeed
        -- For future exploiting
    end

    do -- weapon hook
        local index_hook
        index_hook = hookmetamethod(game, "__index", function(self, index)
            if not checkcaller() then
                if self == mouse and index == "Hit" then
                    if current_target then
                        return current_target.Torso.CFrame
                    end
                end
            end
            return index_hook(self, index)
        end)

        

        -- Insert Instant Reload, it's not that hard
    end
end

do -- Init
    game_client.interface:newHint(("Welcome %s, to Yukihook."):format(local_player.Name))

    fov_circle = handle_drawing("Circle", {
        Radius = 100,
        Transparency = 1,
        Filled = false,
        Thickness = 1,
        Visible = true,
        Color = Color3.fromRGB(255,255,255),
    })

    fov_target = handle_drawing("Circle", {
        Radius = 4,
        Transparency = 1,
        Thickness = 1,
        Filled = true,
        Color = Color3.fromRGB(255,0,0),
    })
end

-- Connections
RunService.RenderStepped:Connect(function()
    calculate_target()
    fov_circle.Position = UserInputService:GetMouseLocation()
    fov_circle.Color = current_target and Color3.fromRGB(255,0,0) or Color3.fromRGB(255, 255, 255)
    fov_circle.Visible = not ignore_fov and true or false
    if current_target then
        local camera = get_camera()
        local screen_position, on_screen = camera:WorldToViewportPoint(current_target.Torso.Position)
        if on_screen then
            fov_target.Position = Vector2.new(screen_position.X, screen_position.Y)
            fov_target.Visible = true
        end
    else
        fov_target.Visible = false
    end
end)