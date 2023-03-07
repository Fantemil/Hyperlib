-- Game: https://www.roblox.com/games/3099809263/Arcane-Reborn

local Blip = nil

local g,b = pcall(function()
    
    local ObjNames = {
        ["Chest"] = Color3.fromRGB(0,0,0),
    }

    local Colors = {
        ["Normal"] = Color3.fromRGB(255,255,255),
        ["Gold"] = Color3.fromRGB(222, 194, 16),
    }

    local Radar2 = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local UICorner = Instance.new("UICorner")
    local Radar = Instance.new("ImageLabel")
    Blip = Instance.new("TextLabel")
    local UICorner_2 = Instance.new("UICorner")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")

    if game.CoreGui:FindFirstChild("Radar") then game.CoreGui.Radar:Destroy() end

    Radar2.Name = "Radar"
    Radar2.Parent = game.CoreGui
    Radar2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = Radar2
    Main.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    Main.BackgroundTransparency = 0.900
    Main.Position = UDim2.new(0, 0, 0.699999988, 0)
    Main.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)

    UIAspectRatioConstraint.Parent = Main

    UICorner.Parent = Main

    

    Blip.Name = "Blip"
    Blip.Parent = Main
    Blip.AnchorPoint = Vector2.new(0.5, 0.5)
    Blip.BackgroundColor3 = Color3.fromRGB(58, 255, 28)
    Blip.Position = UDim2.new(0.100000001, 0, 0, 0)
    Blip.Size = UDim2.new(0.02500000007, 0, 0.02500000007, 0)
    Blip.Visible = false
    Blip.Font = Enum.Font.SourceSans
    Blip.Text = ""
    Blip.TextColor3 = Color3.fromRGB(0, 0, 0)
    Blip.TextSize = 14.000

    Radar.Name = "Radar"
    Radar.Parent = Main
    Radar.AnchorPoint = Vector2.new(0.5, 0.5)
    Radar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Radar.BackgroundTransparency = 1.000
    Radar.Position = UDim2.new(0.5, 0, 0.5, 0)
    Radar.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
    Radar.Image = "rbxassetid://8790979489"

    UICorner_2.CornerRadius = UDim.new(1, 500)
    UICorner_2.Parent = Blip

    UIAspectRatioConstraint_2.Parent = Blip

    _G.On = false
    wait(1)
    _G.On = true

    local plr = game.Players.LocalPlayer

    while _G.On do
        local Distance = Radar.AbsoluteSize.X / (Blip.AbsoluteSize.X / 4)
        wait()
        local x,y,z = game.Workspace.CurrentCamera.CFrame:ToOrientation()
        Radar.Rotation = math.deg(y)
        local Char = plr.Character
        if not Char then continue end
        local Root = Char:FindFirstChild("HumanoidRootPart")
        if not Root then continue end
        Radar:ClearAllChildren()
        local Search = nil
        for a,b in pairs(game.Workspace:GetChildren()) do
            if b:FindFirstChild("Chest") and b.Chest:FindFirstChild("Type") then
                Search = b
            end
        end
        for i,v in pairs(Search:GetChildren()) do
            local Part = v:FindFirstChildOfClass("Part")
            if ObjNames[v.Name] and Part and (Root.Position - Part.Position).Magnitude < Distance then
                --Center is .5,.5
                local Pos = UDim2.new((Part.Position.X - Root.Position.X)/Radar.AbsoluteSize.X + .5,0,(Part.Position.Z - Root.Position.Z)/Radar.AbsoluteSize.Y + .5,0)
                local Clone = Blip:Clone()
                Clone.Parent = Radar
                Clone.Position = Pos
                Clone.Visible = true
                Clone.BackgroundColor3 = Color3.fromRGB(0,255,0)
            end
        end
    end
end)

if b then
    pcall(function()
        Blip.Visible = true
        Blip.TextWrapped = true
        Blip.Size = UDim2.new(1,0,1,0)
        Blip.Text = b
        Blip.Position = UDim2.new(.5,0,.5,0)
    end)
    
end