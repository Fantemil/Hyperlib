getgenv().dot = {
    Main = {
        Enabled = true,
        Keybind = Enum.KeyCode.Q,
        HitPart = "HumanoidRootPart", --Options: "Head", "UpperTorso", "HumanoidRootPart" or "LowerTorso" ~ Other: "Random Upper", "Random Lower" and "Crazy"
        Airshot_function = true,
        --
        Prediction_Amount = 0.165,
        Auto_Prediction = true,
        Auto_Prediction_Section = {
                P10 = 0.135,
                P20 = 0.05,
                P30 = 0.1,
                P40 = 0.11,
                P50 = 0.114,
                P60 = 0.121,
                P70 = 0.125,
                P80 = 0.129,
                P90 = 0.1295,
                P100 = 0.13,
                P110 = 0.1315,
                P120 = 0.1344,
                P130 = 0.1411,
                P140 = 0.15,
                P150 = 0.1555,
            },
        --
        Notifcation = true,
        Notifcation_Type = "Kali", -- Types: "Xaxa", "Kali" or "Roblox"
    },
 
    Checks = {
        KOCheck = true,
        WallkCheck = false,
        DeadCheck = false,
    },
 
    Box_Visual = {
        Visible = true,
        --
        Color = Color3.fromRGB(105, 95, 245),
        Transparency = 0.3,
        Shape = "Ball", -- Options: "Ball", "Box", "Cylinder"
        Size = "Large",-- Options: "Small", "Medium", "Large"
        Material = "ForceField", -- Options: "ForceField", "SmoothPlastic", "Neon" or  "Glass"
    },
 
    Dot_Visual = {
        Visible = true,
        --
        Color = Color3.fromRGB(255, 255, 255),
        Size = "Small", -- Options: "Small", "Medium", Large
 
    },
 
    Fov_Visual = {
        Visible = false,
        --
        Color = Color3.fromRGB(0, 0, 0),
        Filled = false,
        Radius = 120,
        Transparency = 0.7,
        NumSides = 0,
        Thickness = 0,
 
    },
 
    HighLight_Visual = {
        Highlight_Target = true,
        Highlight_Color_Fill = Color3.fromRGB(105, 95, 245),
        Highlight_Color_OutLine = Color3.fromRGB(255, 255, 255),
 
    },
    --
 
    Gun_Visuals = {
 
        -- Important -- 
        Game = "Da hood", -- Options: "Untitled Hood", "Hood Customs", "Dh Aim Trainer" and "Da hood"
 
        -- Main --
        Enable = true,
        GunMats = "Neon",
        GunColor = Color3.fromRGB(105, 95, 245), -- Use Bright Colors To Get That Glow Effect If Ur Using "Neon" --
        GunReflectance = 1,
        GunTransparency = 0,
 
        -- Gun Beam --
        GunBeam = true,
        GunBeamColor = Color3.fromRGB(105, 95, 245),
 
        -- Extra --
        GunTexture = false,
        GunTextureId = "11516328794",
      },
      --
 
    Visuals = {
        Enabled = true,
        Dead_Chams = true,
        Dead_Chams_Color = Color3.fromRGB(105, 95, 245),
 
 
    },
 
}
 
 
 
--------------------------------------------
 
local notificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/xaxas-notification/src.lua"))();
local notifications = notificationLibrary.new({            
    NotificationLifetime = 1.5, 
    NotificationPosition = "Middle",
 
    TextFont = Enum.Font.Code,
    TextColor = Color3.fromRGB(255, 255, 255),
    TextSize = 17,
 
    TextStrokeTransparency = 0, 
    TextStrokeColor = Color3.fromRGB(0, 0, 0)
});
 
--
 
local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local Notify = NotifyLibrary.Notify
 
 
--------------------------------------------
 
 
repeat
    wait()
until game:IsLoaded()
 
 
--// Dot
local placemarker = Instance.new("Part", game.Workspace)
 
