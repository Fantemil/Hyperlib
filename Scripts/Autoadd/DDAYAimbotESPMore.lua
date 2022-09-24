repeat wait() until game:IsLoaded()

-- Fail checks
if game.PlaceId ~= 901793731 then
    game.Players.LocalPlayer:Kick("D-Day Destroyer only works on D-Day .")
    return
end

if getgenv().ddestroyer_executed == true then
    game.Players.LocalPlayer:Kick("DDestroyer was already executed once.")
    return
else
    getgenv().ddestroyer_executed = true
end


local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local FrameworkLib = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Universal"):WaitForChild("Framework"))

-- Needed map things
local map = workspace:WaitForChild("Map")
local vegetation = workspace:WaitForChild("Vegetation")
local map_boundaries = workspace:WaitForChild("Map_Boundaries")
local boundaries = workspace:WaitForChild("Boundaries")
local helmet_crates = workspace:WaitForChild("Helmet_Crates")
local medic_bags = workspace:WaitForChild("Medic_Bags")

-- Settings
local can_shoot = true

-- Triggerbot X
getgenv().triggerbot = false

-- Aimbot X
getgenv().aimbot = false
getgenv().aiming = false
getgenv().aimbotfov = 0
getgenv().closest_to_cursor = false
getgenv().aimbotfovcircle = false
getgenv().aimbotfovcolor = Color3.new(255, 0, 0)
getgenv().aimbotparts = {}
getgenv().silent = false
getgenv().silentautoshoot = false
getgenv().aimbot_button = Enum.KeyCode.LeftAlt
getgenv().aimbot_always_on = false

-- Gun settings X
getgenv().everygunauto = false
getgenv().nocamerashake = false
getgenv().nospread = false
getgenv().infiniteammo = false
getgenv().aimview_tog = false
getgenv().aimview = 0

-- Esp X
getgenv().player_esp = false
getgenv().player_esp_color = Color3.new(255,0,0)
getgenv().player_tracers = false
getgenv().player_tracers_color = Color3.new(255,0,0)
getgenv().mine_esp = false
getgenv().mine_esp_color = Color3.new(255,0,0)

-- Cursor Silent kill X 
getgenv().cursor_silentkill = false

-- Shoot aura X
getgenv().shootaura = false
getgenv().shootauraparts = {"Head", "HumanoidRootPart", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "RightUpperArm", "LeftUpperArm"}
getgenv().shootaurafov = 0
getgenv().shootaura_range = math.huge
getgenv().shootaurafovcircle = false
getgenv().shootaurafovcolor = Color3.new(255,0,0)

-- Local Player stuff X
getgenv().walkspeedtog = false
getgenv().walkspeedval = 64
getgenv().jumppowertog = false
getgenv().jumppowerval = 64
getgenv().walkspeedtog = false
getgenv().walkspeedval = 64
getgenv().collide = true

-- Player data
local possible_player_parts = 
{
    "Helmet",
    "Head", 
    "UpperTorso", 
    "LowerTorso", 
    "LeftUpperArm", 
    "RightUpperArm", 
    "LeftLowerArm", 
    "RightLowerArm", 
    "LeftHand", 
    "RightHand", 
    "LeftUpperLeg", 
    "RightUpperLeg", 
    "LeftLowerLeg", 
    "RightLowerLeg", 
    "LeftFoot", 
    "RightFoot"
}
local player_data = {}

-- Universal functions
local function updatePlayerData()
    player_data["player"] = Players.LocalPlayer
    player_data["character"] = player_data["player"].Character or player_data["player"].CharacterAdded:Wait()
    player_data["humanoid"] = player_data["character"]:WaitForChild("Humanoid")
    player_data["root"] = player_data["character"]:WaitForChild("HumanoidRootPart")
    player_data["camera"] = workspace.CurrentCamera
end

updatePlayerData()

local function getDistanceFromPlayer(part)
    return (player_data["root"].Position - part.Position).Magnitude
end

local function createInstance(inst, args)
    local instance = Instance.new(inst)
    -- Instance properties
    for key, value in pairs(args) do
        instance[key] = value
    end
    return instance
end

