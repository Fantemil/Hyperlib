repeat wait() until game:IsLoaded()
local load = tick()

if not LPH_OBFUSCATED and not LPH_JIT_ULTRA then
    LPH_JIT_ULTRA = function(f) return f end
    LPH_NO_VIRTUALIZE = function(f) return f end
    LPH_JIT_MAX = function(f) return f end
    LPH_JIT = function(f) return f end
    LPH_ENCSTR = function(s) return s end
    LPH_STRENC = function(s) return s end
    LPH_CRASH = function() while true do end return end
end



local Utility = {
    Version = "1.0.0b",
    Method = "UpdateMousePos",
    UseNewMethod = true,
    NotSafeGame = true,
    FPS = 60,
    ping = 100,
    AllowedPlaceIDs = {
        2788229376, -- Da Hood
        7213786345, -- Da Hood VC
        --9825515356, -- Hood Customs
        5602055394, -- Hood Modded
        7951883376, -- Hood Modded VC
        12927359803, -- Dah Aim Trainer
        12867571492, -- KatanaHood
        7242996350, -- Da Hood Aim Trainer
        12884917481, -- Da Hood Aim Trainer VC
        11867820563, -- Dae Hood
        12618586930, -- Dat Hood
        9183932460, -- Untitled Hood
        9435785899, -- Untitled Hood VC
    },
    HitBoxes = {"Head","Chest","Penis","Feet"}
}

local MainRemote = nil

if game.PlaceId == 2788229376 or game.PlaceId == 7213786345 then -- // Da Hood
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 9825515356 then -- // Hood Customs
    Utility.NotSafeGame = true
    Utility.UseNewMethod = true
elseif game.PlaceId == 5602055394 or game.PlaceId == 7951883376 then -- // Hood Modded
    Utility.Method = "MousePos"
        MainRemote = game:GetService("ReplicatedStorage").Bullets 
elseif game.PlaceId == 12927359803 then -- // Dah Aim Trainer
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 7242996350 or game.PlaceId == 12884917481 then -- // Da Hood Aim Trainer
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos" 
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 12867571492 then -- // Katana Hood
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 11867820563 then -- // Dae Hood
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 12618586930 then -- // Dat Hood
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 9183932460 or game.PlaceId == 9435785899 then -- // Untitled Hood
    Utility.UseNewMethod = false
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage")[".gg/untitledhood"]
else
    Utility.UseNewMethod = true
    Utility.Method = "UpdateMousePos"
    MainRemote = nil
end

    
function notify(text) 
    Library:Notify(text)
end

function formatNumber(number)
    number = tostring(number)
    return number:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end

function converthitbox(hitbox) 
    if hitbox == "Head" then 
        return "Head"
    elseif hitbox == "Chest" then 
        return "HumanoidRootPart"
    elseif hitbox == "Penis" then 
        return "LowerTorso"
    elseif hitbox == "Feet" then 
        return "RightFoot"
    end
end


local velDot = Drawing.new("Circle")
velDot.Filled = true
velDot.Thickness = 1
velDot.Transparency = 1
velDot.Radius = 5

local velLine = Drawing.new("Line")
velLine.Visible = false
velLine.From = Vector2.new(0, 0)
velLine.To = Vector2.new(200, 200)
velLine.Color = Color3.new(1,1,1)
velLine.Thickness = 1
velLine.Transparency = 1

local silentDot = Drawing.new("Circle")
silentDot.Filled = true
silentDot.Thickness = 1
silentDot.Transparency = 1
silentDot.Radius = 5

local silentLine = Drawing.new("Line")
silentLine.Visible = false
silentLine.From = Vector2.new(0, 0)
silentLine.To = Vector2.new(200, 200)
silentLine.Color = Color3.new(1,1,1)
silentLine.Thickness = 1
silentLine.Transparency = 1

local hitparts = {
    silent = "Head",
    silentas = "LowerTorso",
    velredirect = "Chest",
}
getgenv().Folders = {
    Configs = "lunar_main",
    Themes = "lunar_themes"
}



local repo = 'https://raw.githubusercontent.com/laagginq/linoria/main/' -- // Modified Linoria

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'lunar.vip',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Aiming = Window:AddTab('Silent Aim'), 
    AntiLock = Window:AddTab('Anti Lock'), 
    Settings = Window:AddTab('UI Settings'),
}
-- // Silent Aim
local SilentAim = Tabs.Aiming:AddLeftGroupbox('Settings')

SilentAim:AddToggle('SilentAimEnable', {
    Text = 'Enabled',
    Default = false, -- Default value (true / false)
}):AddKeyPicker('SilentAimKey', {
    Default = 'None', 
    SyncToggleState = true, 
    Mode = 'Toggle', -- Modes: Always, Toggle, Hold
    Text = 'Silent Aim', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
})

