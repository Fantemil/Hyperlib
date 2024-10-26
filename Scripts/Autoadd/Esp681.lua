local localPlayer = game.Players.LocalPlayer.Character.HumanoidRootPart
 
local function getDistance(position1, position2)
    return (position1 - position2).Magnitude
end
 
for i, player in pairs(workspace.GameplayAssets.Items:GetDescendants()) do
    if player.Name == "Root" and player:IsA("Part") then
        if not player:FindFirstChild("EspBox") then
            local esp = Instance.new("BoxHandleAdornment", player)
            local BillboardGui = Instance.new("BillboardGui")
            local TextLabel = Instance.new("TextLabel")
            esp.Adornee = player
            esp.ZIndex = 0
            esp.Size = Vector3.new(1, 1, 1)
            esp.Transparency = 0.65
            esp.Color3 = Color3.fromRGB(255, 48, 48)
            esp.AlwaysOnTop = true
            esp.Name = "EspBox"
 
            BillboardGui.Parent = player
            BillboardGui.AlwaysOnTop = true
            BillboardGui.LightInfluence = 1
            BillboardGui.Size = UDim2.new(0, 40, 0, 40)
            BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
            BillboardGui.Name = "BillobardEsp"
 
            TextLabel.Parent = BillboardGui
            TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Size = UDim2.new(1, 0, 1, 0)
            TextLabel.Text = player.Parent.Name
            TextLabel.TextStrokeTransparency = 0
            TextLabel.TextWrapped = false
            TextLabel.TextColor3 = Color3.new(1, 0, 0)
 
 
            spawn(function()
                while player.Parent do 
                    local distance = getDistance(localPlayer.Position, player.Position)
                    TextLabel.Text = player.Parent.Name .. " (" .. math.floor(distance) .. ")"
                    wait() 
                end
            end)
        end
    end
end
 
for i, player in pairs(workspace.GameplayParts.Doors.Normal.Paintable:GetDescendants()) do
    if player.Name == "Core" and player:IsA("Part") then
        if not player:FindFirstChild("EspBox") then
            local esp = Instance.new("BoxHandleAdornment", player)
            local BillboardGui = Instance.new("BillboardGui")
            local TextLabel = Instance.new("TextLabel")
            esp.Adornee = player
            esp.ZIndex = 0
            esp.Size = Vector3.new(1, 12, 12)
            esp.Transparency = 0.65
            esp.Color3 = player:FindFirstChild("SurfaceGui"):FindFirstChild("Color").TextColor3
            esp.AlwaysOnTop = true
            esp.Name = "EspBox"
 
            BillboardGui.Parent = player
            BillboardGui.AlwaysOnTop = true
            BillboardGui.LightInfluence = 1
            BillboardGui.Size = UDim2.new(0, 40, 0, 40)
            BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
            BillboardGui.Name = "BillobardEsp"
 
            TextLabel.Parent = BillboardGui
            TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Size = UDim2.new(1, 0, 1, 0)
            TextLabel.Text = player.Parent.Name
            TextLabel.TextStrokeTransparency = 0
            TextLabel.TextWrapped = false
            TextLabel.TextColor3 = player:FindFirstChild("SurfaceGui"):FindFirstChild("Color").TextColor3
 
 
            spawn(function()
                while player.Parent do
                    local distance = getDistance(localPlayer.Position, player.Position)
                    TextLabel.Text = player.Parent.Name .. " (" .. math.floor(distance) .. ")"
                    wait() 
                end
            end)
        end
    end
end
 
for i, player in pairs(workspace.GameplayAssets.Monsters:GetChildren()) do
    if not player:FindFirstChild("EspBox") then
        local esp = Instance.new("BoxHandleAdornment", player)
        local BillboardGui = Instance.new("BillboardGui")
        local TextLabel = Instance.new("TextLabel")
        esp.Adornee = player
        esp.ZIndex = 0
        esp.Size = Vector3.new(5, 15, 2)
        esp.Transparency = 0.65
        esp.Color3 = Color3.fromRGB(0, 0, 0)
        esp.AlwaysOnTop = true
        esp.Name = "EspBox"
 
        BillboardGui.Parent = player
        BillboardGui.AlwaysOnTop = true
        BillboardGui.LightInfluence = 1
        BillboardGui.Size = UDim2.new(0, 40, 0, 40)
        BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
        BillboardGui.Name = "BillobardEsp"
 
        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.Text = player.Name
        TextLabel.TextStrokeTransparency = 0
        TextLabel.TextWrapped = false
        TextLabel.TextColor3 = Color3.new(1, 1, 1)
 
        spawn(function()
            while player.Parent do
                local distance = getDistance(localPlayer.Position, player:FindFirstChild("HumanoidRootPart").Position)
                TextLabel.Text = player.Name .. " (" .. math.floor(distance) .. ")"
                wait() 
            end
        end)
    end
end
for i, player in pairs(workspace.GameplayAssets.Items.Normal.PaintBucket:GetDescendants()) do
    if player.Name == "Paint" then
    if not player:FindFirstChild("EspBox") then
        local esp = Instance.new("BoxHandleAdornment", player.Parent)
        local BillboardGui = Instance.new("BillboardGui")
        local TextLabel = Instance.new("TextLabel")
        esp.Adornee = player.Parent
        esp.ZIndex = 0
        esp.Size = Vector3.new(1.5, 1.8, 1.5)
        esp.Transparency = 0.65
        esp.Color3 = player.Color
        esp.AlwaysOnTop = true
        esp.Name = "EspBox"
 
        BillboardGui.Parent = player.Parent
        BillboardGui.AlwaysOnTop = true
        BillboardGui.LightInfluence = 1
        BillboardGui.Size = UDim2.new(0, 40, 0, 40)
        BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
        BillboardGui.Name = "BillobardEsp"
 
        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.Text = player.Parent.Name
        TextLabel.TextStrokeTransparency = 0
        TextLabel.TextWrapped = false
        TextLabel.TextColor3 = player.Color
 
        spawn(function()
            while player.Parent do
                local distance = getDistance(localPlayer.Position, player.Position)
                TextLabel.Text = player.Parent.Name .. " (" .. math.floor(distance) .. ")"
                wait() 
            end
        end)
    end
end
end
 
function dellEsp()
    for i, player in pairs(workspace:GetDescendants()) do
        if player.Name == "BillobardEsp" and player:IsA("BillboardGui") then
            player:Destroy()
        end
        if player.Name == "EspBox" then
            player:Destroy()
        end
    end
end