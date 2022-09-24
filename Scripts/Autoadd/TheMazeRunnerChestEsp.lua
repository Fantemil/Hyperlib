local serv_rs     = game:GetService("RunService")
local serv_players = game:GetService("Players")

local l_cam = workspace.CurrentCamera
local l_plr = serv_players.LocalPlayer
local l_humrp = l_plr.Character and l_plr.Character.PrimaryPart

l_plr.CharacterAdded:Connect(function(c) 
    l_humrp = c:WaitForChild("HumanoidRootPart",3)
end)

local chest_path = workspace.Chests

local ins, rem = table.insert, table.remove
local new = Drawing.new
local vec3, vec2 = Vector3.new, Vector2.new
local mf = math.floor


local objs = {}
local colors = {}
colors['Bronze'] = Color3.fromRGB(198, 76, 23)
colors['Silver'] = Color3.fromRGB(198, 198, 198)
colors['Gold'] = Color3.fromRGB(198, 221, 39)
colors['Platinum'] = Color3.fromRGB(255, 120, 140)
colors['Rebirth'] = Color3.fromRGB(43, 120, 225)

local function getchest(p) 
    local c = p:GetChildren()
    if (#c > 1) then
        if (c[2].Name:match("Chest")) then 
            return c[2] 
        end
    end
    return nil
end
local function esp(chest) 
    local tier = chest:WaitForChild("Tier",.1).Value
    
    local espobj = {}
    espobj[1] = chest.AncestryChanged:Connect(function(_,p) 
        if (not p) then
            local obj
            for i = 1, #objs do 
                if (objs[i][4] == chest) then
                    obj = objs[i]
                    rem(objs, i)
                    break
                end
            end
            wait()
            obj[1]:Disconnect()
            obj[2]:Remove()
            obj[3]:Remove()
        end
    end)
    
    
    local text,dist = new("Text"), new("Text")
    text.Font = Drawing.Fonts.System
    text.Text = chest.Name
    text.Visible = true
    text.Color = colors[tier] or Color3.new(1,1,1)
    text.Center = true
    text.Outline = true
    text.OutlineColor = Color3.new(0,0,0)
    text.Size = 19
    
    dist.Font = Drawing.Fonts.System
    dist.Text = "[nil]"
    dist.Visible = true
    dist.Color = Color3.new(0.6,0.6,1.0)
    dist.Center = true
    dist.Outline = true
    dist.OutlineColor = Color3.new(0,0,0)
    dist.Size = 17
    
    espobj[2] = text
    espobj[3] = dist
    espobj[4] = chest
    espobj[5] = chest.Root
    
    ins(objs, espobj)
end

for _,cpart in ipairs(chest_path:GetChildren()) do 
    local _ = cpart.ChildAdded:Connect(function(c) 
        if (c.Name:match("Chest")) then
            esp(c)
        end
    end)
    local c = getchest(cpart)
    if (c) then 
        esp(c) 
    end
end

local offset = vec3(0, 2, 0) 
serv_rs.RenderStepped:Connect(function() 
    for i = 1, #objs do 
        local obj = objs[i]
        local text = obj[2]
        local disttxt = obj[3]
        local chest = obj[5]
        
        local _ = chest.Position 
        
        local pos2d_1, vis2d_1 = l_cam:WorldToViewportPoint(chest.Position + offset)
        if (not vis2d_1) then 
            text.Visible = false
            disttxt.Visible = false
            continue 
        end
        
        text.Position = vec2(pos2d_1.X, pos2d_1.Y)
        disttxt.Position = vec2(pos2d_1.X, pos2d_1.Y+16)
        
        local index = -mf(pos2d_1.Z)
        text.ZIndex = index
        disttxt.ZIndex = index
        
        local dist = mf((l_humrp.Position - chest.Position).Magnitude)
        disttxt.Text = ('['..dist..']')
        
        local _ = mf((20 / dist) * 500)
        _ = (_ > 27 and 27 or _)
        _ = (_ < 17 and 17 or _)
        text.Size = _
        disttxt.Size = _-1
        
        text.Visible = true
        disttxt.Visible = true
    end
end)