SilentAim:AddToggle('Silent_WallCheck', {
    Text = 'Wall Check',
    Default = true, -- Default value (true / false)
})

SilentAim:AddToggle('Silent_CrewCheck', {
    Text = 'Crew Check',
    Default = false, -- Default value (true / false)
})

SilentAim:AddToggle('Silent_KOCHECK', {
    Text = 'K.O Check',
    Default = true, -- Default value (true / false)
})

SilentAim:AddToggle('Silent_Anti', {
    Text = 'Anti Ground Shots',
    Default = false, -- Default value (true / false)
})

SilentAim:AddToggle('Silent_AVB', {
    Text = 'Aim Viewer Bypass',
    Default = false, -- Default value (true / false)
})

SilentAim:AddToggle('Silent_Resolver', {
    Text = 'Resolver',
    Default = false, -- Default value (true / false)
})

SilentAim:AddToggle('Silent_NearestPart', {
    Text = 'Nearest Part To Cursor',
    Default = false, -- Default value (true / false)
})

SilentAim:AddDropdown('Silent_HitBox', {
    Values = Utility.HitBoxes,
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Hit-Part',
})

Options.Silent_HitBox:OnChanged(function()
    hitparts.silent = converthitbox(hitparts.silent)
end)

SilentAim:AddSlider('Silent_HitChance', {
    Text = 'Hit Chance',
    Default = 100,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Compact = false, -- If set to true, then it will hide the label
})

local Airshot = Tabs.Aiming:AddLeftGroupbox('Airshot')

Airshot:AddToggle('Silent_Airshot_Enabled', {
    Text = 'Enabled',
    Default = false, -- Default value (true / false)
})

Airshot:AddDropdown('Silent_Airshot_HitBox', {
    Values = Utility.HitBoxes,
    Default = 3, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Hit-Part',
})

Options.Silent_Airshot_HitBox:OnChanged(function()
    hitparts.silentas = converthitbox(hitparts.silentas)
end)


local s_FOV = Tabs.Aiming:AddRightGroupbox('Field Of View')
s_FOV:AddToggle('Silent_FOV_Visible', {
    Text = 'Show',
    Default = false, -- Default value (true / false)
}):AddColorPicker('Silent_FOV_Color', {
    Default = Color3.new(1, 1, 1), 
})


s_FOV:AddToggle('Silent_FOV_Filled', {
    Text = 'Filled',
    Default = false, -- Default value (true / false)
})

s_FOV:AddSlider('Silent_FOV_Size', {
    Text = 'Size',
    Default = 100,
    Min = 1,
    Max = 500,
    Rounding = 1,
    Compact = false, -- If set to true, then it will hide the label
})

s_FOV:AddSlider('Silent_FOV_Trans', {
    Text = 'Transparency',
    Default = 1,
    Min = 0.1,
    Max = 1,
    Rounding = 2,
    Compact = false, -- If set to true, then it will hide the label
})

local Prediction = Tabs.Aiming:AddRightTabbox()
local Basic = Prediction:AddTab('Basic')
local Advanced = Prediction:AddTab('Advanced')


local advancedpred = {
    enabled = false,
    close = 0.144,
    mid = 0.144,
    far = 0.144,
}


Basic:AddToggle('Silent_AutoPred', {
    Text = 'Ping Based Prediction',
    Default = false, -- Default value (true / false)
})

Toggles.Silent_AutoPred:OnChanged(function()
    if advancedpred.enabled == true then 
        --notify("You can not use advanced prediction and auto prediction at the same time.")
        Toggles.Silent_AutoPred:SetValue(false)
    end
end)

Basic:AddSlider('Silent_Pred2', {
    Text = 'Prediction',
    Default = 0.141,
    Min = 0,
    Max = 1,
    Rounding = 3,
    Compact = false, -- If set to true, then it will hide the label
})

Basic:AddInput('Silent_Pred1', {
    Text = 'Custom Prediction',
    Numeric = true, 
    Finished = true, 
    Placeholder = 'Prediction', 
})

Options.Silent_Pred1:OnChanged(function()
    local v = Options.Silent_Pred1.Value
    if tonumber(v) then
        if v ~= "" and v ~= " " then
            Options.Silent_Pred2:SetValue(tonumber(v))
        end
    else
        notify("Please only input number prediction values.")
    end
end)


Advanced:AddToggle('Silent_AdvancedPred', {
    Text = 'Advanced Prediction',
    Default = false, -- Default value (true / false)
})