function makemarker(Parent, Adornee, Color, Size, Size2)
    local e = Instance.new("BillboardGui", Parent)
    e.Name = "haunts0001"
    e.Adornee = Adornee
    e.Size = UDim2.new(Size, Size2, Size, Size2)
    e.AlwaysOnTop = true
    local a = Instance.new("Frame", e)
    a.Size = UDim2.new(1, 0, 1, 0)
    a.BackgroundTransparency = 0
    a.BackgroundColor3 = Color
    local g = Instance.new("UICorner", a)
    g.CornerRadius = UDim.new(50, 50)
    return(e)
end
 
local data = game.Players:GetPlayers()
 
function noob(player)
    local character
    repeat wait() until player.Character
    local handler = makemarker(guimain, player.Character:WaitForChild("HumanoidRootPart"), getgenv().dot.Dot_Visual.Color, 0.3, 3)
    handler.Name = player.Name
    player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("HumanoidRootPart") end)
end
 
for i = 1, #data do
    if data[i] ~= game.Players.LocalPlayer then
        noob(data[i])
    end
end
 
game.Players.PlayerAdded:connect(function(Player)
    noob(Player)
end)
 
spawn(function()
    placemarker.Anchored = true
    placemarker.CanCollide = false
    placemarker.Transparency = 1
    if getgenv().dot.Dot_Visual.Visible then
    makemarker(placemarker, placemarker, getgenv().dot.Dot_Visual.Color , 0.40, 0)
    end
end)
 
 
--// Box Misc
local Tracer = Instance.new("Part", game.Workspace)
Tracer.Name = "haunts0001"	
Tracer.Anchored = true		
Tracer.CanCollide = false
Tracer.Transparency = getgenv().dot.Box_Visual.Transparency
Tracer.Parent = game.Workspace	
Tracer.Color = getgenv().dot.Box_Visual.Color
Tracer.Material = getgenv().dot.Box_Visual.Material
 
if getgenv().dot.Box_Visual.Shape == "Ball" then
    Tracer.Shape = Enum.PartType.Ball
elseif getgenv().dot.Box_Visual.Shape == "Box" then
    Tracer.Shape = Enum.PartType.Block
elseif getgenv().dot.Box_Visual.Shape == "Cylinder" then
    Tracer.Shape = Enum.PartType.Cylinder
end
 
 
if getgenv().dot.Box_Visual.Size == "Small" then
    Tracer.Size = Vector3.new(4, 4, 4)
elseif getgenv().dot.Box_Visual.Size == "Medium" then
    Tracer.Size = Vector3.new(7, 7, 7)
elseif getgenv().dot.Box_Visual.Size == "Large" then
    Tracer.Size = Vector3.new(12, 12, 12)
end
 
 
--// Circle
local plry = game.Players.LocalPlayer
local mouse = plry:GetMouse()
local Runserv = game:GetService("RunService")
 
circle = Drawing.new("Circle")
circle.Color = getgenv().dot.Fov_Visual.Color
circle.Thickness = getgenv().dot.Fov_Visual.Thickness 
circle.NumSides = getgenv().dot.Fov_Visual.NumSides
circle.Radius = getgenv().dot.Fov_Visual.Radius
circle.Thickness = getgenv().dot.Fov_Visual.Thickness
circle.Transparency = getgenv().dot.Fov_Visual.Transparency
circle.Visible = getgenv().dot.Fov_Visual.Visible
circle.Filled = getgenv().dot.Fov_Visual.Filled
 
Runserv.RenderStepped:Connect(function()
    circle.Position = Vector2.new(mouse.X,mouse.Y+35)
end)
 
local guimain = Instance.new("Folder", game.CoreGui)
local CC = game:GetService("Workspace").CurrentCamera
local LocalMouse = game.Players.LocalPlayer:GetMouse()
local Locking = false
 
 
    --
    if getgenv().CheckIfScriptLoaded == true then
        game.StarterGui:SetCore("SendNotification", {
        Title = "dot.lua",
        Text = "Already Loaded!",
        Duration = 3,
        Icon = "rbxassetid://12990104891"
        })
        return
    end
 
