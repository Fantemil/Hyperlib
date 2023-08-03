--I forgot who made script... its sum ytuber but idc lol
local camera = workspace.CurrentCamera
local entities = game:GetService("Players")
local localplayer = entities.LocalPlayer 
local runservice = game:GetService("RunService")

local esp_settings = {
    enabled = true,
    skel = true,
    skel_col = Color3.fromRGB(255,255,255)
}

local function draw(player, character)

    local skel_head = Drawing.new("Line")
    skel_head.Visible = false
    skel_head.Thickness = 1.5
    skel_head.Color = Color3.fromRGB(255,255,255)

    local skel_torso = Drawing.new("Line")
    skel_torso.Visible = false
    skel_torso.Thickness = 1.5
    skel_torso.Color = Color3.fromRGB(255,255,255)

    local skel_leftarm = Drawing.new("Line")
    skel_leftarm.Visible = false
    skel_leftarm.Thickness = 1.5
    skel_leftarm.Color = Color3.fromRGB(255,255,255)

    local skel_rightarm = Drawing.new("Line")
    skel_rightarm.Visible = false
    skel_rightarm.Thickness = 1.5
    skel_rightarm.Color = Color3.fromRGB(255,255,255)

    local skel_leftleg = Drawing.new("Line")
    skel_leftleg.Visible = false
    skel_leftleg.Thickness = 1.5
    skel_leftleg.Color = Color3.fromRGB(255,255,255)

    local skel_rightleg = Drawing.new("Line")
    skel_rightleg.Visible = false
    skel_rightleg.Thickness = 1.5
    skel_rightleg.Color = Color3.fromRGB(255,255,255)

    local function update()
        local connection
        connection = runservice.RenderStepped:Connect(function()

            if workspace:FindFirstChild(character.Name) and
            character and 
            character:FindFirstChild("HumanoidRootPart") and 
            character:FindFirstChild("Humanoid") and 
            character:FindFirstChild("Humanoid").Health ~= 0 then 

                local character_rootpart_3d = character.HumanoidRootPart.Position
                local character_rootpart_2d, rootpart_onscreen = camera:WorldToViewportPoint(character_rootpart_3d)

                if rootpart_onscreen and character.Humanoid.RigType == Enum.HumanoidRigType.R6 and esp_settings.enabled then

                    local head_2d = camera:WorldToViewportPoint(character.Head.Position)
                    local torso_upper_2d = camera:WorldToViewportPoint(character.Torso.Position + Vector3.new(0,1,0))
                    local torso_lower_2d = camera:WorldToViewportPoint(character.Torso.Position + Vector3.new(0,-1,0))
                    
                    local leftarm_2d = camera:WorldToViewportPoint(character["Left Arm"].Position + Vector3.new(0,-1,0))
                    local rightarm_2d = camera:WorldToViewportPoint(character["Right Arm"].Position + Vector3.new(0,-1,0))
                    local leftleg_2d = camera:WorldToViewportPoint(character["Left Leg"].Position + Vector3.new(0,-1,0))
                    local rightleg_2d = camera:WorldToViewportPoint(character["Right Leg"].Position + Vector3.new(0,-1,0))

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

for a,b in next, entities:GetPlayers() do
    if b ~= localplayer then
        playeradded(b)
    end
end

entities.PlayerAdded:Connect(playeradded)