Toggles.Silent_AdvancedPred:OnChanged(function()
    if Toggles.Silent_AutoPred.Value == false then 
        advancedpred.enabled = Toggles.Silent_AdvancedPred.Value
    else
        notify("You can not use advanced prediction and auto prediction at the same time.")
    end
end)


Advanced:AddInput('Silent_AdvancedPred_Close', {
    Text = "Close Range Prediction",
    Numeric = true, 
    Finished = true, 
    Placeholder = 'Prediction', 
})

Options.Silent_AdvancedPred_Close:OnChanged(function()
    local v = Options.Silent_AdvancedPred_Close.Value
    if tonumber(v) then
        if v ~= "" and v ~= " " then
            advancedpred.close = v
        end
    else
        notify("Please only input number prediction values.")
    end
end)

Advanced:AddInput('Silent_AdvancedPred_Mid', {
    Text = "Mid Range Prediction",
    Numeric = true, 
    Finished = true, 
    Placeholder = 'Prediction', 
})

Options.Silent_AdvancedPred_Mid:OnChanged(function()
    local v = Options.Silent_AdvancedPred_Mid.Value
    if tonumber(v) then
        if v ~= "" and v ~= " " then
            advancedpred.mid = v
        end
    else
        notify("Please only input number prediction values.")
    end
end)

Advanced:AddInput('Silent_AdvancedPred_Far', {
    Text = "Far Range Prediction",
    Numeric = true, 
    Finished = true, 
    Placeholder = 'Prediction', 
})

Options.Silent_AdvancedPred_Far:OnChanged(function()
    local v = Options.Silent_AdvancedPred_Far.Value
    if tonumber(v) then
        if v ~= "" and v ~= " " then
            advancedpred.far = v
        end
    else
        notify("Please only input number prediction values.")
    end
end)


local SVisuals = Tabs.Aiming:AddLeftGroupbox('Visuals')


SVisuals:AddToggle('Dot', {
    Text = 'Dot',
    Default = false, -- Default value (true / false)
}):AddColorPicker('DotColor', {
    Default = Color3.new(1, 1, 1), 
})
SVisuals:AddToggle('Line', {
    Text = 'Line',
    Default = false, -- Default value (true / false)
}):AddColorPicker('LineColor', {
    Default = Color3.new(1, 1, 1), 
})

Options.DotColor:OnChanged(function()
    silentDot.Color = Options.DotColor.Value
end)

Options.LineColor:OnChanged(function()
    silentLine.Color = Options.LineColor.Value
end)


-- // AntiLock
local BreakPred = Tabs.AntiLock:AddLeftGroupbox('Prediction Breaker')


BreakPred:AddToggle('BreakPredi', {
    Text = 'Enabled',
    Default = false, -- Default value (true / false)
}):AddKeyPicker('BreakPredKey', {
    Default = 'None', 
    SyncToggleState = true, 
    Mode = 'Toggle', -- Modes: Always, Toggle, Hold
    Text = 'Prediction Breaker', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
})

local CustomVelocity = Tabs.AntiLock:AddLeftGroupbox('Custom Velocity')

CustomVelocity:AddToggle('CustomVelocity', {
    Text = 'Enabled',
    Default = false, -- Default value (true / false)
}):AddKeyPicker('CustomVelocityKey', {
    Default = 'None', 
    SyncToggleState = true, 
    Mode = 'Toggle', -- Modes: Always, Toggle, Hold
    Text = 'Custom Velocity', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
})

CustomVelocity:AddDropdown('CustomPreset', {
    Values = {"Custom", "Random", "Fluctuate", "Ground", "Sky"},
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Presets',
})

CustomVelocity:AddSlider('CustomX', {
    Text = 'X Velocity',
    Default = 0,
    Min = -100,
    Max = 100,
    Rounding = 0,
    Compact = false, -- If set to true, then it will hide the label
})

CustomVelocity:AddSlider('CustomY', {
    Text = 'Y Velocity',
    Default = 0,
    Min = -100,
    Max = 100,
    Rounding = 0,
    Compact = false, -- If set to true, then it will hide the label
})

CustomVelocity:AddSlider('CustomZ', {
    Text = 'Z Velocity',
    Default = 0,
    Min = -100,
    Max = 100,
    Rounding = 0,
    Compact = false, -- If set to true, then it will hide the label
})

local VelMultiply = Tabs.AntiLock:AddRightGroupbox('Velocity Multiplier')

VelMultiply:AddToggle('VelMultiply', {
    Text = 'Enabled',
    Default = false, -- Default value (true / false)
}):AddKeyPicker('MultiplyVelocity', {
    Default = 'None', 
    SyncToggleState = true, 
    Mode = 'Toggle', -- Modes: Always, Toggle, Hold
    Text = 'Velocity Multiplier', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
})

