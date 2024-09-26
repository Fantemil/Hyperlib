-- // Created By Jaimz --\\
local camera = workspace.CurrentCamera
local entities = game:GetService("Players")
local localplayer = entities.LocalPlayer
local runservice = game:GetService("RunService")

local esp_settings = {
    enabled = true,
    skel = true,
    skel_col = Color3.fromRGB(255, 255, 255),
    dot_size = 5
}

local player_drawings = {} 

local function draw(player, character)
    local skel_head = Drawing.new("Line")
    skel_head.Visible = false
    skel_head.Thickness = 2
    skel_head.Color = esp_settings.skel_col

    local skel_torso = Drawing.new("Line")
    skel_torso.Visible = false
    skel_torso.Thickness = 2
    skel_torso.Color = esp_settings.skel_col

    local skel_leftarm = Drawing.new("Line")
    skel_leftarm.Visible = false
    skel_leftarm.Thickness = 2
    skel_leftarm.Color = esp_settings.skel_col

    local skel_rightarm = Drawing.new("Line")
    skel_rightarm.Visible = false
    skel_rightarm.Thickness = 2
    skel_rightarm.Color = esp_settings.skel_col

    local skel_leftleg = Drawing.new("Line")
    skel_leftleg.Visible = false
    skel_leftleg.Thickness = 2
    skel_leftleg.Color = esp_settings.skel_col

    local skel_rightleg = Drawing.new("Line")
    skel_rightleg.Visible = false
    skel_rightleg.Thickness = 2
    skel_rightleg.Color = esp_settings.skel_col

    player_drawings[player] = {
        skel_head = skel_head,
        skel_torso = skel_torso,
        skel_leftarm = skel_leftarm,
        skel_rightarm = skel_rightarm,
        skel_leftleg = skel_leftleg,
        skel_rightleg = skel_rightleg
    }

    local function update()
        local connection
        connection = runservice.RenderStepped:Connect(function()
            if workspace:FindFirstChild(player.Name) and character and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Humanoid") and character.Humanoid.Health ~= 0 then
                local character_rootpart_3d = character.HumanoidRootPart.Position
                local character_rootpart_2d, rootpart_onscreen = camera:WorldToViewportPoint(character_rootpart_3d)

                if rootpart_onscreen and esp_settings.enabled then
                    local head, torso_upper, torso_lower, leftarm, rightarm, leftleg, rightleg

                    if character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                        head = character:FindFirstChild("Head")
                        torso_upper = character:FindFirstChild("Torso")
                        torso_lower = torso_upper
                        leftarm = character:FindFirstChild("Left Arm")
                        rightarm = character:FindFirstChild("Right Arm")
                        leftleg = character:FindFirstChild("Left Leg")
                        rightleg = character:FindFirstChild("Right Leg")
                    else
                        head = character:FindFirstChild("Head")
                        torso_upper = character:FindFirstChild("UpperTorso")
                        torso_lower = character:FindFirstChild("LowerTorso")
                        leftarm = character:FindFirstChild("LeftUpperArm")
                        rightarm = character:FindFirstChild("RightUpperArm")
                        leftleg = character:FindFirstChild("LeftUpperLeg")
                        rightleg = character:FindFirstChild("RightUpperLeg")
                    end

                    if head and torso_upper and torso_lower and leftarm and rightarm and leftleg and rightleg then
                        local head_2d = camera:WorldToViewportPoint(head.Position)
                        local torso_upper_2d = camera:WorldToViewportPoint(torso_upper.Position + Vector3.new(0, 1.1, 0))
                        local torso_lower_2d = camera:WorldToViewportPoint(torso_lower.Position + Vector3.new(0, -1, 0))

                        local leftarm_2d = camera:WorldToViewportPoint(leftarm.Position + Vector3.new(0, -1, 0))
                        local rightarm_2d = camera:WorldToViewportPoint(rightarm.Position + Vector3.new(0, -1, 0))
                        local leftleg_2d = camera:WorldToViewportPoint(leftleg.Position + Vector3.new(0, -1, 0))
                        local rightleg_2d = camera:WorldToViewportPoint(rightleg.Position + Vector3.new(0, -1, 0))

                        skel_head.From = Vector2.new(head_2d.X, head_2d.Y)
                        skel_head.To = Vector2.new(torso_upper_2d.X, torso_upper_2d.Y)

                        skel_torso.From = Vector2.new(torso_upper_2d.X, torso_upper_2d.Y)
                        skel_torso.To = Vector2.new(torso_lower_2d.X, torso_lower_2d.Y)

                        skel_leftarm.From = Vector2.new(torso_upper_2d.X, torso_upper_2d.Y)
                        skel_leftarm.To = Vector2.new(leftarm_2d.X, leftarm_2d.Y)

                        skel_rightarm.From = Vector2.new(torso_upper_2d.X, torso_upper_2d.Y)
                        skel_rightarm.To = Vector2.new(rightarm_2d.X, rightarm_2d.Y)

                        skel_leftleg.From = Vector2.new(torso_lower_2d.X, torso_lower_2d.Y)
                        skel_leftleg.To = Vector2.new(leftleg_2d.X, leftleg_2d.Y)

                        skel_rightleg.From = Vector2.new(torso_lower_2d.X, torso_lower_2d.Y)
                        skel_rightleg.To = Vector2.new(rightleg_2d.X, rightleg_2d.Y)

                        skel_head.Visible = esp_settings.skel
                        skel_torso.Visible = esp_settings.skel
                        skel_leftarm.Visible = esp_settings.skel
                        skel_rightarm.Visible = esp_settings.skel
                        skel_leftleg.Visible = esp_settings.skel
                        skel_rightleg.Visible = esp_settings.skel
                    else
                        skel_head.Visible = false
                        skel_torso.Visible = false
                        skel_leftarm.Visible = false
                        skel_rightarm.Visible = false
                        skel_leftleg.Visible = false
                        skel_rightleg.Visible = false
                    end
                else
                    skel_head.Visible = false
                    skel_torso.Visible = false
                    skel_leftarm.Visible = false
                    skel_rightarm.Visible = false
                    skel_leftleg.Visible = false
                    skel_rightleg.Visible = false
                end
            else
                if player == nil then
                    connection:Disconnect()
                    connection = nil
                end

                skel_head.Visible = false
                skel_torso.Visible = false
                skel_leftarm.Visible = false
                skel_rightarm.Visible = false
                skel_leftleg.Visible = false
                skel_rightleg.Visible = false
            end
        end)

        player_drawings[player].connection = connection -- Store the connection for later cleanup
    end
    coroutine.wrap(update)()
end

local function playeradded(player)
    if player.Character then
        coroutine.wrap(draw)(player, player.Character)
    end
    player.CharacterAdded:Connect(function(character)
        coroutine.wrap(draw)(player, character)
    end)
end

local function playerremoved(player)
 
    if player_drawings[player] then
        for _, drawing in pairs(player_drawings[player]) do
            if drawing.Remove then
                drawing:Remove()
            elseif drawing.Disconnect then
                drawing:Disconnect()
            end
        end
        player_drawings[player] = nil
    end
end

for _, player in next, entities:GetPlayers() do
    if player ~= localplayer then
        playeradded(player)
    end
end

entities.PlayerAdded:Connect(playeradded)
entities.PlayerRemoving:Connect(playerremoved)