-- Cheat functions
-- COOL GUN STUFF
local function setGunSettings(gun)
    if gun == nil or not gun:IsA("Tool") then
        return
    end
    local gun_info = FrameworkLib.weapons:FindFirstChild(gun.Name)
    if not gun_info then
        return
    end
    local gun_settings = gun_info:FindFirstChild("Setting")
    if not gun_settings then
        return
    end
    gun_settings = require(gun_settings)

    local unequipped = false
    local unequipped_e 
    unequipped_e = gun.Unequipped:Connect(function()
        unequipped = true
        unequipped_e:Disconnect()
    end)

    local gun_script = gun:FindFirstChild("GunScript_Local")
    if not gun_script then
        return
    end
    local script_env = getsenv(gun_script)

    local ToolAction = script_env.ToolAction
    local DetermineSpread = script_env.DetermineSpread

    if getgenv().everygunauto then
        local table_ = getupvalue(ToolAction, 10)
        table_.Auto = true
        setupvalue(ToolAction, 10, table_)
    end
    
    local fake_camera = Instance.new("Camera")
    while not unequipped do
        if getgenv().nocamerashake then
            setupvalue(ToolAction, 9, fake_camera)
        end
        if getgenv().infiniteammo then
            setupvalue(ToolAction, 5, gun_settings.AmmoPerClip)
        end
        if getgenv().aimview_tog then
            local table_ = getupvalue(ToolAction, 10)
            table_.AimView = getgenv().aimview
            setupvalue(ToolAction, 10, table_)
        end
        wait()
    end
    fake_camera:Destroy()
end

player_data["character"].ChildAdded:Connect(function(child)
    setGunSettings(child)
end)

player_data["player"].CharacterAdded:Connect(function()
    updatePlayerData()
    player_data["character"].ChildAdded:Connect(function(child)
        setGunSettings(child)
    end)
end)

-- ESP
local function drawBoxOnPlayer(player)
    local box = Drawing.new("Square")
    box.Visible = false
    box.Thickness = 1
    box.Transparency = 1
    box.Filled = false
    local connection 
    connection = RunService.RenderStepped:Connect(function()
        box.Visible = false
        if player == nil or player.Parent == nil then
            connection:Disconnect()
            box:Remove()
            return
        end
        local character = player.Character
        if player == player_data["player"] or character == nil then
            return
        end

        local root = character:FindFirstChild("HumanoidRootPart")
        if root == nil then
            return
        end

        if (root.Position - player_data["root"].Position).Magnitude <= 8 then
            return
        end

        local humanoid = character:FindFirstChild("Humanoid")
        if not humanoid then
            return
        end
    
        local head = character:FindFirstChild("Head")
        if not head then
            return
        end
    
        local vector, on_screen = player_data["camera"]:worldToViewportPoint(root.Position)
    
        local root_position, root_on_screen = player_data["camera"]:worldToViewportPoint(root.Position)
        local head_position, head_on_screen = player_data["camera"]:worldToViewportPoint(root.Position)
        local legs_position, legs_on_screen = player_data["camera"]:worldToViewportPoint(root.Position - Vector3.new(0, 3, 0))
    
        if on_screen and player.TeamColor ~= player_data["player"].TeamColor and humanoid:GetState() ~= Enum.HumanoidStateType.Dead and humanoid.Health > 0 then
            box.Size = Vector2.new(1000 / root_position.Z, head_position.Y - legs_position.Y)
            box.Position = Vector2.new(root_position.X - box.Size.X / 2, root_position.Y - box.Size.Y / 2)
            box.Color = getgenv().player_esp_color
            box.Visible = getgenv().player_esp
        end
    end)
end

local function playerEsp()
    for index, player in pairs(Players:GetPlayers()) do
        drawBoxOnPlayer(player)
    end
    Players.PlayerAdded:Connect(function(player)
        drawBoxOnPlayer(player)
    end)
end

-- Mine ESP
local function drawBoxOnPart(part)
    local box = Drawing.new("Square")
    box.Visible = false
    box.Thickness = 1
    box.Transparency = 1
    box.Filled = false
    local connection 
    connection = RunService.RenderStepped:Connect(function()
        box.Visible = false
        if part == nil or part.Parent == nil then
            connection:Disconnect()
            box:Remove()
            return
        end
        if not part:IsDescendantOf(workspace) then
            return
        end

        local position, on_screen = player_data["camera"]:worldToViewportPoint(part.Position)
    
        if on_screen then
            box.Size = Vector2.new(500 / position.Z, 500 / position.Z)
            box.Position = Vector2.new(position.X - box.Size.X / 2, position.Y - box.Size.Y / 2)
            box.Color = getgenv().mine_esp_color
            box.Visible = getgenv().mine_esp
        end
    end)
end

