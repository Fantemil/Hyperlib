-- // Vars \\ -- 
local client = game:GetService('Players').LocalPlayer
local characters = game:GetService('Workspace').characters
local random_player = game:GetService('Workspace').characters:GetChildren()[1].Name
local camera = game:GetService('Workspace').CurrentCamera

-- // Character Stuff \\ -- 
for i,v in pairs(getgc(true)) do 
    if type(v) == 'table' and rawget(v, random_player) then 
        holder = v 
        break
    end
    
    if type(v) == 'table' and rawget(v, client.Name) then 
        if v[client.Name].team ~= nil then 
            data = v
        end
    end
end

-- // Esp Stuff \\ --
local function draw(obj, prop)
    local a = Drawing.new(obj)
    
    for i,v in pairs(prop) do 
        a[i] = v 
    end
    
    return a
end

local function esp_main(obj)
    local plr_name = holder[obj.Name]
    local esp_cache = {}
    
    esp_cache.text = draw('Text', {Size = 14, Color = Color3.fromRGB(255,0,0), Outline = true})
    esp_cache.tracer = draw('Line', {Thickness = 1, Color = Color3.fromRGB(255,0,0)})
    
    esp_cache.line_tl = draw('Line', {Thickness = 1, Color = Color3.fromRGB(255,0,0)})
    esp_cache.line_tr = draw('Line', {Thickness = 1, Color = Color3.fromRGB(255,0,0)})
    esp_cache.line_bl = draw('Line', {Thickness = 1, Color = Color3.fromRGB(255,0,0)})
    esp_cache.line_br = draw('Line', {Thickness = 1, Color = Color3.fromRGB(255,0,0)})
    
    local loop
    loop = game:GetService('RunService').RenderStepped:Connect(function()
        if game:GetService('Players'):FindFirstChild(plr_name) ~= nil then 
            if characters:FindFirstChild(obj.Name) and data[client.Name].team ~= data[plr_name].team then 
                local char = characters:FindFirstChild(obj.Name)
                local pos, onscreen = camera:WorldToViewportPoint((char.head.CFrame * CFrame.new(0,3,0)).p)
                local tracer_pos = camera:WorldToViewportPoint((char.head.CFrame * CFrame.new(0,-3,0)).p)
                
                local tl = camera:WorldToViewportPoint((char.head.CFrame * CFrame.new(-2,3,0)).p)
                local tr = camera:WorldToViewportPoint((char.head.CFrame * CFrame.new(2,3,0)).p)
                local bl = camera:WorldToViewportPoint((char.head.CFrame * CFrame.new(-2,-3,0)).p)
                local br = camera:WorldToViewportPoint((char.head.CFrame * CFrame.new(2,-3,0)).p)
                
                esp_cache.text.Text = plr_name
                esp_cache.text.Position = Vector2.new(pos.x, pos.y) - Vector2.new(0, esp_cache.text.TextBounds.y)
                esp_cache.text.Visible = onscreen
                
                esp_cache.tracer.From = Vector2.new(camera.ViewportSize.x / 2, camera.ViewportSize.y / 1)
                esp_cache.tracer.To = Vector2.new(tracer_pos.x, tracer_pos.y)
                esp_cache.tracer.Visible = onscreen
                
                esp_cache.line_tl.From = Vector2.new(tl.x, tl.y)
                esp_cache.line_tl.To = Vector2.new(tr.x, tr.y)
                esp_cache.line_tl.Visible = onscreen
                
                esp_cache.line_tr.From = Vector2.new(tr.x, tr.y)
                esp_cache.line_tr.To = Vector2.new(br.x, br.y)
                esp_cache.line_tr.Visible = onscreen
                
                esp_cache.line_bl.From = Vector2.new(bl.x, bl.y)
                esp_cache.line_bl.To = Vector2.new(tl.x, tl.y)
                esp_cache.line_bl.Visible = onscreen
                
                esp_cache.line_br.From = Vector2.new(br.x, br.y)
                esp_cache.line_br.To = Vector2.new(bl.x, bl.y)
                esp_cache.line_br.Visible = onscreen
            else
                for i,v in pairs(esp_cache) do 
                    v:Remove()
                end
                if loop then loop:Disconnect() end
            end
        else
            for i,v in pairs(esp_cache) do 
                v:Remove()
            end
            if loop then loop:Disconnect() end
        end
    end)
end

for i,v in pairs(game:GetService("Workspace").characters:GetChildren()) do 
    if holder[v.Name] then 
        esp_main(v)
    end
end

game:GetService("Workspace").characters.ChildAdded:Connect(function(v)
    if holder[v.Name] then 
        esp_main(v)
    end
end)