VelMultiply:AddSlider('WalkM', {
    Text = 'Walk Multiplier',
    Default = 2,
    Min = -5,
    Max = 20,
    Rounding = 0,
    Compact = false, -- If set to true, then it will hide the label
})

VelMultiply:AddSlider('JumpM', {
    Text = 'Jump Multiplier',
    Default = 2,
    Min = -5,
    Max = 20,
    Rounding = 0,
    Compact = false, -- If set to true, then it will hide the label
})

local VelVisualizer = Tabs.AntiLock:AddRightGroupbox('Velocity Visualizer')

local visualizer = {
    Part = "Head"
}

VelVisualizer:AddToggle('VelVisuals', {
    Text = 'Dot',
    Default = false, -- Default value (true / false)
}):AddColorPicker('VisualColor', {
    Default = Color3.new(1, 1, 1), 
})


VelVisualizer:AddToggle('VelVisuals2', {
    Text = 'Line',
    Default = false, -- Default value (true / false)
}):AddColorPicker('VisualColor2', {
    Default = Color3.new(1, 1, 1), 
})

Options.VisualColor:OnChanged(function()
    velDot.Color = Options.VisualColor.Value
end)

Options.VisualColor2:OnChanged(function()
    velLine.Color = Options.VisualColor2.Value
end)

VelVisualizer:AddSlider('VelPred', {
    Text = 'Prediction',
    Default = 0.15,
    Min = 0,
    Max = 0.25,
    Rounding = 2,

    Compact = false, -- If set to true, then it will hide the label
})

VelVisualizer:AddDropdown('VelHitBox', {
    Values = Utility.HitBoxes,
    Default = 2, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Hit-Part',
})

Options.VelHitBox:OnChanged(function()
    visualizer.Part = converthitbox(Options.VelHitBox.Value)
end)

local VelocityRedirection = Tabs.AntiLock:AddLeftGroupbox('Velocity Redirection')

VelocityRedirection:AddToggle('VelRedirect_Enabled', {
    Text = 'Enabled',
    Default = false, -- Default value (true / false)
})

VelocityRedirection:AddSlider('VelRedirect_Prediction', {
    Text = 'Prediction',
    Default = 0.15,
    Min = 0,
    Max = 0.25,
    Rounding = 2,

    Compact = false, -- If set to true, then it will hide the label
})

local rplayers = {}

for i,v in pairs(game.Players:GetPlayers()) do 
    table.insert(rplayers, v.Name)
end

game.Players.PlayerAdded:Connect(function(v)
    table.insert(rplayers, v.Name)
end)

game.Players.PlayerRemoving:Connect(function(p)
    for i,v in pairs(rplayers) do 
        if v == p.Name then 
            table.remove(rplayers, i)
        end
    end
end)

VelocityRedirection:AddDropdown('VelRedirect_TargetName', {
    Values = rplayers,
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected
    Text = 'Target',
})

VelocityRedirection:AddDropdown('VelRedirect_HitBox', {
    Values = Utility.HitBoxes,
    Default = 2, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Hit-Part',
})

Options.VelRedirect_HitBox:OnChanged(function()
    hitparts.velredirect = converthitbox(Options.VelRedirect_HitBox.Value)
end)

task.spawn(function()
    while wait(3) do 
        Options.VelRedirect_TargetName:SetValue(rplayers)
    end
end)


-- UI Settings

Library:SetWatermarkVisibility(true)
Library:SetWatermark('lunar.vip | '..tostring(os.date("%B") .. " " .. os.date("%d") .. " " .. os.date("%Y")).." | "..game.Players.LocalPlayer.UserId)

local MenuGroup = Tabs.Settings:AddLeftGroupbox('Menu')
local MenuGroup2 = Tabs.Settings:AddRightGroupbox('More Settings')

MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightShift', NoUI = true, Text = 'Menu keybind' }) 
MenuGroup2:AddToggle('togglekeybindmenu', {
    Text = 'Keybind Menu',
    Default = false,
})

MenuGroup2:AddToggle('togglewatermark', {
    Text = 'Watermark',
    Default = false,
})


Toggles.togglekeybindmenu:OnChanged(function()
    Library.KeybindFrame.Visible = Toggles.togglekeybindmenu.Value
end)

Toggles.togglewatermark:OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.togglewatermark.Value)
end)


Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs.Settings) 
ThemeManager:ApplyToTab(Tabs.Settings)

--[[if not table.find(Utility.AllowedPlaceIDs, game.PlaceId) then 
    notify("Game not supported")
    return
end]]

local SilentTarget = nil

local userInputService, runService = game.UserInputService, game.RunService
local tweenService, textService = game.TweenService, game.TextService
local coreGui, httpService = game.CoreGui, game.HttpService
local GuiS = game:GetService("GuiService")

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local Mouse = player:GetMouse()
local CurrentCamera = workspace.CurrentCamera



