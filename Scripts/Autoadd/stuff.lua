--[[

This code is so bad i genuinely dont know how i made it
look at your own risk
i warned you

--]]

-- CONSTANT VARIABLES

local promptService = game:GetService("ProximityPromptService")
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
local uis = game:GetService("UserInputService")
local cam = game:GetService("Workspace").CurrentCamera

-- VARIABLES

-- CONFIG

getgenv().config = {

    -- CHARACTER
    applyCharModsOnSpawn = false,
    charColor = Color3.fromRGB(255, 255, 255),
    charMaterial = Enum.Material.SmoothPlastic,

    -- SWAG
    wallbang = false,

    -- PLAYER

    Bhop = false,
    walkSpeedBypass = false,
    WalkSpeed = 20,
    infJump = false,

    -- VISUALS
    visualsEnabled = false,
    tracers = false,
    boxes = false,
    boxHealth = false,
    visualsColor = Color3.fromRGB(255, 255, 255),
    visualsRGB = false,
    distEsp = false,
    textSize = 40,

    -- GUN MODS
    reloadTime = 0,
    fireMode = "Auto",
    spread = 0,
    recoil = 0,
    autoApply = false,

    -- SKY VISUALS
    skyEnabled = false,
    ambientColor = Color3.fromRGB(21, 37, 71),
    shadowsDisabled = false,
    brightness = 1.77,
    clockTime = 10,

    -- HIT SOUNDS
    hitSounds = false,
    hitSoundVolume = 3,
    hitSound = "rbxassetid://2868331684",
    customHitSounds = false,
    customHitSoundId = "rbxassetid://",

    -- MISC
    banSafe = false,
}

-- FUNCTIONS / EVENTS

uis.JumpRequest:Connect(function()
	if plr.Character and plr.Character:FindFirstChild("Humanoid") and getgenv().config.infJump and plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
		plr.Character.Humanoid:ChangeState(3)
	end
end)

if plr.Character and plr.Character:FindFirstChild("Humanoid") then
    local hum = plr.Character.Humanoid;
    local char = plr.Character
    local newindex;
    newindex = hookmetamethod(game, "__newindex", function(Self, Key, Value)
        if not checkcaller() and Self == hum and Key == "WalkSpeed" and getgenv().config.walkSpeedBypass then
            return
        elseif not checkcaller() and Self == hum and Key == "JumpPower" and getgenv().config.Bhop then
            return newindex(Self, Key, 50)
        end
        return newindex(Self, Key, Value)
    end)
    char:WaitForChild("Items").ChildAdded:Connect(function()
        if getgenv().config.autoApply then
            for _, v in next, getgc(true) do
                if type(v) == "table" and rawget(v, "Recoil") and rawget(v, "Spread") and rawget(v, "ReloadTime") and rawget(v, "FireMode") then
                    rawset(v, "Recoil", 0)
                    rawset(v, "Spread", 0)
                    rawset(v, "FireMode", "Auto")
                    rawset(v, "ReloadTime", 0)
                end
            end
        end
    end)
end

plr.CharacterAdded:Connect(function(char)
    local hum = char:WaitForChild("Humanoid")
    if getgenv().config.applyCharModsOnSpawn then
        for _, v in next, char:GetDescendants() do
            if v:IsA("Part") or v:IsA("BasePart") or v:IsA("MeshPart") then
                v.Material = Enum.Material[getgenv().config.charMaterial]
                v.Color = getgenv().config.charColor
                if v:IsA("MeshPart") then
                    v.TextureID = ""
                end
            end
        end
        
        char.DescendantAdded:Connect(function(v)
            if v:IsA("Part") or v:IsA("BasePart") or v:IsA("MeshPart") then
                v.Material = Enum.Material[getgenv().config.charMaterial]
                v.Color = getgenv().config.charColor
                if v:IsA("MeshPart") then
                    v.TextureID = ""
                end
            end
        end)
    end
    local newindex;
    newindex = hookmetamethod(game, "__newindex", function(Self, Key, Value)
        if not checkcaller() and Self == hum and Key == "WalkSpeed" and getgenv().config.walkSpeedBypass then
            return
        elseif not checkcaller() and Self == hum and Key == "JumpPower" and getgenv().config.Bhop then
            return newindex(Self, Key, 50)
        end
        return newindex(Self, Key, Value)
    end)
    hum.WalkSpeed = getgenv().config.WalkSpeed
    char:WaitForChild("Items").ChildAdded:Connect(function()
        if getgenv().config.autoApply then
            for _, v in next, getgc(true) do
                if type(v) == "table" and rawget(v, "Recoil") and rawget(v, "Spread") and rawget(v, "ReloadTime") and rawget(v, "FireMode") then
                    rawset(v, "Recoil", 0)
                    rawset(v, "Spread", 0)
                    rawset(v, "FireMode", "Auto")
                    rawset(v, "ReloadTime", 0)
                end
            end
        end
    end)
end)

