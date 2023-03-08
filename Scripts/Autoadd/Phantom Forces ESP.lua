local players = game:GetService("Players")
local run_service = game:GetService("RunService")

local local_player = players.LocalPlayer

local game_client = {}

do
    for i,v in next, getgc(true) do
        if typeof(v) == "table" then
            if rawget(v, "updateReplication") then
                game_client.replication_object = v
            elseif rawget(v, 'setHighMs') then
                game_client.replication_interface = v
            end
        end
    end
end

local cheat_client = {
    connections = {},
    drawings = {},
}

local function create_drawing(class, properties)
    local drawing = Drawing.new(class)
    for i,v in next, properties do
        drawing[i] = v
    end
    table.insert(cheat_client.drawings, drawing)
    return drawing
end

local function create_conection(signal, callback)
    local connection = signal:Connect(callback)
    table.insert(cheat_client.connections, connection)
    return connection
end

do -- ESP
    function cheat_client:calculate_player_bounding_box(character) -- BBOT Bounding Box Function my old one was blurry
        local cam = workspace.CurrentCamera.CFrame
        local torso = character.PrimaryPart.CFrame
        local head = character.Head.CFrame
        local top, top_isrendered = workspace.CurrentCamera:WorldToViewportPoint(head.Position + (torso.UpVector * 1) + cam.UpVector)
        local bottom, bottom_isrendered = workspace.CurrentCamera:WorldToViewportPoint(torso.Position - (torso.UpVector * 2.5) - cam.UpVector)

        local minY = math.abs(bottom.y - top.y)
        local sizeX = math.ceil(math.max(math.clamp(math.abs(bottom.x - top.x) * 2.5, 0, minY), minY / 2, 3))
        local sizeY = math.ceil(math.max(minY, sizeX * 0.5, 3))

        if top_isrendered or bottom_isrendered then
            local boxtop = Vector2.new(math.floor(top.x * 0.5 + bottom.x * 0.5 - sizeX * 0.5), math.floor(math.min(top.y, bottom.y)))
            local boxsize = Vector2.new(sizeX, sizeY)
            return boxtop, boxsize 
        end
    end

    function cheat_client:get_character(player)
        local entry = game_client.replication_interface.getEntry(player)

        if entry then
            local third_person_object = entry._thirdPersonObject
            if third_person_object then
                return third_person_object._character
            end
        end
    end

    function cheat_client:get_health(player)
        local entry = game_client.replication_interface.getEntry(player)

        if entry then
            return entry._healthstate.health0, entry._healthstate.maxhealth
        end
    end

    function cheat_client:get_alive(player)
        local entry = game_client.replication_interface.getEntry(player)

        if entry then
            return entry._alive
        end
    end

    function cheat_client:get_weapon(player)
        local entry = game_client.replication_interface.getEntry(player)

        if entry then
            local third_person_object = entry._thirdPersonObject
            if third_person_object then
                return third_person_object._weaponname or ""
            end
        end
    end

    function cheat_client:add_player_esp(player)
        local esp = {
            drawings = {},
            low_health = Color3.fromRGB(255,0,0),
        }

        do -- Create Drawings
            esp.drawings.name = create_drawing("Text", {
                Text = player.Name,
                Font = 2,
                Size = 13,
                Center = true,
                Outline = true,
                Color = Color3.fromRGB(255,255,255),
                ZIndex = -10
            })

            esp.drawings.weapon = create_drawing("Text", {
                Text = "",
                Font = 2,
                Size = 13,
                Center = true,
                Outline = true,
                Color = Color3.fromRGB(255,255,255),
                ZIndex = -10
            })

            esp.drawings.box = create_drawing("Square", {
                Color = Color3.fromRGB(255,10,10),
                Thickness = 1,
                ZIndex = -9
            })

            esp.drawings.box_outline = create_drawing("Square", {   
                Thickness = 3,
                Color = Color3.fromRGB(0,0,0),
                ZIndex = -10,
            })

            esp.drawings.health = create_drawing("Line", {
                Thickness = 2,           
                Color = Color3.fromRGB(0, 255, 0),
                ZIndex = -9
            })

            esp.drawings.health_outline = create_drawing("Line", {
                Thickness = 5,           
                Color = Color3.fromRGB(0, 0, 0),
                ZIndex = -10
            })

            esp.drawings.health_text = create_drawing("Text", {
                Text = "100",
                Font = 2,
                Size = 13,
                Outline = true,
                Color = Color3.fromRGB(255, 255, 255),
                ZIndex = -10
            })
        end

        function esp:destruct()
            esp.update_connection:Disconnect() -- Disconnect before deleting drawings so that the drawings don't cause an index error
            for _,v in next, esp.drawings do
                v:Remove()
            end
        end

        esp.update_connection = create_conection(run_service.RenderStepped, function()
            if player.Parent ~= nil then  
                local character = cheat_client:get_character(player)
                local alive = cheat_client:get_alive(player)
                local health, max_health = cheat_client:get_health(player)
                local team = player.Team
                if character and alive and team ~= local_player.Team then
                    local _, on_screen = workspace.CurrentCamera:WorldToViewportPoint(character.Torso.Position)
                    if on_screen then
                        local screen_position, screen_size = cheat_client:calculate_player_bounding_box(character)
                        if screen_position and screen_size then
                            do -- Box
                                esp.drawings.box.Position = screen_position
                                esp.drawings.box.Size = Vector2.new(screen_size.X + 2, screen_size.Y + 2)
                                
                                esp.drawings.box_outline.Position = esp.drawings.box.Position
                                esp.drawings.box_outline.Size = esp.drawings.box.Size

                                esp.drawings.box.Visible = true
                                esp.drawings.box_outline.Visible = true
                            end

                            do -- Name
                                esp.drawings.name.Text = player.Name
                                esp.drawings.name.Position = esp.drawings.box.Position + Vector2.new(screen_size.X/2, -esp.drawings.name.TextBounds.Y)

                                esp.drawings.name.Visible = true
                            end

                            do -- Health
                                esp.drawings.health.From = Vector2.new((screen_position.X - 5), screen_position.Y + screen_size.Y)
                                esp.drawings.health.To = Vector2.new(esp.drawings.health.From.X, esp.drawings.health.From.Y - (health / max_health) * screen_size.Y)
                                esp.drawings.health.Color = esp.low_health:Lerp(Color3.fromRGB(0,255,0), health / max_health)

                                esp.drawings.health_outline.From = esp.drawings.health.From + Vector2.new(0, 1)
                                esp.drawings.health_outline.To = Vector2.new(esp.drawings.health_outline.From.X, screen_position.Y - 1)
                
                                esp.drawings.health_text.Text = tostring(math.floor(health))
                                esp.drawings.health_text.Position = esp.drawings.health.To - Vector2.new((esp.drawings.health_text.TextBounds.X + 4), 0)

                                esp.drawings.health.Visible = true
                                esp.drawings.health_outline.Visible = true
                                esp.drawings.health_text.Visible = true
                            end

                            do -- Weapon
                                local tool = cheat_client:get_weapon(player)
                                
                                esp.drawings.weapon.Text = tool
                                esp.drawings.weapon.Position = esp.drawings.box.Position + Vector2.new(0,esp.drawings.box.Size.Y) + Vector2.new(screen_size.X/2,0)
                            
                                esp.drawings.weapon.Visible = true
                            end
                        else
                            for _,v in next, esp.drawings do
                                v.Visible = false
                            end
                        end
                    else
                        for _,v in next, esp.drawings do
                            v.Visible = false
                        end
                    end
                else
                    for _,v in next, esp.drawings do
                        v.Visible = false
                    end
                end
            else
                esp:destruct()
            end
        end)

        return esp
    end
end

for _,v in next, players:GetPlayers() do
    if v ~= local_player then
        cheat_client:add_player_esp(v)
    end
end

create_conection(players.PlayerAdded, function(player)
    cheat_client:add_player_esp(player)
end)
 