getgenv().CheckIfScriptLoaded = true
 
local UserInputService = game:GetService("UserInputService")
local LocalHL = Instance.new("Highlight")
 
UserInputService.InputBegan:Connect(function(keygo,ok)
    if (not ok) then
        if (keygo.KeyCode == getgenv().dot.Main.Keybind) then
            if getgenv().dot.Main.Enabled == true then
               Locking = not Locking
 
               if Locking then
                    Plr =  getClosestPlayerToCursor()
 
--// Notifications
                    if getgenv().dot.HighLight_Visual.Highlight_Target == true then
                        LocalHL.Parent = Plr.Character
                        LocalHL.FillColor = getgenv().dot.HighLight_Visual.Highlight_Color_Fill
                        LocalHL.OutlineColor = getgenv().dot.HighLight_Visual.Highlight_Color_OutLine
                    else
                        LocalHL.Parent = game.CoreGui
                    end
 
                    if getgenv().dot.Main.Notifcation == true and getgenv().dot.Main.Notifcation_Type == "Roblox" then
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "dot.lua";
                        Text = "Locked to: "..tostring(Plr.Character.Humanoid.DisplayName);
                        Icon = "rbxassetid://12990104891"
                        })
                    elseif getgenv().dot.Main.Notifcation == true and getgenv().dot.Main.Notifcation_Type == "Xaxa" then
                        notifications:BuildNotificationUI();
                        notifications:Notify("Locked to: " .. Plr.Character.Humanoid.DisplayName);
                    elseif getgenv().dot.Main.Notifcation == true and getgenv().dot.Main.Notifcation_Type == "Kali" then
                        Notify({
                            Title = "dot.lua",
                            Description = "Locked to: " .. Plr.Character.Humanoid.DisplayName,
                            Duration = 4
                        })
                    end
 
 
                elseif not Locking then
 
                    if getgenv().dot.HighLight_Visual.Highlight_Target == true then
                        LocalHL.Parent = game.CoreGui
                    end
 
                    if getgenv().dot.Main.Notifcation == true and getgenv().dot.Main.Notifcation_Type == "Roblox" then
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "dot.lua";
                        Text = "Unlocked";
                        Icon = "rbxassetid://12990104891"
                        })
                    elseif getgenv().dot.Main.Notifcation == true and getgenv().dot.Main.Notifcation_Type == "Xaxa" then
                        notifications:BuildNotificationUI();
                        notifications:Notify("Unlocked");
                    elseif getgenv().dot.Main.Notifcation == true and getgenv().dot.Main.Notifcation_Type == "Kali" then
                        Notify({
                            Title = "dot.lua",
                            Description = "Unlocked",
                            Duration = 4
                        })
                    elseif getgenv().dot.Main.Enabled == false then
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "dot.lua",
                        Text = "Target isn't enabled",
                        Duration = 5,
                        Icon = "rbxassetid://12990104891"
 
                        })
                    end
                end
            end
        end
    end
end)
 
--
 
function getClosestPlayerToCursor()
	local closestPlayer
	local shortestDistance = circle.Radius
 
	for i, v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
			local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
			local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
			if magnitude < shortestDistance then
				closestPlayer = v
				shortestDistance = magnitude
			end
		end
	end
	return closestPlayer
end
 
--
 
if getgenv().dot.Box_Visual.Visible then
	game:GetService("RunService").RenderStepped:connect(function()
		if Locking and Plr.Character:FindFirstChild("HumanoidRootPart") then
			Tracer.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position + (Plr.Character.HumanoidRootPart.Velocity * getgenv().dot.Main.Prediction_Amount))
		else
			Tracer.CFrame = CFrame.new(0, 9999, 0)
		end
	end)
end
 
if getgenv().dot.Dot_Visual.Visible then
    game:GetService("RunService").RenderStepped:connect(function()
		if Locking and Plr.Character:FindFirstChild("HumanoidRootPart") then
            placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position + (Plr.Character.HumanoidRootPart.Velocity * getgenv().dot.Main.Prediction_Amount))
		else
            placemarker.CFrame = CFrame.new(0, 9999, 0)
		end
	end)