runService.Heartbeat:Connect(function()
    local char = CurrentCamera:WorldToViewportPoint(player.Character[visualizer.Part].Position)
	local pos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(
		player.Character[visualizer.Part].CFrame.Position +
			(player.Character[visualizer.Part].AssemblyLinearVelocity *
				Options.VelPred.Value))

	if Toggles.VelVisuals2.Value and onScreen then
		velLine.Visible = true
		velLine.To = Vector2.new(pos.X, pos.Y)
        velLine.From = Vector2.new(char.X, char.Y)
	else
		velLine.Visible = false
	end
end)

runService.Heartbeat:Connect(function()
	local pos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(
		player.Character[visualizer.Part].CFrame.Position +
			(player.Character[visualizer.Part].AssemblyLinearVelocity *
				Options.VelPred.Value))

	if Toggles.VelVisuals.Value and onScreen then
		velDot.Visible = true
		velDot.Position = Vector2.new(pos.X, pos.Y)
	else
		velDot.Visible = false
	end
end)

local s, v3 = math.sqrt, Vector3.new;

function d(x1, x2)
    return (x2-x1);
end;

function _3d_distance(vec3, _vec3)
    return v3(d(vec3.X, _vec3.X), d(vec3.Y, _vec3.Y), d(vec3.Z, _vec3.Z));
end;

runService.Heartbeat:Connect(function()
    local hrp, hum = player.Character.HumanoidRootPart, player.Character.Humanoid
	local velocity, cFrame = hrp.Velocity, hrp.CFrame

    if Toggles.CustomVelocity.Value then
		hrp.Velocity =
			Vector3.new(Options.CustomX.Value, Options.CustomY.Value, Options.CustomZ.Value)
		runService.RenderStepped:Wait()
		hrp.Velocity = velocity
	end

    if Toggles.VelRedirect_Enabled.Value then
        local t = game.Players:FindFirstChild(Options.VelRedirect_TargetName.Value).Character

        local localPlayerRootPosition = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
        local anotherPersonRootPosition = t[hitparts.velredirect].Position
        local distance = _3d_distance(localPlayerRootPosition, anotherPersonRootPosition)

        if t then
            hrp.AssemblyLinearVelocity = distance
            runService.RenderStepped:Wait()
            hrp.AssemblyLinearVelocity = velocity
        end
	end

    if Toggles.BreakPredi.Value then 
        hrp.Velocity = velocity * 0
		runService.RenderStepped:Wait()
		hrp.Velocity = velocity
    end

    if Toggles.VelMultiply.Value then 
        hrp.Velocity = velocity *
            Vector3.new(Options.WalkM.Value, Options.JumpM.Value, Options.WalkM.Value)
        runService.RenderStepped:Wait()
        hrp.Velocity = velocity
    end
end)
local velocityDirection = false
local velocityAmount = 0
runService.Heartbeat:Connect(function()
    if Options.CustomPreset.Value == "Random" then 
        Options.CustomX:SetValue(math.random(-100, 100))
        Options.CustomY:SetValue(math.random(-100, 100))
        Options.CustomZ:SetValue(math.random(-100, 100))
    elseif Options.CustomPreset.Value == "Fluctuate" then 
        if Options.CustomX.Value >= 100 then
            velocityDirection = true
        elseif Options.CustomX.Value <= -100 then
            velocityDirection = false
        end

        Options.CustomX:SetValue(velocityAmount)
        Options.CustomY:SetValue(velocityAmount)
        Options.CustomZ:SetValue(velocityAmount)

        if velocityDirection then
            velocityAmount = velocityAmount - 1
        else
            velocityAmount = velocityAmount + 1
        end
    elseif Options.CustomPreset.Value == "Ground" then
        Options.CustomX:SetValue(0)
        Options.CustomY:SetValue(-100)
        Options.CustomZ:SetValue(0)
    elseif Options.CustomPreset.Value == "Sky" then
        Options.CustomX:SetValue(0)
        Options.CustomY:SetValue(100)
        Options.CustomZ:SetValue(0)
    end
end)