local function mineEsp()
    for index, part in pairs(map:GetChildren()) do
        if part.Name == "Static_Landmine" then
            drawBoxOnPart(part)
        end
    end
    map.ChildAdded:Connect(function(part)
        if part.Name == "Static_Landmine" then
            drawBoxOnPart(part)
        end
    end)
end

-- Tracers
local function drawLineToPlayer(player)
    local line = Drawing.new("Line")
    line.Visible = true
    line.Transparency = 1
    line.Thickness = 2
    line.Color = getgenv().player_tracers_color

    local connection
    connection = RunService.RenderStepped:Connect(function()
        line.Visible = false
        if player == nil then
            line:Remove()
            connection:Disconnect()
            return
        end

        if player == player_data["player"] then
            return
        end

        if player.TeamColor == player_data["player"].TeamColor then
            return
        end

        local character = player.Character
        if character == nil then
            return
        end

        local root =  character:FindFirstChild("HumanoidRootPart")
        if root == nil then
            return
        end

        if (root.Position - player_data["root"].Position).Magnitude <= 8 then
            return
        end

        local legs_pos = root.CFrame.Position - Vector3.new(0, 3, 0)

        -- Getting variables needed for the end of the line
        local current_camera = workspace.CurrentCamera
        if current_camera == nil then
            return
        end

        local position, on_screen = current_camera:WorldToViewportPoint(legs_pos)

        if not on_screen then
            return
        end
        -- Getting variables needed for the start of the line
        local width = current_camera.ViewportSize.X 
        local height = current_camera.ViewportSize.Y

        line.Visible = getgenv().player_tracers
        line.From = Vector2.new(width / 2, height - (height * 0.1))
        line.To = Vector2.new(position.X, position.Y)
        line.Color = getgenv().player_tracers_color
    end)
end

local function playerTracers()
    for index, player in pairs(Players:GetPlayers()) do
        drawLineToPlayer(player)
    end
    Players.PlayerAdded:Connect(function(player)
        drawLineToPlayer(player)
    end)
end

-- Aimbot
local function isInView(target)
    local origin = player_data["character"]:FindFirstChild("Head")
    if origin == nil then
        return
    end

    local start_position = origin.CFrame.Position
    local end_position = target.CFrame.Position
    local distance = (start_position - end_position).Magnitude


    local raycast_params = RaycastParams.new()
    raycast_params.FilterDescendantsInstances = {map_boundaries, vegetation, player_data["character"], boundaries}
    raycast_params.FilterType = Enum.RaycastFilterType.Blacklist
    raycast_params.IgnoreWater = false

    local result = workspace:Raycast(start_position, (end_position - start_position).Unit * distance, raycast_params)
    
    if result == nil then
        return false
    end

    return result.Instance == target
end

local function getClosestPlayer(target_parts, fov, max_distance, on_screen, in_view, closest_to_cursor)
    local camera = workspace.CurrentCamera
    local current_distance = max_distance
    local current_char = nil
    local current_aimpart = nil
    local current_distance_from_cursor = fov + 1
    for index, player in pairs(Players:GetPlayers()) do
        if player == player_data["player"] or player.TeamColor == player_data["player"].TeamColor or player.Name == "#!D" then
            continue
        end
        local character = player.Character
        if character == nil or character:FindFirstChild("ForceField") or character.Name == "#!D" then
            continue
        end
 
        local aim_part = nil
        for i, v in pairs(target_parts) do
            local part = character:FindFirstChild(v)
            if v == "Helmet" then
                if part == nil then 
                    continue
                end
                part = part:FindFirstChild("Actual_Helmet")
            end
            if part ~= nil and isInView(part) then
                aim_part = part
                break
            end
        end

        if aim_part == nil then
            continue
        end
        
        local aim_part_pos, aim_part_onscreen = camera:WorldToViewportPoint(aim_part.Position)
        if not aim_part_onscreen and on_screen then
            continue
        end

        local cursor_pos = UserInputService:GetMouseLocation()
        local distance_from_cursor = (cursor_pos - Vector2.new(aim_part_pos.X, aim_part_pos.Y)).Magnitude
        if distance_from_cursor > fov then
            continue
        end

        if distance_from_cursor > current_distance_from_cursor and closest_to_cursor then
            continue
        end

        local humanoid = character:FindFirstChild("Humanoid")

        if humanoid == nil or humanoid:GetState() == Enum.HumanoidStateType.Dead or humanoid.Health <= 0 then
            continue
        end

        local root = character:FindFirstChild("HumanoidRootPart")
        if root == nil then
            continue
        end
        
        if (root.Position - player_data["root"].Position).Magnitude <= 8 then
            continue
        end        

        local aim_part_distance = getDistanceFromPlayer(aim_part)
        if aim_part_distance < current_distance then
            current_char = character
            current_distance = aim_part_distance
            current_aim_part = aim_part
        end
    end
    return current_char, current_aim_part