-- FUNCTIONS

local function getClosest()
    local closestDist = math.huge
    local closestPlr = nil
    for _, v in next, game.GetService(game, "Players").GetPlayers(game.GetService(game, "Players")) do
        if v ~= plr and v.Character ~= nil and game.FindFirstChild(v.Character, "Humanoid") and v.Character.Humanoid.Health > 0 then
            local vector, onScreen = cam.worldToScreenPoint(cam, game.WaitForChild(v.Character, "Head", math.huge).Position)
            local dist = (Vector2.new(uis.GetMouseLocation(uis).X, uis.GetMouseLocation(uis).Y) - Vector2.new(vector.X, vector.Y)).Magnitude
            if dist < closestDist and onScreen then
                closestDist = dist
                closestPlr = v
            end
        end
    end
    return closestPlr
end

-- HOOKS

local remotes = {
    ["ban"] = game:GetService("ReplicatedStorage").requestban,
    ["shoot"] = game:GetService("ReplicatedStorage").Remotes.Shoot,
    ["hit"] = game:GetService("ReplicatedStorage").Remotes.Hit,
}

local namecall;
namecall = hookmetamethod(game, "__namecall", function(Self, ...)
    if not checkcaller() and Self == remotes.ban and getgenv().config.banSafe then
        return
    end
    if not checkcaller() and Self == remotes.hit and getgenv().config.hitSounds then
        local audio = Instance.new("Sound", plr)
        audio.Name = "HitSound"
        if getgenv().config.customHitSounds then
            audio.SoundId = getgenv().config.customHitSoundId
        else
            audio.SoundId = getgenv().config.hitSound
        end
        audio.Volume = getgenv().config.hitSoundVolume
        audio.Play(audio)
        task.spawn(function()
            audio.Ended.Once(audio.Ended, function()
                audio.Destroy(audio)
            end)
        end)
    end
    if not checkcaller() and tostring(getcallingscript()) == "ItemScript" and string.lower(tostring(getnamecallmethod())) == "findpartonraywithignorelist" and getgenv().config.wallbang then
		local args = {...}
        table.insert(args[2], game.GetService(game, "Workspace").Map)
        table.insert(args[2], game.GetService(game, "Workspace").GridContents)
		return namecall(Self, unpack(args))
	end
    return namecall(Self, ...)
end)

-- REST

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
ThemeManager:SetLibrary(Library)

