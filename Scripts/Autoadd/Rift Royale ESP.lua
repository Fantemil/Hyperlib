-- variables
local key = Enum.KeyCode.LeftControl

local UIS = game:GetService("UserInputService")
local me = game.Players.LocalPlayer
local ws = game.workspace
local items = ws.GroundItems
local air_drop = ws.AirdropPackages
local item_esp = {}
local tf = true

-- trigger
UIS.InputEnded:Connect(function(input, gameprogress)
    if input.KeyCode == key then
        tf = not tf
        if not tf then
            for _,v in pairs(item_esp) do
                v:Destroy()
            end
            table.clear(item_esp)
        end
    end
end)

-- loop
while wait(.2) do
    if tf then
        for _,v in pairs(items:GetChildren()) do -- item
            local esp = v:FindFirstChild"BillboardGui"
            local name = v:GetAttribute("displayItem")
            if esp then
                local x = me:DistanceFromCharacter(v.Position)
                esp.TextLabel.Text = (name.. "\n" ..math.floor(x + 0.5))
            elseif #v:GetChildren() > 0 and not esp then
                local tier = name:match"%d"
                if tier == "1" then continue
                else 
                    local bil = Instance.new("BillboardGui", v)
                    bil.Adornee = v
                    bil.Active = true
                    bil.Size = UDim2.new(1,0,1,0)
                    bil.StudsOffset = Vector3.new(0,6,0)
                    bil.AlwaysOnTop = true
                    table.insert(item_esp, bil)

                    local txt = Instance.new("TextLabel", bil)
                    txt.Text = tostring(name)
                    txt.Size = UDim2.new(1,0,1,0)
                    txt.BackgroundTransparency = 1
                    txt.Font = Enum.Font.GothamBlack
                    txt.TextSize = 15

                    if tier then
                        if tier == "2" then
                            txt.TextColor3 = Color3.new(0,255,0)
                        elseif tier == "3" then
                            txt.TextColor3 = Color3.new(0,191,255)
                        elseif tier == "4" then
                            txt.TextColor3 = Color3.new(255,0,255)
                        elseif tier == "5" then
                            txt.TextColor3 = Color3.new(255,255,0)
                        end
                    else
                        txt.TextColor3 = Color3.new(255,255,255)
                    end
                end
            end
        end

        for _,v in pairs(ws:GetChildren()) do -- player
            if v.Name == "R15Rig" then
                local esp = v:FindFirstChild"BillboardGui"
                if esp then
                    local head = v:FindFirstChild"Head"
                    local x = me:DistanceFromCharacter(head.Position)
                    if head then
                        esp.TextLabel.Text = ("yes".. "\n" ..math.floor(x + 0.5))
                    end
                elseif not esp then
                    local user_id = v:GetAttribute("userId")
                    if user_id ~= me.UserId then
                        local hl = Instance.new("Highlight", v)
                        hl.FillColor = Color3.fromRGB(255,0,0)
                        hl.OutlineColor = Color3.fromRGB(255,255,255) 
                        hl.FillTransparency = 0.5
                        hl.OutlineTransparency = 0.5
                        hl.Adornee = v
                        hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

                        local bil = Instance.new("BillboardGui", v)
                        bil.Adornee = v
                        bil.Active = true
                        bil.Size = UDim2.new(1,0,1,0)
                        bil.StudsOffset = Vector3.new(0,6,0)
                        bil.AlwaysOnTop = true

                        local txt = Instance.new("TextLabel", bil)
                        txt.Text = "yes"
                        txt.Size = UDim2.new(1,0,1,0)
                        txt.BackgroundTransparency = 1
                        txt.TextColor3 = Color3.new(255,0,0)
                        txt.Font = Enum.Font.GothamBlack
                        txt.TextSize = 15
                    end
                end
            end
        end
        
        for _,v in pairs(air_drop:GetChildren()) do -- air drop
            local esp = v:FindFirstChild"BillboardGui"
            local package = v:FindFirstChild"Package"
            if esp then
                local x = me:DistanceFromCharacter(package.Position)
                esp.TextLabel.Text = ("Air Drop".. "\n" ..math.floor(x + 0.5))
            elseif package and not esp then
                local bil = Instance.new("BillboardGui", v)
                bil.Adornee = v
                bil.Active = true
                bil.Size = UDim2.new(1,0,1,0)
                bil.StudsOffset = Vector3.new(0,6,0)
                bil.AlwaysOnTop = true

                local txt = Instance.new("TextLabel", bil)
                txt.Text = "Air Drop"
                txt.Size = UDim2.new(1,0,1,0)
                txt.BackgroundTransparency = 1
                txt.TextColor3 = Color3.new(255,255,0)
                txt.Font = Enum.Font.GothamBlack
                txt.TextSize = 15
            end
        end

    elseif not tf then
        for _,v in pairs(ws:GetChildren()) do -- player
            if v.Name == "R15Rig" then
                local esp = v:FindFirstChild"BillboardGui"
                if esp then
                    local head = v:FindFirstChild"Head"
                    local x = me:DistanceFromCharacter(head.Position)
                    if head then
                        esp.TextLabel.Text = ("yes".. "\n" ..math.floor(x + 0.5))
                    end
                elseif not esp then
                    local user_id = v:GetAttribute("userId")
                    if user_id ~= me.UserId then
                        local hl = Instance.new("Highlight", v)
                        hl.FillColor = Color3.fromRGB(255,0,0)
                        hl.OutlineColor = Color3.fromRGB(255,255,255) 
                        hl.FillTransparency = 0.5
                        hl.OutlineTransparency = 0.5
                        hl.Adornee = v
                        hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

                        local bil = Instance.new("BillboardGui", v)
                        bil.Adornee = v
                        bil.Active = true
                        bil.Size = UDim2.new(1,0,1,0)
                        bil.StudsOffset = Vector3.new(0,6,0)
                        bil.AlwaysOnTop = true

                        local txt = Instance.new("TextLabel", bil)
                        txt.Text = "yes"
                        txt.Size = UDim2.new(1,0,1,0)
                        txt.BackgroundTransparency = 1
                        txt.TextColor3 = Color3.new(255,0,0)
                        txt.Font = Enum.Font.GothamBlack
                        txt.TextSize = 15
                    end
                end
            end
        end
        
        for _,v in pairs(air_drop:GetChildren()) do -- air drop
            local esp = v:FindFirstChild"BillboardGui"
            local package = v:FindFirstChild"Package"
            if esp then
                local x = me:DistanceFromCharacter(package.Position)
                esp.TextLabel.Text = ("Air Drop".. "\n" ..math.floor(x + 0.5))
            elseif package and not esp then
                local bil = Instance.new("BillboardGui", v)
                bil.Adornee = v
                bil.Active = true
                bil.Size = UDim2.new(1,0,1,0)
                bil.StudsOffset = Vector3.new(0,6,0)
                bil.AlwaysOnTop = true

                local txt = Instance.new("TextLabel", bil)
                txt.Text = "Air Drop"
                txt.Size = UDim2.new(1,0,1,0)
                txt.BackgroundTransparency = 1
                txt.TextColor3 = Color3.new(255,255,0)
                txt.Font = Enum.Font.GothamBlack
                txt.TextSize = 15
            end
        end

    end
end