end

-- Aimbot fov circle
local fovcircle = Drawing.new("Circle")
fovcircle.Visible = getgenv().aimbotfovcircle
fovcircle.Radius = getgenv().aimbotfov
fovcircle.Color = getgenv().aimbotfovcolor
fovcircle.Thickness = 1
fovcircle.Filled = false
fovcircle.Transparency = 1

RunService.RenderStepped:Connect(function()
    fovcircle.Visible = false
    if getgenv().aimbotfov < 2000 then
        fovcircle.Visible = getgenv().aimbotfovcircle
        fovcircle.Radius = getgenv().aimbotfov
        fovcircle.Color = getgenv().aimbotfovcolor
        fovcircle.Position = UserInputService:GetMouseLocation()
    end
end)

-- shoot target
local function shootAt(gun, target_part)
    -- Target info
    local target = target_part.Parent
    local target_humanoid = target:FindFirstChild("Humanoid")
    if target_humanoid == nil then
        return
    end
    local target_root = target:FindFirstChild("HumanoidRootPart")
    if target_root == nil then
        return
    end

    -- Gun info
    if gun == nil then
        return
    end

    local gun_info = FrameworkLib.weapons:FindFirstChild(gun.Name)
    if not gun_info then
        return
    end

    local gun_settings = gun_info:FindFirstChild("Setting")
    if not gun_settings then 
        return
    end
    gun_settings = require(gun_settings)

    if target_part.Name == "Head" then
        gun_damage = gun_settings.BaseDamage * gun_settings.HeadshotDamageMultiplier
    end
    
    if target_part.Name == "Actual_Helmet" then
        gun_damage = 0
    end

    gun_damage = math.ceil(gun_damage)

    -- Shooting the gun
    if can_shoot then
        can_shoot = false
        delay(gun_settings.FireRate, function()
            can_shoot = true
        end)
        return FrameworkLib.remote.Attempt_Fire:FireServer(gun, target_part, target_humanoid, target_root, target_part.Position, nil, gun_damage, gun_settings.AmmoPerClip, gun_settings.AmmoPerClip, gun_settings.FireRate, false)
    end
end


-- Aimbot logic
RunService.Heartbeat:Connect(function()
    if getgenv().aimbot then
        if getgenv().aiming or getgenv().aimbot_always_on then 
            if not getgenv().silent then
                local closest, aim_part = getClosestPlayer(getgenv().aimbotparts, getgenv().aimbotfov, math.huge, getgenv().aimbotfov < 2000, true, getgenv().closest_to_cursor)
                local camera = workspace.CurrentCamera
                if closest and aim_part then
                    local part_pos = aim_part.Position
                    camera.CFrame = CFrame.new(camera.CFrame.Position, part_pos)
                end
            else
                if getgenv().silentautoshoot then
                    local closest, aim_part = getClosestPlayer(getgenv().aimbotparts, getgenv().aimbotfov, math.huge, getgenv().aimbotfov < 2000, true, getgenv().closest_to_cursor)
                    if closest and aim_part then
                        for i, v in pairs(player_data["character"]:GetChildren()) do
                            if not v:IsA("Tool") then
                                continue
                            end
                            local gun_info = FrameworkLib.weapons:FindFirstChild(v.Name)
                            if not gun_info then
                                continue
                            end
                            mouse1click()
                        end
                    end
                end
            end
        end
    end
end)

local oldClientBullet
oldClientBullet = hookfunction(FrameworkLib.modules.Client_Bullet, function(...)
    local args = {...}
    if getgenv().nospread then
        args[4] = CFrame.Angles(0,0,0)
    end
    if getgenv().aimbot and (getgenv().aiming or getgenv().aimbot_always_on) and getgenv().silent then
        --[[
            [1] = shooting_player, 
            [2] = weapon, 
            [3] = aimed_at_position, 
            [4] = spread, 
            [5] = crosshair_hitmarker, 
            [6] = gun_ammo
        ]]
        local closest, aim_part = getClosestPlayer(getgenv().aimbotparts, getgenv().aimbotfov, math.huge, getgenv().aimbotfov < 2000, true, getgenv().closest_to_cursor)
        if closest and aim_part then
            args[3] = aim_part.Position
            args[4] = CFrame.Angles(0,0,0)
        end
    end
    return oldClientBullet(unpack(args))
end)