local Window = Library:CreateWindow({
    Title = 'KingsWare ｜ Fortblox',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    combat = Window:AddTab('rage'), 
    visuals = Window:AddTab('visuals'),
    player = Window:AddTab('player'),
    misc = Window:AddTab('misc.')
}

local rageFeatures = Tabs.combat:AddLeftGroupbox('Rage Features')

rageFeatures:AddToggle('wallbangToggle', {
    Text = 'Wallbang',
    Default = false,
}):OnChanged(function()
    getgenv().config.wallbang = Toggles.wallbangToggle.Value
end)

local combatMods = Tabs.combat:AddRightGroupbox('Gun Mods')

combatMods:AddButton('No Recoil', function()
    for _, v in next, getgc(true) do
        if type(v) == "table" and rawget(v, "Recoil") then
            rawset(v, "Recoil", 0)
        end
    end
end)

combatMods:AddButton('No Spread', function()
    for _, v in next, getgc(true) do
        if type(v) == "table" and rawget(v, "Spread") then
            rawset(v, "Spread", 0)
        end
    end
end)

combatMods:AddButton('Auto Fire', function()
    for _, v in next, getgc(true) do
        if type(v) == "table" and rawget(v, "FireMode") then
            rawset(v, "FireMode", "Auto")
        end
    end
end)

combatMods:AddButton('Instant Reload', function()
    for _, v in next, getgc(true) do
        if type(v) == "table" and rawget(v, "ReloadTime") then
            rawset(v, "ReloadTime", 0)
        end
    end
end)

combatMods:AddButton('Apply All', function()
    for _, v in next, getgc(true) do
        if type(v) == "table" and rawget(v, "Recoil") and rawget(v, "Spread") and rawget(v, "ReloadTime") and rawget(v, "FireMode") then
            rawset(v, "Recoil", 0)
            rawset(v, "Spread", 0)
            rawset(v, "FireMode", "Auto")
            rawset(v, "ReloadTime", 0)
        end
    end
end)

combatMods:AddToggle('autoApplyToggle', {
    Text = 'Auto Apply',
    Default = false,
    Tooltip = 'Automatically applies all these when you pick up a new weapon',
})

Toggles.autoApplyToggle:OnChanged(function()
    getgenv().config.autoApply = Toggles.autoApplyToggle.Value
end)

local visualsESP = Tabs.visuals:AddLeftGroupbox('ESP')

visualsESP:AddToggle('visualsEnabledToggle', {
    Text = 'Visuals Enabled',
    Default = false,
})

Toggles.visualsEnabledToggle:OnChanged(function()
    getgenv().config.visualsEnabled = Toggles.visualsEnabledToggle.Value
end)

visualsESP:AddToggle('tracerEnabledToggle', {
    Text = 'Tracers',
    Default = false,
})

Toggles.tracerEnabledToggle:OnChanged(function()
    getgenv().config.tracers = Toggles.tracerEnabledToggle.Value
end)

visualsESP:AddToggle('boxesEnabledToggle', {
    Text = 'Boxes',
    Default = false,
})

Toggles.boxesEnabledToggle:OnChanged(function()
    getgenv().config.boxes = Toggles.boxesEnabledToggle.Value
end)

visualsESP:AddToggle('distEnabledToggle', {
    Text = 'Distance ESP',
    Default = false,
})

Toggles.distEnabledToggle:OnChanged(function()
    getgenv().config.distEsp = Toggles.distEnabledToggle.Value
end)

visualsESP:AddDivider()

visualsESP:AddDropdown('tracerYDropdown', {
    Values = {'Top', 'Middle', 'Bottom'},
    Default = 2,
    Multi = false,
    Text = 'Tracer Pos',
    Tooltip = 'The position of the tracer',
})

Options.tracerYDropdown:OnChanged(function()
    if Options.tracerYDropdown.Value == "Top" then
        getgenv().config.tracerY = 0
    elseif Options.tracerYDropdown.Value == "Middle" then
        getgenv().config.tracerY = 2
    elseif Options.tracerYDropdown.Value == "Bottom" then
        getgenv().config.tracerY = 1
    end
end)

visualsESP:AddToggle('boxesHealthToggle', {
    Text = 'Box Health',
    Default = false,
    Tooltip = 'Shows player health, requires boxes',
})

Toggles.boxesHealthToggle:OnChanged(function()
    getgenv().config.boxHealth = Toggles.boxesHealthToggle.Value
end)

local visualsConfig = Tabs.visuals:AddRightGroupbox('Visuals Config')

visualsConfig:AddLabel('Visuals Color'):AddColorPicker('visualsColorPicker', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Visuals Color',
})

Options.visualsColorPicker:OnChanged(function()
    getgenv().config.visualsColor = Options.visualsColorPicker.Value
end)

