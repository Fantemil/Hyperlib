loadstring(game:HttpGet("https://raw.githubusercontent.com/Novaz5792/X/main/XX"))() 
local lib = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local subs = lib.subs 
local libclose = subs.Wait

local window = lib:CreateWindow({
    Name = "Novaline | Novaz#0001",
    Themeable = {
        Info = {"Kalas A Skid"},
        Credit = false, 
        Background = "",
        Visible = true
    }
})

local main1 = window:CreateTab({
    Name = "Main"
})

local section1 = main1:CreateSection({
    Name = "ESP"
})

section1:AddToggle({
    Name = "ESP",
    Value = false,
    Flag = "ESP",
    Callback = function(state)
        esp = state 
    end 
})

section1:AddToggle({
    Name = "Names",
    Value = false,
    Flag = "ESPN",
    Callback = function(state)
        espname = state 
    end 
})

section1:AddToggle({
    Name = "Health",
    Value = false,
    Flag = "ESPH",
    Callback = function(state)
        esphealth = state 
    end 
})

section1:AddToggle({
    Name = "Distance",
    Value = false,
    Flag = "ESPD",
    Callback = function(state)
        espdistance = state 
    end 
})

section1:AddToggle({
    Name = "Fruit",
    Value = false,
    Flag = "ESPF",
    Callback = function(state)
        espfruit = state 
    end 
})

section1:AddToggle({
    Name = "Level",
    Value = false,
    Flag = "ESPL",
    Callback = function(state)
        esplevel = state 
    end 
})

section1:AddSlider({
    Name = "ESP Size",
    Value = 20,
    Min = 1,
    Max = 50,
    Precise = 1,
    Flag = "ESPS",
    Callback = function(value)
        espsize = value 
    end 
})

section1:AddColorpicker({
    Name = "ESP Color",
    Value = "rainbow",
    Flag = "ESPCOL",
    Callback = function(val)
        espcolor = val 
    end
})

local drawings = {}
RenderStepped:Connect(function()
    for i,v in pairs(drawings) do 
        if v[1] and v[1].Character and v[1].Character:FindFirstChild("HumanoidRootPart") and v[1].Character:FindFirstChildOfClass("Humanoid") then 
            local x, c = Camera:WorldToViewportPoint(v[1].Character.HumanoidRootPart.Position)
            if x and c then 
                pcall(function()
                    v[2].Text =((espname and "Name: "..v[1].Name..((v[1].Name ~= v[1].DisplayName and " | "..v[1].DisplayName) or "").."\n") or "")
                    ..((esphealth and "Health: "..math.floor(v[1].Character.Humanoid.Health).."/"..math.floor(v[1].Character.Humanoid.MaxHealth).."\n") or "")
                    ..((espdistance and "Distance: "..math.floor((HumanoidRootPart.Position - v[1].Character.HumanoidRootPart.Position).Magnitude).."m\n") or "")
                    ..((espfruit and "Fruit: "..(v[1]:FindFirstChild("MAIN_DATA") and v[1].MAIN_DATA:FindFirstChild("Slot") and v[1].MAIN_DATA:FindFirstChild("Slots") and tostring(v[1].MAIN_DATA.Slots:FindFirstChild(v[1].MAIN_DATA.Slot.Value) and v[1].MAIN_DATA.Slots:FindFirstChild(v[1].MAIN_DATA.Slot.Value).Value)).."\n") or "")
                    ..((esplevel and "Level: "..math.floor(((v[1].Character.Humanoid.MaxHealth - 100) / 4)).."\n") or "")
                    v[2].Visible = (esp or false) 
                    v[2].Position = Vector2.new(x.X, x.Y)
                    v[2].Size = (espsize or 20) 
                    v[2].Color = (espcolor or Color3.fromRGB(255, 0, 0))
                end)
            else
                pcall(function()
                    v[2].Visible = false 
                end)
            end 
        elseif v[1] then 
            pcall(function()
                v[2].Visible = false 
            end)
        elseif (not v[1]) then 
            pcall(function()
                v[2]:Remove()
            end)
        end 
    end 
end)

for i,v in pairs(Players:GetPlayers()) do 
    if v == Player then 
        continue 
    end 
    task.spawn(function() 
        local x = Drawing.new("Text") 
        x.Position = Vector2.new() 
        x.Text = ""
        x.Visible = false 
        x.Size = 15 
        x.Color = Color3.fromRGB(255, 0, 0)
        x.Center = true 
        x.Outline = true 
        x.OutlineColor = Color3.fromRGB(1, 1, 1)
        table.insert(drawings, {v, x})
    end) 
end 

Players.PlayerAdded:Connect(function(plr)
    task.spawn(function() 
        local x = Drawing.new("Text") 
        x.Position = Vector2.new() 
        x.Text = ""
        x.Visible = false 
        x.Size = 15 
        x.Color = Color3.fromRGB(255, 0, 0)
        x.Center = true 
        x.Outline = true 
        x.OutlineColor = Color3.fromRGB(1, 1, 1)
        table.insert(drawings, {plr, x})
    end) 
end)

Players.PlayerRemoving:Connect(function(Plr)
    for i,v in pairs(drawings) do 
        if v[1] and v[1] == Plr then 
            task.spawn(function()
                pcall(function()
                    for i = 1, 10 do 
                        v[2]:Remove()
                        task.wait(.1)
                    end 
                end)
            end)
        end 
    end 
end) 