end
 
--
 
local rawmetatable = getrawmetatable(game)
local old = rawmetatable.__namecall
setreadonly(rawmetatable, false)
rawmetatable.__namecall = newcclosure(function(...)
	local args = {...}
	if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
		args[3] = Plr.Character[getgenv().dot.Main.HitPart].Position+(Plr.Character[getgenv().dot.Main.HitPart].Velocity * getgenv().dot.Main.Prediction_Amount)
		return old(unpack(args))
	end
	return old(...)
end)
 
 
local networtserviceping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
local networthmax = string.split(networtserviceping,'(')
local ping = tonumber(networthmax[1])
 
if getgenv().dot.Main.Auto_Prediction == false then
    if ping < 150 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P150
    elseif ping < 140 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P140
    elseif ping < 130 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P130
    elseif ping < 120 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P120
    elseif ping < 110 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P110
    elseif ping < 100 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P100
    elseif ping < 90 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P90
    elseif ping < 80 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P80
    elseif ping < 70 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P70
    elseif ping < 60 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P60
    elseif ping < 50 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P50
    elseif ping < 40 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P40
    elseif ping < 30 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P30
    elseif ping < 20 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P20
    elseif ping < 10 then
        getgenv().dot.Main.Prediction_Amount = getgenv().dot.Main.Auto_Prediction_Section.P10
    end
end
 
 
--// Dead Chams
game:GetService("RunService").RenderStepped:Connect(function()
    if getgenv().dot.Visuals.Dead_Chams == true then
        for i, v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                if v.Character and v.Character:FindFirstChild("Humanoid") then
                    if v.Character:WaitForChild("BodyEffects") and v.Character.Humanoid.health < 3 then 
                        for _, k in pairs(v.Character:GetChildren()) do
                            if k:IsA "BasePart" and not k:FindFirstChild "Cham" then
 
                                local cham = Instance.new("BoxHandleAdornment", k)
 
                                cham.ZIndex = 10
                                cham.Adornee = k
                                cham.AlwaysOnTop = true
                                cham.Size = k.Size
                                cham.Transparency = 0.5
                                cham.Color3 = getgenv().dot.Visuals.Dead_Chams_Color
                                cham.Name = "Cham"
 
                            end
                        end
                    else
                        for _, k in pairs(v.Character:GetChildren()) do
                            if k:IsA "BasePart" and k:FindFirstChild "Cham" then
                                k:FindFirstChild("Cham"):Destroy()
                            end
                        end
                    end
                end
            end
        end
    end
end)
 
--
 
game:GetService("RunService").RenderStepped:Connect(function()
    if getgenv().dot.Gun_Visuals.GunBeam == true then
        for _,v in pairs(game.Workspace.Ignored:GetChildren()) do
            if v.Name == "BULLET_RAYS" then
                for _,f in pairs(v:GetChildren()) do
                    if f.Name == "GunBeam" then
                        --
                        f.Brightness = 10
                        f.TextureSpeed = 1
                        f.TextureLength = 10
                        f.LightInfluence = -1
                        f.Width0 = 0.1
                        f.Width1 = 0.1
                        f.LightEmission = 1
                        f.Texture = "rbxassetid://1215691065"
                        f.Segments = 0
                        f.FaceCamera = true
                        --
                        f.Color = ColorSequence.new{
                            ColorSequenceKeypoint.new(0, getgenv().dot.Gun_Visuals.GunBeamColor),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(105, 95, 245)),
                            ColorSequenceKeypoint.new(1, getgenv().dot.Gun_Visuals.GunBeamColor)
                        }
                        --
                    end
                end
            end
        end
    end
end)
 
 
while true do
    wait(0.5)
 
