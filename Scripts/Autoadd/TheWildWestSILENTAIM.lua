local players = game:GetService("Players") --// players
local local_player = players.LocalPlayer --// localplayer
local mouse = local_player:GetMouse() --// mouse
local user_input_service = game:GetService("UserInputService") --// userinputservice
local current_camera = game:GetService("Workspace").CurrentCamera --// currentcamera

local global_module = require(game:GetService("ReplicatedStorage").SharedModules.Global) --// global module

local hitboxes = {"Head", "HumanoidRootPart", "LowerTorso", "UpperTorso"} --// hitboxes

local field_of_view = 150 --// field of view

--// our fov circle
local circle = Drawing.new("Circle")
circle.Visible = true
circle.Radius = field_of_view
circle.Filled = false
circle.Thickness = 1
circle.Color = Color3.new(1, 1, 1)

--// functions
    --@Param hitboxes Array ["Head", "Torso"]
    --// get closest entity to cursor
    local function closest_to_cursor(hitboxes)
        local target, part = nil, nil
        local max_distance, max_part_distance = math.huge, math.huge
        if not next(hitboxes) then
            return
        end
        for i, v in next, players:GetPlayers() do
            if v ~= local_player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                local position, on_screen = current_camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                local distance = (Vector2.new(position.x, position.y) - Vector2.new(mouse.x, mouse.y)).Magnitude
                if distance < max_distance then
                    target, max_distance = v, distance
                end
            end
        end
        if target then
            for i, v in next, target.Character:GetChildren() do
                if table.find(hitboxes, v.Name) then
                    local world_to_screen, on_screen = current_camera:WorldToScreenPoint(v.Position)
                    local distance = (Vector2.new(world_to_screen.x, world_to_screen.y) - Vector2.new(mouse.x, mouse.y)).magnitude
                    if distance < max_part_distance and on_screen and distance < field_of_view then
                        part, max_part_distance = v, distance
                    end
                end
            end
        end
        return {target, part}
    end
--// end of functions

do --// events
    do --// input changed

        -- this is just to center the circle
        user_input_service.InputChanged:connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement and circle.Position ~= Vector2.new(current_camera.ViewportSize.x / 2, current_camera.ViewportSize.y / 2) then
                circle.Position = Vector2.new(current_camera.ViewportSize.x / 2, current_camera.ViewportSize.y / 2)
            end
        end)
    end
end

do --// silent aim
    local old = global_module.Utils.GetMouseHit
    global_module.Utils.GetMouseHit = function(...)
        if closest_to_cursor(hitboxes)[1] and closest_to_cursor(hitboxes)[2] then
            return closest_to_cursor(hitboxes)[2].Position
        else
            return old(...)
        end
    end
end