local visualsCharacter = Tabs.visuals:AddRightGroupbox('Character')

visualsCharacter:AddDropdown('charMaterialDropdown', {
    Values = {'SmoothPlastic', 'ForceField'},
    Default = 1,
    Multi = false,
    Text = 'Material',
    Tooltip = 'The material',
})

Options.charMaterialDropdown:OnChanged(function()
    getgenv().config.charMaterial = Options.charMaterialDropdown.Value
    if plr.Character then
        for _, v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
            if v:IsA("Part") or v:IsA("BasePart") or v:IsA("MeshPart") then
                v.Material = Enum.Material[Options.charMaterialDropdown.Value]
            end
        end
    end
end)

visualsCharacter:AddLabel('Color'):AddColorPicker('charColorPicker', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Character Color',
})

Options.charColorPicker:OnChanged(function()
    getgenv().config.charColor = Options.charColorPicker.Value
    if plr.Character then
        for _, v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
            if v:IsA("Part") or v:IsA("BasePart") or v:IsA("MeshPart") then
                v.Color = Options.charColorPicker.Value
            end
        end
    end
end)

visualsCharacter:AddToggle('applyCharModsOnSpawnToggle', {
    Text = 'Apply On Spawn',
    Default = false,
})

Toggles.applyCharModsOnSpawnToggle:OnChanged(function()
    getgenv().config.applyCharModsOnSpawn = Toggles.applyCharModsOnSpawnToggle.Value
end)

local visualsSky = Tabs.visuals:AddRightGroupbox('Sky')

visualsSky:AddToggle('skyEnabled', {
    Text = 'Enable Sky Visuals',
    Default = false,
})

Toggles.skyEnabled:OnChanged(function()
    getgenv().config.skyEnabled = Toggles.skyEnabled.Value
end)

visualsSky:AddLabel('Ambient Color'):AddColorPicker('ambientColorPicker', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Ambient Color',
})

Options.ambientColorPicker:OnChanged(function()
    getgenv().config.ambientColor = Options.ambientColorPicker.Value
end)

visualsSky:AddInput('clockTimeTextbox', {
    Default = '10.5',
    Numeric = true,
    Finished = true,

    Text = 'Time',
    Tooltip = 'Set the time, for example 15.50 would be 3:30PM',
    Placeholder = 'Clock Time',
})

Options.clockTimeTextbox:OnChanged(function()
    getgenv().config.clockTime = Options.clockTimeTextbox.Value
end)

visualsSky:AddSlider('brightnessSlider', {
    Text = 'Brightness',

    Default = 1.77,
    Min = 0,
    Max = 5,
    Rounding = 2,

    Compact = false,
})

Options.brightnessSlider:OnChanged(function()
    getgenv().config.brightness = Options.brightnessSlider.Value
end)

local playerConfig = Tabs.player:AddLeftGroupbox('Config')

playerConfig:AddToggle('BhopToggle', {
    Text = 'Bhop',
    Default = false,
})

Toggles.BhopToggle:OnChanged(function()
    getgenv().config.Bhop = Toggles.BhopToggle.Value
end)

playerConfig:AddDivider()

playerConfig:AddToggle('walkSpeedBypassToggle', {
    Text = 'Walk Speed Bypass',
    Default = false,
    Tooltip = 'Bypasses walkspeed checks',
})

Toggles.walkSpeedBypassToggle:OnChanged(function()
    getgenv().config.walkSpeedBypass = Toggles.walkSpeedBypassToggle.Value
    if Toggles.walkSpeedBypassToggle.Value and plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.WalkSpeed = getgenv().config.WalkSpeed
    end
end)

playerConfig:AddSlider('walkSpeedSlider', {
    Text = 'Walk Speed',
    Default = 20,
    Min = 0,
    Max = 300,
    Rounding = 0,

    Compact = false,
})

Options.walkSpeedSlider:OnChanged(function()
    getgenv().config.WalkSpeed = Options.walkSpeedSlider.Value
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.WalkSpeed = Options.walkSpeedSlider.Value
    end
end)