-- Untitled Hood --
 
    if getgenv().dot.Gun_Visuals.Game == "Untitled Hood" and game.PlaceId == 9183932460  then
 
        local lp = game:GetService("Players").LocalPlayer
        local lpn = game:GetService("Players").LocalPlayer.Name
 
        local dbcheck = lp.Backpack:FindFirstChild("[Double-Barrel SG]") or lp.Character:FindFirstChild("[Double-Barrel SG]")
        local revcheck = lp.Backpack:FindFirstChild("[Revolver]") or lp.Character:FindFirstChild("[Revolver]")
        local smgcheck = lp.Backpack:FindFirstChild("[SMG]") or lp.Character:FindFirstChild("[SMG]")
 
 
        if getgenv().dot.Gun_Visuals.Enable == true then
 
            if dbcheck and not lp:FindFirstChildOfClass("[Double-Barrel SG]") then
 
                dbcheck.Default.Material = getgenv().dot.Gun_Visuals.GunMats
 
                dbcheck.Default.Color = getgenv().dot.Gun_Visuals.GunColor
 
                dbcheck.Default.Reflectance = getgenv().dot.Gun_Visuals.GunReflectance
 
                dbcheck.Default.Transparency = getgenv().dot.Gun_Visuals.GunTransparency
 
                dbcheck.Default.TextureID = ''
 
                if getgenv().dot.Gun_Visuals.GunTexture == true then
                    dbcheck.Default.TextureID = getgenv().dot.Gun_Visuals.GunTextureId
                else 
                    dbcheck.Default.TextureID = ''
                end
            end
 
            if revcheck and not lp:FindFirstChildOfClass("[Revolver]") then
 
                revcheck.Default.Material = getgenv().dot.Gun_Visuals.GunMats
 
                revcheck.Default.Color = getgenv().dot.Gun_Visuals.GunColor
 
                revcheck.Default.Reflectance = getgenv().dot.Gun_Visuals.GunReflectance
 
                revcheck.Default.Transparency = getgenv().dot.Gun_Visuals.GunTransparency
 
                revcheck.Default.TextureID = ''
 
                if getgenv().dot.Gun_Visuals.GunTexture == true then
                    revcheck.Default.TextureID = getgenv().dot.Gun_Visuals.GunTextureId
                else 
                    revcheck.Default.TextureID = ''
                end
            end
 
            if smgcheck and not lp:FindFirstChildOfClass("[SMG]") then
 
                smgcheck.Default.Material = getgenv().dot.Gun_Visuals.GunMats
 
                smgcheck.Default.Color = getgenv().dot.Gun_Visuals.GunColor
 
                smgcheck.Default.Reflectance = getgenv().dot.Gun_Visuals.GunReflectance
 
                smgcheck.Default.Transparency = getgenv().dot.Gun_Visuals.GunTransparency
 
                smgcheck.Default.TextureID = ''
 
                if getgenv().dot.Gun_Visuals.GunTexture == true then
                    smgcheck.Default.TextureID = getgenv().dot.Gun_Visuals.GunTextureId
                else 
                    smgcheck.Default.TextureID = ''
                end
 
            end
        end
    end
 
    if getgenv().dot.Gun_Visuals.Game == "Dh Aim Trainer" and game.PlaceId == 7242996350 then
 
        local lp = game:GetService("Players").LocalPlayer
        local lpn = game:GetService("Players").LocalPlayer.Name
 
 
        local dbcheck11 = lp.Backpack:FindFirstChild("[Double-Barrel SG]") or lp.Character:FindFirstChild("[Double-Barrel SG]")
        local revcheck11 = lp.Backpack:FindFirstChild("[Revolver]") or lp.Character:FindFirstChild("[Revolver]")
 
 
        if getgenv().dot.Gun_Visuals.Enable == true then
 
 
            if dbcheck11 and not lp:FindFirstChildOfClass("[Double-Barrel SG]") then
 
                dbcheck11.Handle.Material = getgenv().dot.Gun_Visuals.GunMats
 
                dbcheck11.Handle.Color = getgenv().dot.Gun_Visuals.GunColor
 
                dbcheck11.Handle.Reflectance = getgenv().dot.Gun_Visuals.GunReflectance
 
                dbcheck11.Handle.Transparency = getgenv().dot.Gun_Visuals.GunTransparency
 
                dbcheck11.Handle.TextureID = ''
 
                if getgenv().dot.Gun_Visuals.GunTexture == true then
                    dbcheck11.Handle.TextureID = getgenv().dot.Gun_Visuals.GunTextureId
                else 
                    dbcheck11.Handle.TextureID = ''
                end
 
            end
 
            if revcheck11 and not lp:FindFirstChildOfClass("[Revolver]") then
 
                revcheck11.Handle.Material = getgenv().dot.Gun_Visuals.GunMats
 
                revcheck11.Handle.Color = getgenv().dot.Gun_Visuals.GunColor
 
                revcheck11.Handle.Reflectance = getgenv().dot.Gun_Visuals.GunReflectance
 
                revcheck11.Handle.Transparency = getgenv().dot.Gun_Visuals.GunTransparency
 
                revcheck11.Handle.TextureID = ''
 
                if getgenv().dot.Gun_Visuals.GunTexture == true then
                    revcheck11.Handle.TextureID = getgenv().dot.Gun_Visuals.GunTextureId
                else 
                    revcheck11.Handle.TextureID = ''
                end
 
            end
        end
    end
 
 