-- Trigger bot
local function getAimedAt(max_length)
    local camera = workspace.CurrentCamera
    local mouse = player_data["player"]:GetMouse()
    local ray = camera:ScreenPointToRay(mouse.X, mouse.Y)
    local raycast_params = RaycastParams.new()
    raycast_params.FilterDescendantsInstances = {map_boundaries, vegetation, player_data["character"], boundaries}
    raycast_params.FilterType = Enum.RaycastFilterType.Blacklist
    raycast_params.IgnoreWater = false

    return workspace:Raycast(ray.Origin, ray.Direction * max_length, raycast_params)
end

RunService.Heartbeat:Connect(function()
    if getgenv().triggerbot then
        --local mouse = player_data["player"]:GetMouse()
        --local target = mouse.Target
        local result = getAimedAt(25000)
        if result == nil then
            return
        end

        local target = result.Instance
        if target == nil then
            return
        end
        target = target.Parent
        if target.Name == "Helmet" then
            target = target.Parent
        end

        local target_humanoid = target:FindFirstChild("Humanoid")
        local target_head = target:FindFirstChild("Head")
        local target_root = target:FindFirstChild("HumanoidRootPart")

        if target_humanoid ~= nil and target_head ~= nil and target_root ~= nil then

            local player = Players:GetPlayerFromCharacter(target)
            if player == nil then
                return
            end

            if player.Team == player_data["player"].Team then
                return
            end

            for i, v in pairs(player_data["character"]:GetChildren()) do
                if not v:IsA("Tool") then
                    continue
                end
                local gun_info = FrameworkLib.weapons:FindFirstChild(v.Name)
                if not gun_info then
                    continue
                end
                mouse1click()
            end
        end
    end
end)

-- Cursor silent kill
RunService.Heartbeat:Connect(function()
    if getgenv().cursor_silentkill then
        --local mouse = player_data["player"]:GetMouse()
        --local target = mouse.Target
        local result = getAimedAt(25000)
        if result == nil then
            return
        end

        local target = result.Instance
        if target == nil then
            return
        end
        target = target.Parent
        if target.Name == "Helmet" then
            target = target.Parent
        end

        local target_humanoid = target:FindFirstChild("Humanoid")
        local target_head = target:FindFirstChild("Head")
        local target_root = target:FindFirstChild("HumanoidRootPart")

        if target_humanoid ~= nil and target_head ~= nil and target_root ~= nil then

            local player = Players:GetPlayerFromCharacter(target)
            if player == nil then
                return
            end

            if player.Team == player_data["player"].Team then
                return
            end

            for i, v in pairs(player_data["character"]:GetChildren()) do
                if not v:IsA("Tool") then
                    continue
                end
                local gun_info = FrameworkLib.weapons:FindFirstChild(v.Name)
                if not gun_info then
                    continue
                end

                local gun_settings = gun_info:FindFirstChild("Setting")
                if not gun_settings then 
                    continue
                end
                gun_settings = require(gun_settings)

                gun_damage = gun_settings.BaseDamage * gun_settings.HeadshotDamageMultiplier
                gun_damage = math.ceil(gun_damage)
                shootAt(v, target_head)
            end
        end
    end
end)

-- Shoot Aura
RunService.Heartbeat:Connect(function()
    if getgenv().shootaura then
        local closest, aim_part = getClosestPlayer(getgenv().shootauraparts, getgenv().shootaurafov, getgenv().shootaura_range, false, getgenv().shootaurafov < 2000, false)
        if closest == nil or aim_part == nil then
            return
        end

        for i, v in pairs(player_data["character"]:GetChildren()) do
            if not v:IsA("Tool") then
                continue
            end
            local gun_info = FrameworkLib.weapons:FindFirstChild(v.Name)
            if not gun_info then
                continue
            end

            local gun_settings = gun_info:FindFirstChild("Setting")
            if not gun_settings then 
                continue
            end
            gun_settings = require(gun_settings)

            gun_damage = gun_settings.BaseDamage * gun_settings.HeadshotDamageMultiplier
            gun_damage = math.ceil(gun_damage)
            shootAt(v, aim_part)
        end
    end
end)