playerConfig:AddDivider()

playerConfig:AddToggle('infJumpToggle', {
    Text = 'Inf Jump',
    Default = false,
    Tooltip = 'Jump Even if in air',
})

Toggles.infJumpToggle:OnChanged(function()
    getgenv().config.infJump = Toggles.infJumpToggle.Value
end)

local playerTeleports = Tabs.player:AddRightGroupbox('Teleports')

playerTeleports:AddButton('Random Chest', function()
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        for _, v in next, game:GetService("Workspace").Chests:GetChildren() do
            if v:IsA("Model") and v:FindFirstChild("Opened") and v:FindFirstChild("Key") and not v.Opened.Value then
                plr.Character.HumanoidRootPart.CFrame = v.Key.CFrame
                break
            end
        end
    end
end)

playerTeleports:AddButton('Random Supply Drop', function()
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        for _, v in next, game:GetService("Workspace").Airdrops:GetChildren() do
            if v:IsA("Model") and v:FindFirstChild("MeshPart") then
                plr.Character.HumanoidRootPart.CFrame = v.MeshPart.CFrame
                break
            end
        end
    end
end)

playerTeleports:AddButton('Random Ammo Box', function()
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        for _, v in next, game:GetService("Workspace").AmmoBoxes:GetChildren() do
            if v:IsA("Model") and v:FindFirstChild("ProximtyPart") and v.ProximityPart:FindFirstChild("ProximityPrompt") and v.ProximityPart.ProximityPrompt.Enabled then
                plr.Character.HumanoidRootPart.CFrame = v.ProximtyPart.CFrame
                break
            end
        end
    end
end)

local miscHit = Tabs.misc:AddLeftGroupbox('Hit Sounds')

miscHit:AddToggle('hitSoundsToggle', {
    Text = 'Enabled',
    Default = false,
}):OnChanged(function()
    getgenv().config.hitSounds = Toggles.hitSoundsToggle.Value
end)

miscHit:AddDropdown('hitsoundsDropdown', {
    Values = {'TF2', 'osu!', 'Vine Boom'},
    Default = 1,
    Multi = false,

    Text = 'Hitsound',
}):OnChanged(function()
    if Options.hitsoundsDropdown.Value == "osu!" then
        getgenv().config.hitSound = "rbxassetid://7144958286"
    elseif Options.hitsoundsDropdown.Value == "TF2" then
        getgenv().config.hitSound = "rbxassetid://2868331684"
    elseif Options.hitsoundsDropdown.Value == "Vine Boom" then
        getgenv().config.hitSound = "rbxassetid://9088081730"
    end
end)

miscHit:AddSlider('hitVolumeSlider', {
    Text = 'Volume',

    Default = 2,
    Min = 0,
    Max = 5,
    Rounding = 1,

    Compact = false,
}):OnChanged(function()
    getgenv().config.hitSoundVolume = Options.hitVolumeSlider.Value
end)

miscHit:AddDivider()

miscHit:AddToggle('customhitSoundsToggle', {
    Text = 'Custom hitsound',
    Default = false,
}):OnChanged(function()
    getgenv().config.customHitSounds = Toggles.customhitSoundsToggle.Value
end)

miscHit:AddInput('hitsoundTextbox', {
    Default = '',
    Numeric = true,
    Finished = true,

    Text = 'Cusom Hitsound',
    Placeholder = '',
}):OnChanged(function()
    getgenv().config.customHitSoundId = "rbxassetid://"..   tostring(Options.hitsoundTextbox.Value)
end)

local miscOther = Tabs.misc:AddRightGroupbox('Other')

miscOther:AddToggle('banSafeToggle', {
    Text = 'Ban Safe',
    Default = false,
    Tooltip = 'If the game tries to ban you, it will intercept it.',
})

Toggles.banSafeToggle:OnChanged(function()
    getgenv().config.banSafe = Toggles.banSafeToggle.Value
end)

local miscLib = Tabs.misc:AddRightGroupbox('Library')

miscLib:AddButton('Unload', function()
    Library:Unload()
end)