-- Hood Customs --
 
    if getgenv().dot.Gun_Visuals.Game == "Hood Customs" and game.PlaceId == 9825515356 then
 
 
        local lp = game:GetService("Players").LocalPlayer
        local lpn = game:GetService("Players").LocalPlayer.Name
        local Wk = game:GetService("Workspace")
 
 
        local dbcheck22 = lp.Backpack:FindFirstChild("[DoubleBarrel]") or lp.Character:FindFirstChild("[DoubleBarrel]") 
        local revcheck22 = lp.Backpack:FindFirstChild("[Revolver]") or lp.Character:FindFirstChild("[Revolver]")
        local smgggcheck22 = lp.Backpack:FindFirstChild("[SMG]") or lp.Character:FindFirstChild("[SMG]")
 
 
        if getgenv().dot.Gun_Visuals.Enable == true then
 
            if dbcheck22 and not lp:FindFirstChildOfClass("[DoubleBarrel]") then
 
                dbcheck22.Handle.Material = getgenv().dot.Gun_Visuals.GunMats
 
                dbcheck22.Handle.Color = getgenv().dot.Gun_Visuals.GunColor
 
                dbcheck22.Handle.Reflectance = getgenv().dot.Gun_Visuals.GunReflectance
 
                dbcheck22.Handle.Transparency = getgenv().dot.Gun_Visuals.GunTransparency
 
                dbcheck22.Handle.TextureID = ''
 
                if getgenv().dot.Gun_Visuals.GunTexture == true then
                    dbcheck22.Default.TextureID = getgenv().dot.Gun_Visuals.GunTextureId
                else 
                    dbcheck22.Default.TextureID = ''
                end
 
            end
 
            if revcheck22 and not lp:FindFirstChildOfClass("[Revolver]") then
 
                revcheck22.Handle.Material = getgenv().dot.Gun_Visuals.GunMats
 
                revcheck22.Handle.Color = getgenv().dot.Gun_Visuals.GunColor
 
                revcheck22.Handle.Reflectance = getgenv().dot.Gun_Visuals.GunReflectance
 
                revcheck22.Handle.Transparency = getgenv().dot.Gun_Visuals.GunTransparency
 
                revcheck22.Handle.TextureID = ''
 
                if getgenv().dot.Gun_Visuals.GunTexture == true then
                    revcheck22.Default.TextureID = getgenv().dot.Gun_Visuals.GunTextureId
                else 
                    revcheck22.Default.TextureID = ''
                end
            end
 
            if smgggcheck22 and not lp:FindFirstChildOfClass("[SMG]") then
 
                smgggcheck22.Handle.Material = getgenv().dot.Gun_Visuals.GunMats
 
                smgggcheck22.Handle.Color = getgenv().dot.Gun_Visuals.GunColor
 
                smgggcheck22.Handle.Reflectance = getgenv().dot.Gun_Visuals.GunReflectance
 
                smgggcheck22.Handle.Transparency = getgenv().dot.Gun_Visuals.GunTransparency
 
                smgggcheck22.Handle.TextureID = ''
 
                if getgenv().dot.Gun_Visuals.GunTexture == true then
                    smgcheck22.Default.TextureID = getgenv().dot.Gun_Visuals.GunTextureId
                else 
                    smgcheck22.Default.TextureID = ''
                end
 
            end
        end
    end
 