-- Shoot aura fov circle
local fovcircle_shootaura = Drawing.new("Circle")
fovcircle_shootaura.Visible = getgenv().shootaurafovcircle
fovcircle_shootaura.Radius = getgenv().shootaurafov
fovcircle_shootaura.Color = getgenv().shootaurafovcolor
fovcircle_shootaura.Thickness = 1
fovcircle_shootaura.Filled = false
fovcircle_shootaura.Transparency = 1

RunService.RenderStepped:Connect(function()
    fovcircle_shootaura.Visible = false
    if getgenv().shootaurafov < 2000 then
        fovcircle_shootaura.Visible = getgenv().shootaurafovcircle
        fovcircle_shootaura.Radius = getgenv().shootaurafov
        fovcircle_shootaura.Color = getgenv().shootaurafovcolor
        fovcircle_shootaura.Position = UserInputService:GetMouseLocation()
    end    
end)

-- Walkspeed
local original_ws = player_data["humanoid"].WalkSpeed
local original_jp = player_data["humanoid"].JumpPower

local oldIndex
oldIndex = hookmetamethod(game, "__index", newcclosure(function(self_, key, ...)
    if not checkcaller() and self_ == player_data["humanoid"] then
        if key == "WalkSpeed" then
            return original_ws
        elseif key == "JumpPower" then
            return original_jp
        end
    end
    return oldIndex(self_, key, ...)
end))

RunService.RenderStepped:Connect(function()
    if getgenv().walkspeedtog then
        player_data["humanoid"].WalkSpeed = getgenv().walkspeedval        
    end
end)

-- Jumppower
RunService.RenderStepped:Connect(function()
    if getgenv().jumppowertog then
        player_data["humanoid"].JumpPower = getgenv().jumppowerval
    end
end)

-- Noclip
RunService.Stepped:Connect(function()
    pcall(function()
        player_data["character"].HumanoidRootPart.CanCollide = getgenv().collide
        player_data["character"].Head.CanCollide = getgenv().collide
        player_data["character"].UpperTorso.CanCollide = getgenv().collide
        player_data["character"].LowerTorso.CanCollide = getgenv().collide
    end)
end)

-- Main Code
playerEsp()
playerTracers()
mineEsp()

-- GUI
local ui_config = 
{
    WindowName = "D-DAY DESTROYER | made by mayoo",
 Color = Color3.fromRGB(255,128,64),
 Keybind = Enum.KeyCode.M
}
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local window = Library:CreateWindow(ui_config, game:GetService("CoreGui"))


--===============================================================================================================================================================
-- Main tab
local main_tab = window:CreateTab("Main")