-- UPDATER

for _, v in next, game:GetService("Players"):GetPlayers() do
    if v ~= plr then
        
        local name = Drawing.new("Text")
        name.Text = ""
        name.Size = 20
        name.Color = Color3.fromRGB(255, 255, 255)
        name.Visible = false
        name.Center = true
        name.Outline = true
        name.Font = 3

        -- BOX ESP
        local outline = Drawing.new("Square")
        outline.Visible = false
        outline.Color = Color3.fromRGB(0, 0, 0)
        outline.Thickness = 3
        outline.Transparency = 1
        outline.Filled = false
        outline.ZIndex = 10

        local Box = Drawing.new("Square")
        Box.Visible = false
        Box.Color = Color3.fromRGB(255, 255, 255)
        Box.Thickness = 1
        Box.Transparency = 1
        Box.Filled = false
        Box.ZIndex = 15

        local health = Drawing.new("Square")
        health.Visible = false
        health.Thickness = 1
        health.Transparency = 1
        health.Filled = true
        health.ZIndex = 15

        local healthOutline = Drawing.new("Square")
        healthOutline.Visible = false
        healthOutline.Thickness = 10
        healthOutline.Transparency = 1
        healthOutline.Color = Color3.fromRGB(0, 0, 0)
        healthOutline.Filled = true
        healthOutline.ZIndex = 10

        -- TRACER
        local tracer = Drawing.new("Line")
        tracer.Visible = false
        tracer.Transparency = 1
        tracer.Color = Color3.fromRGB(255, 255, 255)
        tracer.Thickness = 1
        
        local connection;
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and getgenv().config.visualsEnabled then
                local pos, vis = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                local legpos = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0))
                local headpos = cam:worldToViewportPoint(v.Character.Head.Position + Vector3.new(0, 0.5, 0))
                if vis then
                    if getgenv().config.tracers then
                        if getgenv().config.tracerY == 0 then
                            tracer.From = Vector2.new(cam.ViewportSize.X / 2, 0)
                        else
                            tracer.From = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / getgenv().config.tracerY)
                        end
                        tracer.To = Vector2.new(pos.X, pos.Y)
                        tracer.Visible = true
                        if not getgenv().config.visualsRGB then
                            tracer.Color = getgenv().config.visualsColor
                        else
                            tracer.Color = Color3.fromHSV(tick() % 5/5, 1, 1)
                        end
                    else
                        tracer.Visible = false
                    end
                    if getgenv().config.boxes then
                        outline.Size = Vector2.new(1000 / pos.Z * 2, headpos.Y - legpos.Y)
                        outline.Position = Vector2.new(pos.X - outline.Size.X / 2, pos.Y - outline.Size.Y / 2)
                        outline.Visible = true
            
                        Box.Size = Vector2.new(1000 / pos.Z * 2, headpos.Y - legpos.Y)
                        Box.Position = Vector2.new(pos.X - Box.Size.X / 2, pos.Y - Box.Size.Y / 2)
                        Box.Visible = true
                        if getgenv().config.visualsRGB then
                            Box.Color = Color3.fromHSV(tick() % 5/5, 1, 1)
                        else
                            Box.Color = getgenv().config.visualsColor
                        end
            
                        health.Size = Vector2.new(5, (headpos.Y - legpos.Y) / (v.Character.Humanoid.MaxHealth / math.clamp(v.Character.Humanoid.Health, 0, v.Character.Humanoid.MaxHealth)))
                        health.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1 / health.Size.Y))
                        health.Color = Color3.fromRGB(255 - 255 / (v.Character.Humanoid.MaxHealth / v.Character.Humanoid.Health), 255 / (v.Character.Humanoid.MaxHealth / v.Character.Humanoid.Health), 0)
                        health.Visible = getgenv().config.boxHealth
    
                        healthOutline.Size = Vector2.new(5, headpos.Y - legpos.Y)
                        healthOutline.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y)
                        healthOutline.Visible = getgenv().config.boxHealth
                    else
                        outline.Visible = false
                        healthOutline.Visible = false
                        health.Visible = false
                        Box.Visible = false
                    end
                    if getgenv().config.distEsp then
                        name.Visible = true
                        name.Position = Vector2.new(pos.X, pos.Y)
                        if getgenv().config.visualsRGB then
                            name.Color = Color3.fromHSV(tick() % 5/5, 1, 1)
                        else
                            name.Color = getgenv().config.visualsColor
                        end
                        name.Size = math.clamp(getgenv().config.textSize / (cam.CFrame.Position - v.Character.HumanoidRootPart.Position).magnitude / 20, 15, 50)
                        if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                            name.Text = "Studs: "..tostring(math.round((plr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude))
                        else
                            name.Text = "Studs: 0"
                        end
                    else
                        name.Visible = false
                    end
                else
                    tracer.Visible = false
                    outline.Visible = false
                    health.Visible = false
                    healthOutline.Visible = false
                    Box.Visible = false
                    name.Visible = false
                end
            else
                tracer.Visible = false
                outline.Visible = false
                health.Visible = false
                healthOutline.Visible = false
                Box.Visible = false
                name.Visible = false
            end
        end)
    
        local plrRemoving;
        plrRemoving = game:GetService("Players").PlayerRemoving:Connect(function(l)
            if l.Name == v.Name then
                plrRemoving:Disconnect()
                connection:Disconnect()
                tracer.Visible = false
                tracer:Remove()
                outline.Visible = false
                outline:Remove()
                health.Visible = false
                health:Remove()
                Box.Visible = false
                Box:Remove()
                healthOutline.Visible = false
                healthOutline:Remove()
                name.Visible = false
                name:Remove()
            end
        end)
    end
