chestsn = { -- Avalible: "Wood", "Silver", "Gold", "Epic" or "Legendary", delete unnecessary values
    "Wood",
    "Silver",
    "Gold",
    "Epic",
    "Legendary"
    }
local function contains(table, val)
   for i=1,#table do
      if table[i] == val then return true end
   end
   return false
end
for __,v in pairs(game:GetService("Workspace").Chests:GetChildren()) do
    if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end
    if contains(chestsn, v.Name) then
        -- RGB colors of chests
        if v.Name == "Wood" then
            tcolor = Color3.fromRGB(222, 184, 135)
        elseif v.Name == "Silver" then
            tcolor = Color3.fromRGB(192, 192, 192)
        elseif v.Name == "Gold" then
            tcolor = Color3.fromRGB(255, 215, 0)
        elseif v.Name == "Epic" then
            tcolor = Color3.fromRGB(138, 43, 226)
        elseif v.Name == "Legendary" then
            tcolor = Color3.fromRGB(0, 255, 255)
        end

        local a = Instance.new("BillboardGui",v)
        a.Name = "ESP"
        a.Size = UDim2.new(5,0, 5,0)
        a.AlwaysOnTop = true
        local b = Instance.new("Frame",a)
        b.Size = UDim2.new(1,0, 1,0)
        b.BackgroundTransparency = 0.80
        b.BorderSizePixel = 0
        b.BackgroundColor3 = tcolor
        local c = Instance.new('TextLabel',b)
        c.Size = UDim2.new(1,0,1,1)
        c.BorderSizePixel = 0
        c.TextSize = 15
        c.Text = v.Name
        c.BackgroundTransparency = 1
        c.TextColor3 = tcolor
        c.TextStrokeColor3 = Color3.fromRGB(6, 6, 6)
        c.TextStrokeTransparency = 0.7
    end
end