runService.Heartbeat:Connect(function()
    local ping = math.floor(game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
    Utility.ping = ping
    if Toggles.SilentAimEnable then 
        GetClosestPlayer()
    end
    if Toggles.SilentAimEnable then 
        if SilentTarget then 
            GetClosestBodyPart()
        end
    end
end)

runService.Heartbeat:Connect(function()
        if Toggles.Dot.Value and SilentTarget ~= nil then
            local char = CurrentCamera:WorldToViewportPoint(SilentTarget.Character[hitparts.silent].Position)
            local pos = workspace.CurrentCamera:WorldToViewportPoint(
                SilentTarget.Character[hitparts.silent].CFrame.Position +
                    (SilentTarget.Character[hitparts.silent].AssemblyLinearVelocity *
                        Options.Silent_Pred2.Value))
        
            silentDot.Visible = true
            silentDot.Position = Vector2.new(pos.X, pos.Y)
        else
            silentDot.Visible = false
        end

        if Toggles.Line.Value and SilentTarget ~= nil then
            local char = CurrentCamera:WorldToViewportPoint(SilentTarget.Character[hitparts.silent].Position)
            local pos = workspace.CurrentCamera:WorldToViewportPoint(
                SilentTarget.Character[hitparts.silent].CFrame.Position +
                    (SilentTarget.Character[hitparts.silent].AssemblyLinearVelocity *
                        Options.Silent_Pred2.Value))
        
            silentLine.Visible = true
            silentLine.To = Vector2.new(pos.X, pos.Y)
            silentLine.From = Vector2.new(char.X, char.Y)
        else
            silentLine.Visible = false
        end
end)



runService.Heartbeat:Connect(function()

    if advancedpred.enabled and SilentTarget ~= nil and SilentTarget then 
        if (game.Players[SilentTarget].Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 25 then
            Options.Silent_Pred2:SetValue(advancedpred.close)
        elseif (game.Players[SilentTarget].Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 90 then
            Options.Silent_Pred2:SetValue(advancedpred.mid)
        elseif (game.Players[SilentTarget].Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < math.huge then
            Options.Silent_Pred2:SetValue(advancedpred.far)
        end
    end

    if Toggles.Silent_AutoPred.Value then 
        local PingStats = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local Value = tostring(PingStats)
        local PingValue = Value:split(" ")
        local PingNumber = tonumber(PingValue[1])

        if PingNumber < 130 then
            Options.Silent_Pred2:SetValue(PingNumber / 1000 + 0.037)
        else
            Options.Silent_Pred2:SetValue(PingNumber / 1000 + 0.033)
        end
    end
end)

runService.Heartbeat:Connect(function()
	if Toggles.Silent_Resolver.Value then
		for i, Target in pairs(game.Players:GetPlayers()) do
			if Target ~= player then
				for i, Part in pairs(Target.Character:GetDescendants()) do
					if Part:IsA("BasePart") then
						Part.Velocity =
							Target.Character.Humanoid.MoveDirection * 16
						Part.AssemblyLinearVelocity =
							Target.Character.Humanoid.MoveDirection * 16
					end
				end
			end
		end
	end
end)

local Script = {Friends = {}, Drawing = {}, EspPlayers = {}}

local Client = game.Players.LocalPlayer
local Camera = game.Workspace.CurrentCamera

OnScreen = LPH_NO_VIRTUALIZE(function(Object)
    local _, screen = Camera:WorldToScreenPoint(Object.Position)
    return screen
end)

CalculateChance = LPH_NO_VIRTUALIZE(function(Percentage)
    Percentage = math.floor(Percentage)
    local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100

    return chance < Percentage / 100
end)

RayCastCheck = LPH_NO_VIRTUALIZE(function(Part, PartDescendant)
    local Character = Client.Character or Client.CharacterAdded.Wait(Client.CharacterAdded)
    local Origin = Camera.CFrame.Position

    local RayCastParams = RaycastParams.new()
    RayCastParams.FilterType = Enum.RaycastFilterType.Blacklist
    RayCastParams.FilterDescendantsInstances = {Character, Camera}

    local Result = Workspace.Raycast(Workspace, Origin, Part.Position - Origin, RayCastParams)
    
    if (Result) then
        local PartHit = Result.Instance
        local Visible = (not PartHit or Instance.new("Part").IsDescendantOf(PartHit, PartDescendant))
        
        return Visible
    end
    return false
end)

Alive = LPH_NO_VIRTUALIZE(function(Plr)
    if Plr and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and Plr.Character:FindFirstChild("Humanoid") ~= nil and Plr.Character:FindFirstChild("Head") ~= nil then
        return true
    end
    return false
end)


GetMagnitudeFromMouse = LPH_NO_VIRTUALIZE(function(Part)
    local PartPos, OnScreen = Camera:WorldToScreenPoint(Part.Position)
    if OnScreen then
        local Magnitude = (Vector2.new(PartPos.X, PartPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
        return Magnitude
    end
    return math.huge
end)

FindCrew = LPH_NO_VIRTUALIZE(function(Player)
	if Player:FindFirstChild("DataFolder") and Player.DataFolder:FindFirstChild("Information") and Player.DataFolder.Information:FindFirstChild("Crew") and Client:FindFirstChild("DataFolder") and Client.DataFolder:FindFirstChild("Information") and Client.DataFolder.Information:FindFirstChild("Crew") then
        if Client.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and Player.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and Player.DataFolder.Information:FindFirstChild("Crew").Value ~= "" and Client.DataFolder.Information:FindFirstChild("Crew").Value ~= "" then 
			return true
		end
	end
	return false
end)

GetGunName = LPH_NO_VIRTUALIZE(function(Name)
    local split = string.split(string.split(Name, "[")[2], "]")[1]
    return split
end)

GetCurrentWeaponName = LPH_NO_VIRTUALIZE(function()
    if Client.Character and Client.Character:FindFirstChildWhichIsA("Tool") then
       local Tool =  Client.Character:FindFirstChildWhichIsA("Tool")
       if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and not string.find(Tool.Name, "Phone") then
          return GetGunName(Tool.Name)
       end
    end
    return nil
end)

Alive = LPH_NO_VIRTUALIZE(function(Plr)
    if Plr and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and Plr.Character:FindFirstChild("Humanoid") ~= nil and Plr.Character:FindFirstChild("Head") ~= nil then
        return true
    end
    return false
end)

Script.Drawing.SilentCircle = Drawing.new("Circle")
Script.Drawing.SilentCircle.Color = Color3.new(1,1,1)
Script.Drawing.SilentCircle.Thickness = 1


UpdateFOV = LPH_NO_VIRTUALIZE(function()
    if (not Script.Drawing.SilentCircle) then
        return Script.Drawing.SilentCircle
    end
    
    
    Script.Drawing.SilentCircle.Visible = Toggles.Silent_FOV_Visible.Value
    Script.Drawing.SilentCircle.Color = Options.Silent_FOV_Color.Value
    Script.Drawing.SilentCircle.Filled = Toggles.Silent_FOV_Filled.Value
    Script.Drawing.SilentCircle.Transparency = Options.Silent_FOV_Trans.Value
    Script.Drawing.SilentCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiS:GetGuiInset().Y)
	Script.Drawing.SilentCircle.Radius = Options.Silent_FOV_Size.Value
end)

local cc = game:GetService("Workspace").CurrentCamera

WTS = (function(Object)
	local ObjectVector = cc:WorldToScreenPoint(Object.Position)
	return Vector2.new(ObjectVector.X, ObjectVector.Y)
end)

Filter = (function(obj)
	if (obj:IsA('BasePart')) then
		return true
	end
end)

mousePosVector2 = (function()
	return Vector2.new(mouse.X, mouse.Y) 
end)

local IsOnScreen2 = function(Object)
    local IsOnScreen = cc:WorldToScreenPoint(Object.Position)
    return IsOnScreen
end

local FilterObjs = function(Object)
    if string.find(Object.Name, "Gun") then
        return
    end
    if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
        return true
    end
end

local closestsilentbodypart = "Head"

GetClosestBodyPart = function()
    local character = SilentTarget.Character
    local ClosestDistance = 1 / 0
    local BodyPart = nil
    if (character and character:GetChildren()) then
        for _, x in next, character:GetChildren() do
            if FilterObjs(x) and IsOnScreen2(x) then
                local Distance = (WTS(x) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                    if (Distance < ClosestDistance) then
                        ClosestDistance = Distance
                        BodyPart = x
                    end
            end
        end
    end
    closestsilentbodypart = tostring(BodyPart)
end

local Players = game:GetService("Players")

GetClosestPlayer = LPH_NO_VIRTUALIZE(function()
    local Target = nil
    local Closest = math.huge
    local HitChance = CalculateChance(Options.Silent_HitChance.Value)

    if not HitChance then
        return nil
    end
    for _, v in pairs(Players:GetPlayers()) do
        if v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart") then
            if not OnScreen(v.Character.HumanoidRootPart) then 
                continue 
            end
            if Toggles.Silent_WallCheck.Value and not RayCastCheck(v.Character.HumanoidRootPart, v.Character) then 
                continue 
            end
            if Toggles.Silent_KOCHECK.Value and v.Character:FindFirstChild("BodyEffects") then
                local KoCheck 
                if game.PlaceId == 7242996350 or game.PlaceId == 12884917481 then 
                    KoCheck = v.Character.BodyEffects:FindFirstChild("KO").Value
                else
                    KoCheck = v.Character.BodyEffects:FindFirstChild("K.O").Value
                end
                local Grabbed = v.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
                if KoCheck or Grabbed then
                    continue
                end
            end
            if Toggles.Silent_CrewCheck.Value and FindCrew(v) and v.DataFolder.Information:FindFirstChild("Crew").Value == Client.DataFolder.Information:FindFirstChild("Crew").Value then
                continue
            end

            local Distance = GetMagnitudeFromMouse(v.Character.HumanoidRootPart)

            if (Distance < Closest and Script.Drawing.SilentCircle.Radius + 10 > Distance) then
                Closest = Distance
                Target = v
            end
        end
    end

    SilentTarget = Target
end)


runService.RenderStepped:Connect(function()
    UpdateFOV()
end)

task.spawn(function()
    while wait() do 
        if Toggles.Silent_Anti.Value and SilentTarget ~= nil and SilentTarget and  SilentTarget.Character:FindFirstChild("Humanoid") and SilentTarget.Character:FindFirstChild("Humanoid") == Enum.HumanoidStateType.Freefall then
            pcall(function()
                local TargetVelv5 = SilentTarget.Character[hitparts.silent and hitparts.silent]
                TargetVelv5.Velocity = Vector3.new(TargetVelv5.Velocity.X, (TargetVelv5.Velocity.Y * 0.2), TargetVelv5.Velocity.Z)
                TargetVelv5.AssemblyLinearVelocity = Vector3.new(TargetVelv5.Velocity.X, (TargetVelv5.Velocity.Y * 0.2), TargetVelv5.Velocity.Z)
            end)
        end        
    end
end)


LPH_NO_VIRTUALIZE(function()

    if not Utility.UseNewMethod then 
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall = newcclosure(function(...)
            local args = {...}
            if Toggles.SilentAimEnable.Value and 
            SilentTarget and 
            Toggles.Silent_AVB.Value == false and 
            getnamecallmethod() == "FireServer" and 
            args[2] == Utility.Method then
                if SilentTarget then
                    local targetbone
                    if Toggles.Silent_Airshot_Enabled.Value then 
                        if SilentTarget.Character.Humanoid.Jump == true then 
                            targetbone = SilentTarget.Character[hitparts.silentas]
                        else
                            targetbone = SilentTarget.Character[hitparts.silent]
                        end
                    else
                        targetbone = SilentTarget.Character[hitparts.silent]
                    end
                    if Toggles.Silent_NearestPart.Value then 
                        targetbone = SilentTarget.Character[closestsilentbodypart]
                    end
                    args[3] = targetbone.Position + targetbone.Velocity * Options.Silent_Pred2.Value
                    return old(unpack(args))
                end
            end
            return old(...)
        end)
    
        game.Players.LocalPlayer.Character.ChildAdded:Connect(function(tool)
            if tool:IsA("Tool") then 
                tool.Activated:Connect(function() 
                    if Toggles.SilentAimEnable.Value == true and 
                    Toggles.Silent_AVB.Value == true then
                        if SilentTarget then
                                local targetbone
                                if Toggles.Silent_Airshot_Enabled.Value then 
                                    if SilentTarget.Character.Humanoid.Jump == true then 
                                        targetbone = SilentTarget.Character[hitparts.silentas]
                                    else
                                        targetbone = SilentTarget.Character[hitparts.silent]
                                    end
                                else
                                    targetbone = SilentTarget.Character[hitparts.silent]
                                end
                                if Toggles.Silent_NearestPart.Value then 
                                    targetbone = SilentTarget.Character[closestsilentbodypart]
                                end
                                MainRemote:FireServer(Utility.Method, targetbone.Position + targetbone.Velocity * Options.Silent_Pred2.Value)
                        end
                    end
                end)
            end
        end)
    else
        local oldIndex = nil
        oldIndex = hookmetamethod(game, "__index", function(self, Index, Check)
            local Check = oldIndex(self, Index)
            local mouse = Mouse
            local OldHit = "hit"
            if self == mouse and (Index:lower() == OldHit) then    
                if Toggles.SilentAimEnable.Value and 
                SilentTarget and 
                Toggles.Silent_AVB.Value == false then 
                    if SilentTarget then
                        local targetbone
                        if Toggles.Silent_Airshot_Enabled.Value then 
                            if SilentTarget.Character.Humanoid.Jump == true then 
                                targetbone = SilentTarget.Character[hitparts.silentas]
                            else
                                targetbone = SilentTarget.Character[hitparts.silent]
                            end
                        else
                            targetbone = SilentTarget.Character[hitparts.silent]
                        end
                        if Toggles.Silent_NearestPart.Value then 
                            targetbone = SilentTarget.Character[closestsilentbodypart]
                        end
                        local Prediction = targetbone.CFrame + targetbone.Velocity * Options.Silent_Pred2.Value
                        return (Index:lower() == OldHit and Prediction)
                    end
                end
                return Check
            end
        
            return oldIndex(self, Index, Check)
        end)
    end

end)()

notify('lunar.vip has loaded in '..tostring(tick() - load)..'ms')