----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Aimbot section
--[[
    getgenv().aimbot = false X
    getgenv().aiming = false
    getgenv().aimbotfov = 300 X
    getgenv().closest_to_cursor = false X
    getgenv().aimbotfovcircle = false X
    getgenv().aimbotfovcolor = Color3.new(255, 0, 0) X
    getgenv().aimbotparts = {"Head", "HumanoidRootPart", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftHand", "RightHand", "Helmet"}
    getgenv().silent = false X
    getgenv().silentautoshoot = false X
    getgenv().aimbot_button = Enum.KeyCode.E X
    getgenv().aimbot_always_on = false X
]]
local aimbot_section = main_tab:CreateSection("Aimbot")

-- aimbot
local aimbot_toggle = aimbot_section:CreateToggle("ON/OFF", nil, function(state)
    getgenv().aimbot = state
end)

-- silent
local silent_toggle = aimbot_section:CreateToggle("Silent", nil, function(state)
    getgenv().silent = state
end)

-- aiming
local aiming_toggle = aimbot_section:CreateToggle("Aimbot bind", nil, function(state)
    getgenv().aiming = state
end)

local aiming_keybind = aiming_toggle:CreateKeybind(tostring(getgenv().aimbot_button):gsub("Enum.KeyCode.", ""), function(key)
 getgenv().aimbot_button = Enum.KeyCode[key]
end)

-- silentautoshoot
local silentautoshoot_toggle = aimbot_section:CreateToggle("Silent aimbot auto shoot", nil, function(state)
    getgenv().silentautoshoot = state
end)

-- triggerbot
local triggerbot_toggle = aimbot_section:CreateToggle("Triggerbot", nil, function(state)
    getgenv().triggerbot = state
end)

-- aimbotfov
local aimbotfov_label = aimbot_section:CreateLabel("2000 FOV = 360 degrees aimbot")

local aimbotfov_slider = aimbot_section:CreateSlider("FOV", 1, 2000, nil, true, function(value)
    getgenv().aimbotfov = value
end)

-- aimbotfovcircle
local aimbotfovcircle_toggle = aimbot_section:CreateToggle("Fov circle", nil, function(state)
    getgenv().aimbotfovcircle = state
end)

-- aimbotfovcolor
local aimbotfovcolor_picked = aimbot_section:CreateColorpicker("Fov circle color", function(color)
 getgenv().aimbotfovcolor = color
end)

--closest_to_cursor
local closest_to_cursor_toggle = aimbot_section:CreateToggle("Prefer closest to cursor", nil, function(state)
    getgenv().closest_to_cursor = state
end)

-- aimbotparts
local aimbotparts_chosen = {}
local aimbotparts_chosen_label
local aimbotparts_dropdown = aimbot_section:CreateDropdown("Aimbot parts", possible_player_parts, function(chosen)
    local found = false
 for i, v in pairs(aimbotparts_chosen) do 
        if v == chosen then
            found = true
            table.remove(aimbotparts_chosen, i)
        end
    end
    if not found then
        table.insert(aimbotparts_chosen, chosen)
    end

    getgenv().aimbotparts = aimbotparts_chosen
    -- Updating text
    local text = ""
    for i, v in pairs(aimbotparts_chosen) do
        text = text..i..". "..v.."\n"
    end
    aimbotparts_chosen_label:UpdateText(text)
end)

aimbotparts_chosen_label = aimbot_section:CreateLabel("")
----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Gun settings section
--[[
getgenv().everygunauto = false
getgenv().nocamerashake = false
getgenv().nospread = false
getgenv().infiniteammo = true
getgenv().aimview_tog = false
getgenv().aimview = 0
]]
local gunsettings_section = main_tab:CreateSection("Gun settings")

-- everygunauto
local everygunauto_toggle = gunsettings_section:CreateToggle("Every gun automatic", nil, function(state)
    getgenv().everygunauto = state
end)

-- nocamerashake
local nocamerashake_toggle = gunsettings_section:CreateToggle("No camera shake", nil, function(state)
    getgenv().nocamerashake = state
end)

-- nospread
local nospread_toggle = gunsettings_section:CreateToggle("No spread", nil, function(state)
    getgenv().nospread = state
end)

-- infiniteammo
local infiniteammo_toggle = gunsettings_section:CreateToggle("Infinite ammo", nil, function(state)
    getgenv().infiniteammo = state
end)

-- aimview_tog
local aimview_tog_toggle = gunsettings_section:CreateToggle("Aiming fov", nil, function(state)
    getgenv().aimview_tog = state
end)

-- aimview
local aimview_slider = gunsettings_section:CreateSlider("FOV", 1, 300, nil, true, function(value)
    getgenv().aimview = value
end)
----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ESP section
--[[
getgenv().player_esp = true
getgenv().player_esp_color = Color3.new(0,255,255)
getgenv().player_tracers = false
getgenv().player_tracers_color = Color3.new(0,255,255)
getgenv().mine_esp = false
getgenv().mine_esp_color = Color3.new(255,0,0)
]]
local esp_section = main_tab:CreateSection("ESP")

-- PLAYER ESP
local pesp_label = esp_section:CreateLabel("Player ESP")

-- player_esp
local player_esp_toggle = esp_section:CreateToggle("ON/OFF", nil, function(state)
    getgenv().player_esp = state
end)

-- player_esp_color
local player_esp_color_picked = esp_section:CreateColorpicker("Color", function(color)
 getgenv().player_esp_color = color
end)

-- PLAYER TRACERS
local ptracers_label = esp_section:CreateLabel("Player Tracers")

-- player_tracers
local player_tracers_toggle = esp_section:CreateToggle("ON/OFF", nil, function(state)
    getgenv().player_tracers = state
end)

-- player_tracers_color
local player_tracers_color_picked = esp_section:CreateColorpicker("Color", function(color)
 getgenv().player_tracers_color = color
end)

-- MINE ESP
local mesp_label = esp_section:CreateLabel("Mine ESP")

-- mine_esp
local mine_esp_toggle = esp_section:CreateToggle("ON/OFF", nil, function(state)
    getgenv().mine_esp = state
end)

-- mine_esp_color
local player_esp_color_picked = esp_section:CreateColorpicker("Color", function(color)
 getgenv().mine_esp_color = color
end)
--===============================================================================================================================================================
-- OP tab
--[[
getgenv().cursor_silentkill = false

getgenv().shootaura = false X
getgenv().shootauraparts = {"Head", "HumanoidRootPart", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "RightUpperArm", "LeftUpperArm"}
getgenv().shootaurafov = 300 X
getgenv().shootaura_range = math.huge X
getgenv().shootaurafovcircle = false X 
getgenv().shootaurafovcolor = Color3.new(0, 255, 0)X
]]
local op_tab = window:CreateTab("Over powered")

local silentkill_section = op_tab:CreateSection("Cursor silent kill")

-- cursor_silentkill
local cursor_silent_kill_toggle = silentkill_section:CreateToggle("ON/OFF", nil, function(state)
    getgenv().cursor_silentkill = state
end)
----------------------------------------------------------------------------------------------------------------------------------------------------------------
local shootaura_section = op_tab:CreateSection("Shoot aura")

-- shootaura
local shootaura_toggle = shootaura_section:CreateToggle("ON/OFF", nil, function(state)
    getgenv().shootaura = state
end)

-- shootaurafov
local shootaurafov_label = shootaura_section:CreateLabel("2000 FOV = 360 degrees shoot aura")

local shootaurafov_slider = shootaura_section:CreateSlider("FOV", 1, 2000, nil, true, function(value)
    getgenv().shootaurafov = value
end)

-- shootaurafovcircle
local aimbotfovcircle_toggle = shootaura_section:CreateToggle("Fov circle", nil, function(state)
    getgenv().shootaurafovcircle = state
end)

-- aimbotfovcolor
local shootaurafovcolor_picked = shootaura_section:CreateColorpicker("Fov circle color", function(color)
 getgenv().shootaurafovcolor = color
end)

-- shootaura_range
local shootaura_range_slider = shootaura_section:CreateSlider("Range", 100, 10000, nil, true, function(value)
    getgenv().shootaura_range = value
end)

-- shootauraparts
local shootauraparts_chosen = {}
local shootauraparts_chosen_label
local shootauraparts_dropdown = shootaura_section:CreateDropdown("Shootaura parts", possible_player_parts, function(chosen)
    local found = false
 for i, v in pairs(shootauraparts_chosen) do 
        if v == chosen then
            found = true
            table.remove(shootauraparts_chosen, i)
        end
    end
    if not found then
        table.insert(shootauraparts_chosen, chosen)
    end

    getgenv().shootauraparts = shootauraparts_chosen
    -- Updating text
    local text = ""
    for i, v in pairs(shootauraparts_chosen) do
        text = text..i..". "..v.."\n"
    end
    shootauraparts_chosen_label:UpdateText(text)
end)

shootauraparts_chosen_label = shootaura_section:CreateLabel("")

--===============================================================================================================================================================
-- Local player tab

--[[
-- Local Player stuff
getgenv().walkspeedtog = false
getgenv().walkspeedval = 64
getgenv().jumppowertog = false
getgenv().jumppowerval = 64
getgenv().collide = true
]]

local local_player_tab = window:CreateTab("Local Player")

----------------------------------------------------------------------------------------------------------------------------------------------------------------
local walkspeed_section = local_player_tab:CreateSection("Walkspeed")

-- walkspeedtog
local walkspeedtog_toggle =  walkspeed_section:CreateToggle("ON/OFF", nil, function(state)
    getgenv().walkspeedtog = state
end)

-- walkspeedval
local walkspeedval_slider =  walkspeed_section:CreateSlider("Value", 1, 100, nil, true, function(value)
    getgenv().walkspeedval = value
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------
local jumppower_section = local_player_tab:CreateSection("Jumppower")

-- jumppowertog
local jumppowertog_toggle =  jumppower_section:CreateToggle("ON/OFF", nil, function(state)
    getgenv().jumppowertog = state
end)

-- jumppowerval
local jumppowerval_slider =  jumppower_section:CreateSlider("Value", 1, 100, nil, true, function(value)
    getgenv().jumppowerval = value
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------
local noclip_section = local_player_tab:CreateSection("Noclip")

-- collide (noclip)
local collide_toggle =  noclip_section:CreateToggle("ON/OFF", nil, function(state)
    getgenv().collide = not state
end)
----------------------------------------------------------------------------------------------------------------------------------------------------------------
local toggle_gui_section = local_player_tab:CreateSection("Toggle GUI")

local ui_toggle = toggle_gui_section:CreateToggle("UI Toggle", nil, function(State)
 window:Toggle(State)
end)
local ui_keybind = ui_toggle:CreateKeybind(tostring(ui_config.Keybind):gsub("Enum.KeyCode.", ""), function(key)
 ui_config.Keybind = Enum.KeyCode[key]
end)

ui_toggle:SetState(true)