end

game:GetService("Players").PlayerAdded:Connect(function(v)

    local name = Drawing.new("Text")
    name.Text = ""
    name.Size = 20
    name.Color = Color3.fromRGB(255, 255, 255)
    name.Visible = false
    name.Center = true
    name.Outline = true
    name.Font = 3

    -- BOX ESP
    local outline = Drawing.new("Square")
    outline.Visible = false
    outline.Color = Color3.fromRGB(0, 0, 0)
    outline.Thickness = 3
    outline.Transparency = 1
    outline.Filled = false
    outline.ZIndex = 10

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.fromRGB(255, 255, 255)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false
    Box.ZIndex = 15

    local health = Drawing.new("Square")
    health.Visible = false
    health.Thickness = 1
    health.Transparency = 1
    health.Filled = true
    health.ZIndex = 15

    local healthOutline = Drawing.new("Square")
    healthOutline.Visible = false
    healthOutline.Thickness = 10
    healthOutline.Transparency = 1
    healthOutline.Color = Color3.fromRGB(0, 0, 0)
    healthOutline.Filled = true
    healthOutline.ZIndex = 10

    -- TRACER
    local tracer = Drawing.new("Line")
    tracer.Visible = false
    tracer.Transparency = 1
    tracer.Color = Color3.fromRGB(255, 255, 255)
    tracer.Thickness = 1
    
    local connection;
    connection = game:GetService("RunService").RenderStepped:Connect(function()
        if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and getgenv().config.visualsEnabled then
            local pos, vis = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
            local legpos = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0))
            local headpos = cam:worldToViewportPoint(v.Character.Head.Position + Vector3.new(0, 0.5, 0))
            if vis then
                if getgenv().config.tracers then
                    if getgenv().config.tracerY == 0 then
                        tracer.From = Vector2.new(cam.ViewportSize.X / 2, 0)
                    else
                        tracer.From = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / getgenv().config.tracerY)
                    end
                    tracer.To = Vector2.new(pos.X, pos.Y)
                    tracer.Visible = true
                    if not getgenv().config.visualsRGB then
                        tracer.Color = getgenv().config.visualsColor
                    else
                        tracer.Color = Color3.fromHSV(tick() % 5/5, 1, 1)
                    end
                else
                    tracer.Visible = false
                end
                if getgenv().config.boxes then
                    outline.Size = Vector2.new(1000 / pos.Z * 2, headpos.Y - legpos.Y)
                    outline.Position = Vector2.new(pos.X - outline.Size.X / 2, pos.Y - outline.Size.Y / 2)
                    outline.Visible = true
        
                    Box.Size = Vector2.new(1000 / pos.Z * 2, headpos.Y - legpos.Y)
                    Box.Position = Vector2.new(pos.X - Box.Size.X / 2, pos.Y - Box.Size.Y / 2)
                    Box.Visible = true
                    if getgenv().config.visualsRGB then
                        Box.Color = Color3.fromHSV(tick() % 5/5, 1, 1)
                    else
                        Box.Color = getgenv().config.visualsColor
                    end
        
                    health.Size = Vector2.new(5, (headpos.Y - legpos.Y) / (v.Character.Humanoid.MaxHealth / math.clamp(v.Character.Humanoid.Health, 0, v.Character.Humanoid.MaxHealth)))
                    health.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1 / health.Size.Y))
                    health.Color = Color3.fromRGB(255 - 255 / (v.Character.Humanoid.MaxHealth / v.Character.Humanoid.Health), 255 / (v.Character.Humanoid.MaxHealth / v.Character.Humanoid.Health), 0)
                    health.Visible = getgenv().config.boxHealth

                    healthOutline.Size = Vector2.new(5, headpos.Y - legpos.Y)
                    healthOutline.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y)
                    healthOutline.Visible = getgenv().config.boxHealth
                else
                    outline.Visible = false
                    healthOutline.Visible = false
                    health.Visible = false
                    Box.Visible = false
                end
                if getgenv().config.distEsp then
                    name.Visible = true
                    name.Position = Vector2.new(pos.X, pos.Y)
                    if getgenv().config.visualsRGB then
                        name.Color = Color3.fromHSV(tick() % 5/5, 1, 1)
                    else
                        name.Color = getgenv().config.visualsColor
                    end
                    name.Size = math.clamp(getgenv().config.textSize / (cam.CFrame.Position - v.Character.HumanoidRootPart.Position).magnitude / 20, 15, 50)
                    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                        name.Text = "Studs: "..tostring(math.round((plr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude))
                    else
                        name.Text = "Studs: 0"
                    end
                else
                    name.Visible = false
                end
            else
                tracer.Visible = false
                outline.Visible = false
                health.Visible = false
                healthOutline.Visible = false
                Box.Visible = false
                name.Visible = false
            end
        else
            tracer.Visible = false
            outline.Visible = false
            health.Visible = false
            healthOutline.Visible = false
            Box.Visible = false
            name.Visible = false
        end
    end)

    local plrRemoving;
    plrRemoving = game:GetService("Players").PlayerRemoving:Connect(function(l)
        if l.Name == v.Name then
            plrRemoving:Disconnect()
            connection:Disconnect()
            tracer.Visible = false
            tracer:Remove()
            outline.Visible = false
            outline:Remove()
            health.Visible = false
            health:Remove()
            Box.Visible = false
            Box:Remove()
            healthOutline.Visible = false
            healthOutline:Remove()
            name.Visible = false
            name:Remove()
        end
    end)
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if getgenv().config.skyEnabled then
        game:GetService("Lighting").ClockTime = getgenv().config.clockTime
        game:GetService("Lighting").Ambient = getgenv().config.ambientColor
        game:GetService("Lighting").Brightness = getgenv().config.brightness
        game:GetService("Lighting").OutdoorAmbient = getgenv().config.ambientColor
    else
        game:GetService("Lighting").Ambient = Color3.fromRGB(21, 37, 71)
        game:GetService("Lighting").Brightness = 1.77
        game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(0, 0, 0)
    end

    if getgenv().config.noclip and plr.Character then
        for _, v in next, plr.Character:GetDescendants() do 
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end

    -- GAYMER RGB LIB
    Library.AccentColor = Color3.fromHSV((tick() % 5/5), 1, 1)
    ThemeManager:ThemeUpdate()
end)