--[[
    // made by @samet.exe on discord 
    beware of poetry
]]

-- config
local settings = {
    enabled = true,
    color = Color3.fromRGB(255,255,255)
}

-- services
local players = game:GetService("Players")
local rs = game:GetService("RunService")
-- vars
local localplayer = players.LocalPlayer
local camera = workspace.CurrentCamera
-- definitions
local utility = {}
local espplayers = {}

-- funcs
utility.draw = function(object, properties)
    local drawing = Drawing.new(object)

    for i, v in next, properties do
        drawing[i] = v
    end

    return drawing
end

utility.create_esp = function(plr)

    espplayers[plr] = {
        box_outline = utility.draw("Square", {Color = Color3.fromRGB(0, 0, 0), Thickness = 3, Visible = false}),
        box = utility.draw("Square", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1, Visible = false}),
    }

end

utility.update_esp = function()

    for player, drawing in pairs(espplayers) do

        if player and player.Character and player.Character.HumanoidRootPart then

            if not (player and player.Character and player.Character.HumanoidRootPart) then return end 

            local vector, visible = camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
            local size = (camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)).Y - camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position + Vector3.new(0, 2.6, 0)).Y) / 2
            local boxsize = Vector2.new(math.round(size * 1.5), math.round(size * 1.9))
            local boxposition = Vector2.new(math.round(vector.X - size * 1.5 / 2), math.round(vector.Y - size * 1.6 / 2))
            
            if visible then
                if settings.enabled then
                    drawing.box_outline.Visible = true 
                    drawing.box.Visible = true 

                    drawing.box.Size = boxsize
                    drawing.box_outline.Size = boxsize
                    drawing.box_outline.Position = boxposition
                    drawing.box.Position = boxposition
                    drawing.box.Color = settings.color
                else
                    drawing.box_outline.Visible = false 
                    drawing.box.Visible = false 
                end
            else
                drawing.box_outline.Visible = false 
                drawing.box.Visible = false 
            end

        end

    end

end

coroutine.resume(coroutine.create(function()

    while true do
        
        utility.update_esp()
        rs.Heartbeat:Wait()

    end

end))


for _, player in pairs(players:GetPlayers()) do

    coroutine.resume(coroutine.create(function()
        
        if player ~= localplayer then
            utility.create_esp(player)
        end

    end))

end

players.PlayerAdded:Connect(function(player)

    coroutine.resume(coroutine.create(function()

        if player ~= localplayer then
            utility.create_esp(player)
        end
        
    end))

end)

players.PlayerRemoving:Connect(function(player)
    if table.find(espplayers, player) then

        for _, v in pairs(espplayers[player]) do

            if v ~= nil then

                v:Remove()

            end

        end

        table.remove(espplayers, player)

    end
end)