-- Da hood --
 
    if getgenv().dot.Gun_Visuals.Game == "Da hood" and game.PlaceId == 2788229376 then
 
        local lp = game:GetService("Players").LocalPlayer
        local lpn = game:GetService("Players").LocalPlayer.Name
        local Wk = game:GetService("Workspace")
 
 
        local dbcheck33 = lp.Backpack:FindFirstChild("[Double-Barrel SG]") or lp.Character:FindFirstChild("[Double-Barrel SG]") 
        local revcheck33 = lp.Backpack:FindFirstChild("[Revolver]") or lp.Character:FindFirstChild("[Revolver]")
        local smgggcheck33 = lp.Backpack:FindFirstChild("[SMG]") or lp.Character:FindFirstChild("[SMG]")
 
        if getgenv().dot.Gun_Visuals.Enable == true then
 
            if dbcheck33 and not lp:FindFirstChildOfClass("[Double-Barrel SG]") then
 
                dbcheck33.Default.Material = getgenv().dot.Gun_Visuals.GunMats
 
                dbcheck33.Default.Color = getgenv().dot.Gun_Visuals.GunColor
 
                dbcheck33.Default.Reflectance = getgenv().dot.Gun_Visuals.GunReflectance
 
                dbcheck33.Default.Transparency = getgenv().dot.Gun_Visuals.GunTransparency
 
                dbcheck33.Default.TextureID = ''
 
                if getgenv().dot.Gun_Visuals.GunTexture == true then
                    dbcheck33.Default.TextureID = getgenv().dot.Gun_Visuals.GunTextureId
                else 
                    dbcheck33.Default.TextureID = ''
                end
            end
 
            if revcheck33 and not lp:FindFirstChildOfClass("[Revolver]") then
 
                revcheck33.Default.Material = getgenv().dot.Gun_Visuals.GunMats
 
                revcheck33.Default.Color = getgenv().dot.Gun_Visuals.GunColor
 
                revcheck33.Default.Reflectance = getgenv().dot.Gun_Visuals.GunReflectance
 
                revcheck33.Default.Transparency = getgenv().dot.Gun_Visuals.GunTransparency
 
                revcheck33.Default.TextureID = ''
 
                if getgenv().dot.Gun_Visuals.GunTexture == true then
                    revcheck33.Default.TextureID = getgenv().dot.Gun_Visuals.GunTextureId
                else 
                    revcheck33.Default.TextureID = ''
                end
 
            end
 
            if smgggcheck33 and not lp:FindFirstChildOfClass("[SMG]") then
 
               smgggcheck33.Default.Material = getgenv().dot.Gun_Visuals.GunMats
 
               smgggcheck33.Default.Color = getgenv().dot.Gun_Visuals.GunColor
 
               smgggcheck33.Default.Reflectance = getgenv().dot.Gun_Visuals.GunReflectance
 
               smgggcheck33.Default.Transparency = getgenv().dot.Gun_Visuals.GunTransparency
 
               smgggcheck33.Default.TextureID = ''
 
                if getgenv().dot.Gun_Visuals.GunTexture == true then
                    smgcheck33.Default.TextureID = getgenv().dot.Gun_Visuals.GunTextureId
                else 
                    smgcheck33.Default.TextureID = ''
                end
 
            end
        end
    end
wait(30)
end
 