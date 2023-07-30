--// disable error cuz i might fucked up something that makes arsenal crash sometimes lolol
for i, v in next, getconnections(game:GetService("LogService").MessageOut) do
	v:Disable() 
end

for i, v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
	v:Disable()
end


--// Settings
local Settings = {
    Aimbot = {
        Enabled = nil,
        Teamcheck = nil,
        Alivecheck = nil,
        Mode = nil,
        Stickyaim = nil,
        Alerts = nil,
        Aimpart = nil,
        Aimkey = nil,
        AirFunc = {
            Enabled = nil,
            Hitpart = nil
        },
        Distancecheck = {
            Enabled = nil,
            Value = nil
        },
        Smoothness = {
            Enabled = nil,
            SmoothnessValue = nil
        },
        Prediction = {
            Enabled = nil,
            PredValue = nil,
        },
        Fov = {
            Enabled = nil,
            Radius = nil,
            Color = nil
        },
        Shake = {
            Enabled = nil,
            ShakeValue = nil
        },
    }, 
    Blatant = {
        CFrameSpeed = {
            Enabled = nil,
            Value = nil
        },
        Fly = {
            Value = nil
        },
        MessageSpammer = {
            Enabled = nil,
            Message = nil,
            UseEmojis = nil
        },
    },
    Visuals = {
        Esp = {
            Names = {
                Enabled = nil,
                Color = nil,
                Size = nil,
                Outline = nil,
            },
            Boxes = {
                Enabled = nil,
                Thickness = nil,
                Color = nil,
                Transparency = nil
            },
            Skeleton = {
                Enabled = nil,
                Color = nil
            },
            Tracers = {
                Enabled = nil,
                Color = nil,
                Thickness = nil,
                Hitbox = nil
            },
            Misc = {
                Teamcheck = nil,
                TeamBasedColor = nil
            },
        },
        Local = {
            Crosshair = {
                Enabled = nil,
                Color = nil
            },
            Light = {
                Enabled = nil,
                Color = nil,
                Strength = nil
            },
            AspectRatio = {
                Enabled = nil,
                Value = nil
            },
            CloneChams = {
                Enabled = nil,
                Duration = nil,
                Color = nil,
                Material = nil
            },
            Nametag = {
                Enabled = nil,
                Color = nil
            },
        },
    },
}

--// Variables
local lplr = game:GetService("Players").LocalPlayer
local TweenService = game:GetService("TweenService")
local CurrentCamera = workspace.CurrentCamera
local lockedPlayer = nil
local aimbotkeybind = false 
local stickyLockedPlayer = nil
local mousemoverel = mousemoverel or (Input and Input.MouseMove)
local funny = {"unreadable code", "pasted code"}
local day = os.date(" %d", os.time())
local second_string = ", %Y."
local worldToViewportPoint = CurrentCamera.worldToViewportPoint
local mouse = lplr:GetMouse()
local UserInput = game:GetService("UserInputService")


--// get sub prefix or smth lmfao
function GetSubPrefix(str)
    local str = tostring(str):gsub(" ", "")
    local var = ""

    if #str == 2 then
        local sec = string.sub(str, #str, #str + 1)
        var = sec == "1" and "st" or sec == "2" and "nd" or sec == "3" and "rd" or "th"
    end

    return var
end


--// Library
local repo = "https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

--// Create the  main window
local Window = Library:CreateWindow({
    Title = "Universal aimbot and Esp made by Linemaster",
    Center = true,
    AutoShow = true,
})

--// Create the main tabs
local Tabs = {
    Aiming = Window:AddTab("Aiming"),
    Visuals = Window:AddTab("Visuals"),
    MiscTab = Window:AddTab("Misc"),
    UiSettings = Window:AddTab("Settings")
}

--// Sections
local AimbotTab = Tabs.Aiming:AddLeftGroupbox("Aimbot")
local EspTab = Tabs.Visuals:AddLeftGroupbox("Esp")
local LightTab = Tabs.Visuals:AddRightGroupbox("Light")
local AspectRatioTab = Tabs.Visuals:AddLeftGroupbox("Aspect Ratio")
local NameTagTab = Tabs.Visuals:AddRightGroupbox("Nametag")
local CloneChamsTab = Tabs.Visuals:AddRightGroupbox("Clone Chams")
local CrosshairTab = Tabs.Visuals:AddRightGroupbox("Crosshair")
local WorldTab = Tabs.Visuals:AddLeftGroupbox("World")
local MessageSpammer = Tabs.MiscTab:AddLeftGroupbox("Chat Spammer")
local FakeAnimations = Tabs.MiscTab:AddLeftGroupbox("Fake Animations")
local CFrameSpeedTab = Tabs.MiscTab:AddRightGroupbox("CFrame Speed")
local FlyTab = Tabs.MiscTab:AddRightGroupbox("Fly")
local MenuGroup = Tabs.UiSettings:AddLeftGroupbox("Config")

--// Toggles and shit
AimbotTab:AddToggle("AimbotEnabledFunny", {
    Text = "Enabled",
    Default = false,
    Tooltip = "Aimbot Enabled",
})

Toggles.AimbotEnabledFunny:OnChanged(function()
    Settings.Aimbot.Enabled = Toggles.AimbotEnabledFunny.Value
end)

AimbotTab:AddToggle("AimbotStickyAimFunny", {
    Text = "Sticky Aim",
    Default = false,
    Tooltip = "Sticky Aim Enabled",
})

Toggles.AimbotStickyAimFunny:OnChanged(function()
    Settings.Aimbot.Stickyaim = Toggles.AimbotStickyAimFunny.Value
end)

Toggles.AimbotStickyAimFunny:AddKeyPicker("AimbotKeyPickerFunny", {
    Default = "None",
    SyncToggleState = false,
    Mode = "Toggle",
    Text = "Aimbot",
    NoUI = false,
})

Options.AimbotKeyPickerFunny:OnClick(function()
    if Settings.Aimbot.Enabled and Settings.Aimbot.Stickyaim then
        aimbotkeybind = not aimbotkeybind

        if aimbotkeybind then
            stickyLockedPlayer  = aimbotGetClosestPlayer()

            if stickyLockedPlayer  and Settings.Aimbot.Alerts then
                Library:Notify("Locked onto: " .. tostring(stickyLockedPlayer.Character.Humanoid.DisplayName))
            end
        elseif not aimbotkeybind then
            if stickyLockedPlayer  and Settings.Aimbot.Alerts then
                Library:Notify("Unlocked")
            end
            stickyLockedPlayer  = nil
        end
    end
end)

AimbotTab:AddToggle("AimbotTeamcheckFunny", {
    Text = "Teamcheck",
    Default = false,
    Tooltip = "Teamcheck Enabled",
})

Toggles.AimbotTeamcheckFunny:OnChanged(function()
    Settings.Aimbot.Teamcheck = Toggles.AimbotTeamcheckFunny.Value
end)

AimbotTab:AddToggle("AimbotAlivecheckFunny", {
    Text = "Alivecheck",
    Default = false,
    Tooltip = "Alivecheck Enabled",
})

Toggles.AimbotAlivecheckFunny:OnChanged(function()
    Settings.Aimbot.Alivecheck = Toggles.AimbotAlivecheckFunny.Value
end)

AimbotTab:AddToggle("AimbotDistancecheckToggleFunny", {
    Text = "Distance Check",
    Default = false,
    Tooltip = "Distance Check Enabled",
})

Toggles.AimbotDistancecheckToggleFunny:OnChanged(function()
    Settings.Aimbot.Distancecheck.Enabled = Toggles.AimbotDistancecheckToggleFunny.Value
end)

AimbotTab:AddSlider("AimbotDistancecheckSliderFunny", {
    Text = "Distance",
    Default = 100,
    Min = 10,
    Max = 10000,
    Rounding = 1,
    Compact = false,
})

Options.AimbotDistancecheckSliderFunny:OnChanged(function()
    Settings.Aimbot.Distancecheck.Value = Options.AimbotDistancecheckSliderFunny.Value
end)

AimbotTab:AddToggle("AimbotAlertsToggleFunny", {
    Text = "Alerts",
    Default = false,
    Tooltip = "Alerts Enabled",
})

Toggles.AimbotAlertsToggleFunny:OnChanged(function()
    Settings.Aimbot.Alerts = Toggles.AimbotAlertsToggleFunny.Value
end)


AimbotTab:AddDropdown("ModeCheckThingYk", {
    Values = {"First Person", "Third Person"},
    Default = 1,
    Multi = false,
    Text = "Mode",
})

Options.ModeCheckThingYk:OnChanged(function()
    Settings.Aimbot.Mode = Options.ModeCheckThingYk.Value
end)

AimbotTab:AddDropdown("PartToAimOnFunnyHaha", {
    Values = {"Head", "HumanoidRootPart"},
    Default = 1,
    Multi = false,
    Text = "AimPart",
})

Options.PartToAimOnFunnyHaha:OnChanged(function()
    Settings.Aimbot.Aimpart = Options.PartToAimOnFunnyHaha.Value
end)

AimbotTab:AddToggle("AimbotAirshotFuncEnabled", {
    Text = "Airshot Func",
    Default = false,
    Tooltip = "Airshot Func Enabled",
})

Toggles.AimbotAirshotFuncEnabled:OnChanged(function()
    Settings.Aimbot.AirFunc.Enabled = Toggles.AimbotAirshotFuncEnabled.Value
end)


AimbotTab:AddDropdown("PartToAimOnFunnyHahaAirshotFunc", {
    Values = {"RightFoot", "LowerTorso"},
    Default = 1,
    Multi = false,
    Text = "AirshotFunc Hitpart",
})

Options.PartToAimOnFunnyHahaAirshotFunc:OnChanged(function()
    Settings.Aimbot.AirFunc.Hitpart = Options.PartToAimOnFunnyHahaAirshotFunc.Value
end)


AimbotTab:AddDropdown("KeytoAimDropdown", {
    Values = {"RMB", "LMB"},
    Default = 2,
    Multi = false,
    Text = "Key",
})

Options.KeytoAimDropdown:OnChanged(function()
    Settings.Aimbot.Aimkey = Options.KeytoAimDropdown.Value
end)

AimbotTab:AddToggle("PredToggleFunny", {
    Text = "Use Prediction",
    Default = false,
    Tooltip = "Prediction Enabled",
})

Toggles.PredToggleFunny:OnChanged(function()
    Settings.Aimbot.Prediction.Enabled = Toggles.PredToggleFunny.Value
end)

AimbotTab:AddInput("PredictionValueTextBoxFunny", {
    Default = "0.135",
    Numeric = true,
    Finished = false,
    Text = "Prediction",
    Tooltip = "Prediction to Use",
    Placeholder = "Example = 0.135",
})

Options.PredictionValueTextBoxFunny:OnChanged(function()
    Settings.Aimbot.Prediction.PredValue = Options.PredictionValueTextBoxFunny.Value
end)

AimbotTab:AddToggle("ShakeEnabledOwO", {
    Text = "Use Shake",
    Default = false,
    Tooltip = "Shake Enabled",
})

Toggles.ShakeEnabledOwO:OnChanged(function()
    Settings.Aimbot.Shake.Enabled = Toggles.ShakeEnabledOwO.Value
end)

AimbotTab:AddSlider("ShakeValueOwO", {
    Text = "Shake Value",
    Default = 0.1,
    Min = 0.1,
    Max = 10,
    Rounding = 1,
    Compact = false,
})

Options.ShakeValueOwO:OnChanged(function()
    Settings.Aimbot.Shake.ShakeValue = Options.ShakeValueOwO.Value
end)


AimbotTab:AddToggle("UseFovAimbotFunny", {
    Text = "Use fov",
    Default = false,
    Tooltip = "Fov Enabled",
})

Toggles.UseFovAimbotFunny:OnChanged(function()
    Settings.Aimbot.Fov.Enabled = Toggles.UseFovAimbotFunny.Value
end)

Toggles.UseFovAimbotFunny:AddColorPicker("FovCircleColorFunny", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Aimbot FOV Color"
})

Options.FovCircleColorFunny:OnChanged(function()
    Settings.Aimbot.Fov.Color = Options.FovCircleColorFunny.Value
end)

AimbotTab:AddSlider("FovCircleRadius", {
    Text = "Radius",
    Default = 100,
    Min = 100,
    Max = 800,
    Rounding = 1,
    Compact = false,
})

Options.FovCircleRadius:OnChanged(function()
    Settings.Aimbot.Fov.Radius = Options.FovCircleRadius.Value
end)

AimbotTab:AddToggle("ToggleSmoothnessNoWay", {
    Text = "Smoothing Enabled",
    Default = false,
    Tooltip = "Smoothing Enabled",
})

Toggles.ToggleSmoothnessNoWay:OnChanged(function()
    Settings.Aimbot.Smoothness.Enabled = Toggles.ToggleSmoothnessNoWay.Value
end)


AimbotTab:AddSlider("SmoothnessValueAimbotOwO", {
    Text = "Smoothness",
    Default = 0,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Compact = false,
})

Options.SmoothnessValueAimbotOwO:OnChanged(function()
    Settings.Aimbot.Smoothness.SmoothnessValue = Options.SmoothnessValueAimbotOwO.Value
end)

EspTab:AddToggle("NamesEnableToggleNoWay", {
    Text = "Names",
    Default = false,
    Tooltip = "Names Enabled",
})

Toggles.NamesEnableToggleNoWay:OnChanged(function()
    Settings.Visuals.Esp.Names.Enabled = Toggles.NamesEnableToggleNoWay.Value
end)

Toggles.NamesEnableToggleNoWay:AddColorPicker("NamesEnableColorPickerNoWay", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Names Color"
})

Options.NamesEnableColorPickerNoWay:OnChanged(function()
    Settings.Visuals.Esp.Names.Color = Options.NamesEnableColorPickerNoWay.Value
end)

EspTab:AddSlider("NamesSizeColorOwO", {
    Text = "Names Size",
    Default = 8,
    Min = 4,
    Max = 20,
    Rounding = 2,
    Compact = false,
})

Options.NamesSizeColorOwO:OnChanged(function()
    Settings.Visuals.Esp.Names.Size = Options.NamesSizeColorOwO.Value
end)

EspTab:AddToggle("NamesOutlineEnabledOwO", {
    Text = "Names Outline",
    Default = false,
    Tooltip = "Names Outline Enabled",
})

Toggles.NamesOutlineEnabledOwO:OnChanged(function()
    Settings.Visuals.Esp.Names.Outline = Toggles.NamesOutlineEnabledOwO.Value
end)

EspTab:AddToggle("BoxesEnableToggleNoWay", {
    Text = "Boxes",
    Default = false,
    Tooltip = "Boxes Enabled",
})

Toggles.BoxesEnableToggleNoWay:OnChanged(function()
    Settings.Visuals.Esp.Boxes.Enabled = Toggles.BoxesEnableToggleNoWay.Value
end)

Toggles.BoxesEnableToggleNoWay:AddColorPicker("BoxesMainColor", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Boxes Color"
})

Options.BoxesMainColor:OnChanged(function()
    Settings.Visuals.Esp.Boxes.Color = Options.BoxesMainColor.Value
end)

EspTab:AddSlider("BoxesThicknessOwO", {
    Text = "Boxes Thickness",
    Default = 2,
    Min = 0.5,
    Max = 5,
    Rounding = 2,
    Compact = false,
})

Options.BoxesThicknessOwO:OnChanged(function()
    Settings.Visuals.Esp.Boxes.Thickness = Options.BoxesThicknessOwO.Value
end)

EspTab:AddSlider("BoxesTransparencyOwO", {
    Text = "Boxes Transparency",
    Default = 1,
    Min = 0.1,
    Max = 1,
    Rounding = 2,
    Compact = false,
})

Options.BoxesTransparencyOwO:OnChanged(function()
    Settings.Visuals.Esp.Boxes.Transparency = Options.BoxesTransparencyOwO.Value
end)


EspTab:AddToggle("SkeletonEspToggle", {
    Text = "Skeletons",
    Default = false,
    Tooltip = "Skeletons Enabled",
})

Toggles.SkeletonEspToggle:OnChanged(function()
    Settings.Visuals.Esp.Skeleton.Enabled = Toggles.SkeletonEspToggle.Value
end)

Toggles.SkeletonEspToggle:AddColorPicker("SkeletonsColorNoWay", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Skeletons Color"
})

Options.SkeletonsColorNoWay:OnChanged(function()
    Settings.Visuals.Esp.Skeleton.Color = Options.SkeletonsColorNoWay.Value
end)

EspTab:AddToggle("TracersToggleOwO", {
    Text = "Tracers",
    Default = false,
    Tooltip = "Tracers Enabled",
})

Toggles.TracersToggleOwO:OnChanged(function()
    Settings.Visuals.Esp.Tracers.Enabled = Toggles.TracersToggleOwO.Value
end)

Toggles.TracersToggleOwO:AddColorPicker("TracersColorNoWay", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Tracers Color"
})

Options.TracersColorNoWay:OnChanged(function()
    Settings.Visuals.Esp.Tracers.Color = Options.TracersColorNoWay.Value
end)

EspTab:AddDropdown("TracersHitPartNoWay", {
    Values = {"HumanoidRootPart", "Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"},
    Default = 1,
    Multi = false,
    Text = "Tracers Hitbox",
    Tooltip = "On what part the tracers should go on",
})

Options.TracersHitPartNoWay:OnChanged(function()
    Settings.Visuals.Esp.Tracers.Hitbox = Options.TracersHitPartNoWay.Value
end)


EspTab:AddSlider("TracersThicknessSliderNoWay", {
    Text = "Tracers Thickness",
    Default = 2,
    Min = 0.5,
    Max = 5,
    Rounding = 2,
    Compact = false,
})

Options.TracersThicknessSliderNoWay:OnChanged(function()
    Settings.Visuals.Esp.Tracers.Thickness = Options.TracersThicknessSliderNoWay.Value
end)

EspTab:AddToggle("MiscTeamcheckToggle", {
    Text = "Teamcheck",
    Default = false,
    Tooltip = "Teamcheck Enabled",
})

Toggles.MiscTeamcheckToggle:OnChanged(function()
    Settings.Visuals.Esp.Misc.Teamcheck = Toggles.MiscTeamcheckToggle.Value
end)

EspTab:AddToggle("MiscTeamBasedColor", {
    Text = "Team Based Colors",
    Default = false,
    Tooltip = "Team Based Colors Enabled",
})

Toggles.MiscTeamBasedColor:OnChanged(function()
    Settings.Visuals.Esp.Misc.TeamBasedColor = Toggles.MiscTeamBasedColor.Value
end)

LightTab:AddToggle("LightHeadToggleFunny", {
    Text = "Light",
    Default = false,
    Tooltip = "Light Enabled",
})

Toggles.LightHeadToggleFunny:OnChanged(function()
    Settings.Visuals.Local.Light.Enabled = Toggles.LightHeadToggleFunny.Value
end)

Toggles.LightHeadToggleFunny:AddColorPicker("LightHeadFunnyColorPicker", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Light Color"
})

Options.LightHeadFunnyColorPicker:OnChanged(function()
    Settings.Visuals.Local.Light.Color = Options.LightHeadFunnyColorPicker.Value
end)

LightTab:AddSlider("LightHeadSliderFunny", {
    Text = "Strength",
    Default = 1,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Compact = false,
})

Options.LightHeadSliderFunny:OnChanged(function()
    Settings.Visuals.Local.Light.Strength = Options.LightHeadSliderFunny.Value
end)

AspectRatioTab:AddToggle("AspectRaioEnabled", {
    Text = "Enabled",
    Default = false,
    Tooltip = "Aspect Ratio Enabled",
})

Toggles.AspectRaioEnabled:OnChanged(function()
    Settings.Visuals.Local.AspectRatio.Enabled = Toggles.AspectRaioEnabled.Value
end)

AspectRatioTab:AddSlider("AspectRatioValue", {
    Text = "Value",
    Default = 1,
    Min = 0.1,
    Max = 1,
    Rounding = 2,
    Compact = false,
})


Options.AspectRatioValue:OnChanged(function()
    Settings.Visuals.Local.AspectRatio.Value = Options.AspectRatioValue.Value
end)

NameTagTab:AddToggle("NametagEnabledFunnyHaha", {
    Text = "Enabled",
    Default = false,
    Tooltip = "Nametag Enabled",
})

Toggles.NametagEnabledFunnyHaha:OnChanged(function()
    Settings.Visuals.Local.Nametag.Enabled = Toggles.NametagEnabledFunnyHaha.Value
end)

Toggles.NametagEnabledFunnyHaha:AddColorPicker("NametagColorPickerFunny", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Nametag Color"
})

Options.NametagColorPickerFunny:OnChanged(function()
    Settings.Visuals.Local.Nametag.Color = Options.NametagColorPickerFunny.Value
end)

CloneChamsTab:AddToggle("CloneChamsEnabled", {
    Text = "Clone Chams",
    Default = false,
    Tooltip = "Clone Chams Enabled",
})

Toggles.CloneChamsEnabled:OnChanged(function()
    Settings.Visuals.Local.CloneChams.Enabled = Toggles.CloneChamsEnabled.Value
end)

Toggles.CloneChamsEnabled:AddColorPicker("CloneChamsColor", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Clone Chams Color"
})

Options.CloneChamsColor:OnChanged(function()
    Settings.Visuals.Local.CloneChams.Color = Options.CloneChamsColor.Value
end)

local function getEnumMaterial(materialString)
    local materialMap = {
        ["Neon"] = Enum.Material.Neon,
        ["ForceField"] = Enum.Material.ForceField,
        ["Plastic"] = Enum.Material.Plastic,
    }
    return materialMap[materialString] or Enum.Material.Neon
end

task.spawn(function()
    while true do
        wait()
        if Settings.Visuals.Local.CloneChams.Enabled then
            repeat
                lplr.Character.Archivable = true
                local Clone = lplr.Character:Clone()
                for _, Obj in next, Clone:GetDescendants() do
                    if Obj.Name == "HumanoidRootPart" or Obj:IsA("Humanoid") or Obj:IsA("LocalScript") or Obj:IsA("Script") or Obj:IsA("Decal") then
                        Obj:Destroy()
                    elseif Obj:IsA("BasePart") or Obj:IsA("MeshPart") or Obj:IsA("Part") then
                        if Obj.Transparency == 1 then
                            Obj:Destroy()
                        else
                            Obj.CanCollide = false
                            Obj.Anchored = true
                            Obj.Material = getEnumMaterial(Settings.Visuals.Local.CloneChams.Material)

                            Obj.Color = Settings.Visuals.Local.CloneChams.Color
                            Obj.Transparency = 0
                            Obj.Size = Obj.Size + Vector3.new(0.03, 0.03, 0.03)
                        end
                    end
                end

                Clone.Parent = workspace
                wait(Settings.Visuals.Local.CloneChams.Duration)
                Clone:Destroy()
            until not Settings.Visuals.Local.CloneChams.Enabled
        end
    end
end)

CloneChamsTab:AddSlider("DurationSliderWHAT", {
    Text = "Duration",
    Default = 0.1,
    Min = 0.1,
    Max = 3,
    Rounding = 2,
    Compact = false,
})

Options.DurationSliderWHAT:OnChanged(function()
    Settings.Visuals.Local.CloneChams.Duration = Options.DurationSliderWHAT.Value
end)

CloneChamsTab:AddDropdown("CloneChamsMaterial", {
    Values = {"Neon", "ForceField", "Plastic"},
    Default = 2,
    Multi = false,
    Text = "Clone Chams Material",
    Tooltip = "Clone Chams Material",
})

Options.CloneChamsMaterial:OnChanged(function()
    Settings.Visuals.Local.CloneChams.Material = Options.CloneChamsMaterial.Value
end)


--// draw the crosshair
local Crosshair1 = Drawing.new("Line")
Crosshair1.Thickness = 2
Crosshair1.Color = Color3.fromRGB(255, 255, 255)
Crosshair1.From = Vector2.new(CurrentCamera.ViewportSize.X / 2 - 10, CurrentCamera.ViewportSize.Y / 2)
Crosshair1.To = Vector2.new(CurrentCamera.ViewportSize.X / 2 + 10, CurrentCamera.ViewportSize.Y / 2)

local Crosshair2 = Drawing.new("Line")
Crosshair2.Thickness = 2
Crosshair2.Color = Color3.fromRGB(255, 255, 255)
Crosshair2.From = Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2 - 10)
Crosshair2.To = Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y / 2 + 10)

Crosshair1.Visible = false
Crosshair2.Visible = false

CrosshairTab:AddToggle("CrosshairEnabledFunny", {
    Text = "Enabled",
    Default = false,
    Tooltip = "Crosshair Enabled",
})

Toggles.CrosshairEnabledFunny:OnChanged(function()
    Settings.Visuals.Local.Crosshair.Enabled = Toggles.CrosshairEnabledFunny.Value
end)

Toggles.CrosshairEnabledFunny:AddColorPicker("CrosshairColorFunny", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "CrosshairColor"
})

Options.CrosshairColorFunny:OnChanged(function()
    Settings.Visuals.Local.Crosshair.Color = Options.CrosshairColorFunny.Value
end)

WorldTab:AddLabel("Ambient"):AddColorPicker("AmbientColorPicker", {
    Default = Color3.fromRGB(0, 0, 0),
    Title = "Ambient",
})

Options.AmbientColorPicker:OnChanged(function()
    if AmbientRainbowMode == true then
    else
        game.Lighting.Ambient = Options.AmbientColorPicker.Value
    end
end)

WorldTab:AddToggle("RainbowAmbient", {
    Text = "Rainbow Ambient",
    Default = false,
    Tooltip = "Rainbow Ambient Enabled",
})

Toggles.RainbowAmbient:OnChanged(function()
    AmbientRainbowMode = Toggles.RainbowAmbient.Value

    if Toggles.RainbowAmbient.Value then
        while Toggles.RainbowAmbient.Value do
            wait()
            game:GetService("Lighting").Ambient = Color3.new(255 / 255, 0 / 255, 0 / 255)

            for i = 0, 255, 10 do
                wait()
                game:GetService("Lighting").Ambient = Color3.new(255 / 255, i / 255, 0 / 255)
            end

            for i = 255, 0, -10 do
                wait()
                game:GetService("Lighting").Ambient = Color3.new(i / 255, 255 / 255, 0 / 255)
            end

            for i = 0, 255, 10 do
                wait()
                game:GetService("Lighting").Ambient = Color3.new(0 / 255, 255 / 255, i / 255)
            end

            for i = 255, 0, -10 do
                wait()
                game:GetService("Lighting").Ambient = Color3.new(0 / 255, i / 255, 255 / 255)
            end

            for i = 0, 255, 10 do
                wait()
                game:GetService("Lighting").Ambient = Color3.new(i / 255, 0 / 255, 255 / 255)
            end

            for i = 255, 0, -10 do
                wait()
                game:GetService("Lighting").Ambient = Color3.new(255 / 255, 0 / 255, i / 255)
            end

            if Toggles.RainbowAmbient.Value == false then break end
        end
    end
end)

local AmbientReset = WorldTab:AddButton("Reset to Default", function()
    Options.AmbientColorPicker:SetValueRGB(Color3.fromRGB(0, 0, 0))
end)

Options.AmbientColorPicker:SetValueRGB(Color3.fromRGB(0, 0, 0))

WorldTab:AddLabel("Outdoor Ambient"):AddColorPicker("OutdoorAmbientColor", {
    Default = Color3.fromRGB(152, 152, 146),
    Title = "Outdoor Ambient",
})

Options.OutdoorAmbientColor:OnChanged(function()
    if OutdoorAmbientRainbowMode then
    else
        game.Lighting.OutdoorAmbient = Options.OutdoorAmbientColor.Value
    end
end)

WorldTab:AddToggle("RainbowOutdoorAmbient", {
    Text = "Rainbow Outdoor",
    Default = false,
    Tooltip = "Rainbow Outdoor Ambient Enabled",
})

Toggles.RainbowOutdoorAmbient:OnChanged(function()
    OutdoorAmbientRainbowMode = Toggles.RainbowOutdoorAmbient.Value

    if Toggles.RainbowOutdoorAmbient.Value then
        while Toggles.RainbowOutdoorAmbient.Value do
            wait()
            game:GetService("Lighting").OutdoorAmbient = Color3.new(255 / 255, 0 / 255, 0 / 255)

            for i = 0, 255, 10 do
                wait()
                game:GetService("Lighting").OutdoorAmbient = Color3.new(255 / 255, i / 255, 0 / 255)
            end

            for i = 255, 0, -10 do
                wait()
                game:GetService("Lighting").OutdoorAmbient = Color3.new(i / 255, 255 / 255, 0 / 255)
            end

            for i = 0, 255, 10 do
                wait()
                game:GetService("Lighting").OutdoorAmbient = Color3.new(0 / 255, 255 / 255, i / 255)
            end

            for i = 255, 0, -10 do
                wait()
                game:GetService("Lighting").OutdoorAmbient = Color3.new(0 / 255, i / 255, 255 / 255)
            end

            for i = 0, 255, 10 do
                wait()
                game:GetService("Lighting").OutdoorAmbient = Color3.new(i / 255, 0 / 255, 255 / 255)
            end

            for i = 255, 0, -10 do
                wait()
                game:GetService("Lighting").OutdoorAmbient = Color3.new(255 / 255, 0 / 255, i / 255)
            end

            if Toggles.RainbowOutdoorAmbient.Value == false then break end
        end
    end
end)

local OutdoorAmbientReset = WorldTab:AddButton("Reset to Default", function()
    Options.OutdoorAmbientColor:SetValueRGB(Color3.fromRGB(152, 152, 146))
end)

Options.OutdoorAmbientColor:SetValueRGB(Color3.fromRGB(152, 152, 146))

WorldTab:AddSlider("FogEndSlider", {
    Text = "Fog End",
    Default = 500,
    Min = 1,
    Max = 500,
    Rounding = 1,
    Compact = false,
})

Options.FogEndSlider:OnChanged(function()
    game.Lighting.FogEnd = Options.FogEndSlider.Value
end)

WorldTab:AddLabel("Fog Color"):AddColorPicker("FogColorColorPicker", {
    Default = Color3.fromRGB(100, 87, 72),
    Title = "Fog Color",
})

Options.FogColorColorPicker:OnChanged(function()
    if FogRainbowMode then
    else
        game.Lighting.FogColor = Options.FogColorColorPicker.Value
    end
end)

WorldTab:AddToggle("RainbowFogColor", {
    Text = "Rainbow Outdoor",
    Default = false,
    Tooltip = "Rainbow Outdoor Ambient Enabled",
})

Toggles.RainbowFogColor:OnChanged(function()
    FogRainbowMode = Toggles.RainbowFogColor.Value

    if Toggles.RainbowFogColor.Value then
        while Toggles.RainbowFogColor.Value do
            wait()
            game:GetService("Lighting").FogColor = Color3.new(255 / 255, 0 / 255, 0 / 255)

            for i = 0, 255, 10 do
                wait()
                game:GetService("Lighting").FogColor = Color3.new(255 / 255, i / 255, 0 / 255)
            end

            for i = 255, 0, -10 do
                wait()
                game:GetService("Lighting").FogColor = Color3.new(i / 255, 255 / 255, 0 / 255)
            end

            for i = 0, 255, 10 do
                wait()
                game:GetService("Lighting").FogColor = Color3.new(0 / 255, 255 / 255, i / 255)
            end

            for i = 255, 0, -10 do
                wait()
                game:GetService("Lighting").FogColor = Color3.new(0 / 255, i / 255, 255 / 255)
            end

            for i = 0, 255, 10 do
                wait()
                game:GetService("Lighting").FogColor = Color3.new(i / 255, 0 / 255, 255 / 255)
            end

            for i = 255, 0, -10 do
                wait()
                game:GetService("Lighting").FogColor = Color3.new(255 / 255, 0 / 255, i / 255)
            end

            if Toggles.RainbowFogColor.Value == false then break end
        end
    end
end)

local ResetFogEnd = WorldTab:AddButton("Reset to Default", function()
    Options.FogEndSlider:SetValue(500)
    Options.FogColorColorPicker:SetValueRGB(Color3.fromRGB(100, 87, 72))
end)

WorldTab:AddToggle("GlobalShadowsEnabled", {
    Text = "Global Shadows",
    Default = true,
    Tooltip = "Global Shadows Enabled",
})

Toggles.GlobalShadowsEnabled:OnChanged(function()
    game.Lighting.GlobalShadows = Toggles.GlobalShadowsEnabled.Value
end)

WorldTab:AddSlider("Saturation", {
    Text = "Saturation",
    Default = 0,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,
})

Options.Saturation:OnChanged(function()
    local ColorCorrection = game.Lighting:FindFirstChildOfClass("ColorCorrectionEffect") or Instance.new("ColorCorrectionEffect")
    ColorCorrection.Saturation = Options.Saturation.Value
end)

WorldTab:AddSlider("Contrast", {
    Text = "Contrast",
    Default = 0.1,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,
})

Options.Contrast:OnChanged(function()
    local ColorCorrection = game.Lighting:FindFirstChildOfClass("ColorCorrectionEffect") or Instance.new("ColorCorrectionEffect")
    ColorCorrection.Contrast = Options.Contrast.Value
end)

MessageSpammer:AddToggle("EnableMessageSpammerLo", {
    Text = "Enabled",
    Default = false,
    Tooltip = "Message Spammer Enabled",
})

Toggles.EnableMessageSpammerLo:OnChanged(function()
    Settings.Blatant.MessageSpammer.Enabled = Toggles.EnableMessageSpammerLo.Value
end)

MessageSpammer:AddToggle("EnableMessageSpammerEmojisLo", {
    Text = "Use Emojis",
    Default = false,
    Tooltip = "Use Emojis Enabled",
})

Toggles.EnableMessageSpammerEmojisLo:OnChanged(function()
    Settings.Blatant.MessageSpammer.UseEmojis = Toggles.EnableMessageSpammerEmojisLo.Value
end)

MessageSpammer:AddInput("MessageSpammerMessagetoSpamLo", {
    Default = "",
    Numeric = false,
    Finished = false,
    Text = "Message",
    Tooltip = "Message to Spam",
    Placeholder = "Example1, Example2",
})

Options.MessageSpammerMessagetoSpamLo:OnChanged(function()
    Settings.Blatant.MessageSpammer.Message = Options.MessageSpammerMessagetoSpamLo.Value
end)

FakeAnimations:AddDropdown("RunAnimations", {
    Values = {"None", "Rthro", "Werewolf", "Zombie", "Ninja", "Toy", "Superhero", "OldSchool", "Cartoony", "Stylish", "Vampire"},
    Default = 1,
    Multi = false,
    Text = "Run",
})

Options.RunAnimations:OnChanged(function()
    ChangeAnimHook = game:GetService("RunService").Stepped:Connect(function()
        if Options.RunAnimations.Value == "None" then
        elseif Options.RunAnimations.Value == "Rthro" then
            lplr.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2510198475"
        elseif Options.RunAnimations.Value == "Werewolf" then
            lplr.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
        elseif Options.RunAnimations.Value == "Zombie" then
            lplr.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
        elseif Options.RunAnimations.Value == "Ninja" then
            lplr.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
        elseif Options.RunAnimations.Value == "Toy" then
            lplr.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
        elseif Options.RunAnimations.Value == "Superhero" then
            lplr.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
        elseif Options.RunAnimations.Value == "OldSchool" then
            lplr.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=5319844329"
        elseif Options.RunAnimations.Value == "Cartoony" then
            lplr.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
        elseif Options.RunAnimations.Value == "Stylish" then
            lplr.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
        elseif Options.RunAnimations.Value == "Vampire" then
            lplr.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
        end
    end)
end)

FakeAnimations:AddDropdown("JumpAnimations", {
    Values = {"None", "Rthro", "Werewolf", "Zombie", "Ninja", "Toy", "Superhero", "OldSchool", "Cartoony", "Stylish", "Vampire"},
    Default = 1,
    Multi = false,
    Text = "Jump",
})

Options.JumpAnimations:OnChanged(function()
    ChangeJumpAnimHook = game:GetService("RunService").Stepped:Connect(function()
        if Options.JumpAnimations.Value == "None" then
        elseif Options.JumpAnimations.Value == "Rthro" then
            lplr.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
        elseif Options.JumpAnimations.Value == "Werewolf" then
            lplr.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
        elseif Options.JumpAnimations.Value == "Zombie" then
            lplr.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
        elseif Options.JumpAnimations.Value == "Ninja" then
            lplr.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
        elseif Options.JumpAnimations.Value == "Toy" then
            lplr.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
        elseif Options.JumpAnimations.Value == "Superhero" then
            lplr.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
        elseif Options.JumpAnimations.Value == "OldSchool" then
            lplr.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=5319841935"
        elseif Options.JumpAnimations.Value == "Cartoony" then
            lplr.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
        elseif Options.JumpAnimations.Value == "Stylish" then
            lplr.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
        elseif Options.JumpAnimations.Value == "Vampire" then
            lplr.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
        end
    end)
end)

FakeAnimations:AddDropdown("FallAnimations", {
    Values = {"None", "Rthro", "Werewolf", "Zombie", "Ninja", "Toy", "Superhero", "OldSchool", "Cartoony", "Stylish", "Vampire"},
    Default = 1,
    Multi = false,
    Text = "Fall",
})

Options.FallAnimations:OnChanged(function()
    ChangeFallAnimHook = game:GetService("RunService").Stepped:Connect(function()
        if Options.FallAnimations.Value == "None" then
        elseif Options.FallAnimations.Value == "Rthro" then
            lplr.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2510195892"
        elseif Options.FallAnimations.Value == "Werewolf" then
            lplr.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
        elseif Options.FallAnimations.Value == "Zombie" then
            lplr.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
        elseif Options.FallAnimations.Value == "Ninja" then
            lplr.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
        elseif Options.FallAnimations.Value == "Toy" then
            lplr.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
        elseif Options.FallAnimations.Value == "Superhero" then
            lplr.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
        elseif Options.FallAnimations.Value == "OldSchool" then
            lplr.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=5319839762"
        elseif Options.FallAnimations.Value == "Cartoony" then
            lplr.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
        elseif Options.FallAnimations.Value == "Stylish" then
            lplr.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
        elseif Options.FallAnimations.Value == "Vampire" then
            lplr.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
        end
    end)
end)

CFrameSpeedTab:AddToggle("CFrameSpeedToggleFunny", {
    Text = "Enabled",
    Default = false,
    Tooltip = "Enable CFrame Speed",
})

Toggles.CFrameSpeedToggleFunny:OnChanged(function()
    Settings.Blatant.CFrameSpeed.Enabled = Toggles.CFrameSpeedToggleFunny.Value
end)

Toggles.CFrameSpeedToggleFunny:AddKeyPicker("CFrameSpeedKeyBind", {
    Default = "None",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "CFrame",
    NoUI = false,
})

CFrameSpeedTab:AddSlider("CFrameSpeedValue", {
    Text = "CFrame Speed Amount",
    Default = 1,
    Min = 1,
    Max = 5,
    Rounding = 2,
    Compact = false,
})

Options.CFrameSpeedValue:OnChanged(function()
    Settings.Blatant.CFrameSpeed.Value = Options.CFrameSpeedValue.Value
end)

FlyTab:AddToggle("FlyToggleFunny", {
    Text = "Enabled",
    Default = false,
    Tooltip = "Fly Enabled",
})

Toggles.FlyToggleFunny:OnChanged(function()
    if Toggles.FlyToggleFunny.Value == true then
        FlyLoop = game:GetService("RunService").RenderStepped:Connect(function()
            spawn(function()
                pcall(function()
                    local speed = Settings.Blatant.Fly.Value
                    local velocity = Vector3.new(0, 0, 0)
                    local UserInputService = game:GetService("UserInputService")
                    local flyUpwards = UserInputService:IsKeyDown(Enum.KeyCode.Space)
                    local flyDownwards = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) 
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        velocity = velocity + (CurrentCamera.CoordinateFrame.lookVector * speed)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        velocity = velocity + (CurrentCamera.CoordinateFrame.rightVector * -speed)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        velocity = velocity + (CurrentCamera.CoordinateFrame.lookVector * -speed)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        velocity = velocity + (CurrentCamera.CoordinateFrame.rightVector * speed)
                    end

                    if flyUpwards then
                        velocity = velocity + (Vector3.new(0, 1, 0) * speed)
                    end
                    if flyDownwards then
                        velocity = velocity + (Vector3.new(0, -1, 0) * speed)
                    end
                    lplr.Character.HumanoidRootPart.Velocity = velocity
                    lplr.Character.Humanoid:ChangeState("Freefall")
                end)
            end)
        end)
    elseif Toggles.FlyToggleFunny.Value == false and FlyLoop then
        FlyLoop:Disconnect()
        lplr.Character.Humanoid:ChangeState("Landing")
    end
end)

Toggles.FlyToggleFunny:AddKeyPicker("FlyKeyBind", {
    Default = "None",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Fly",
    NoUI = false,
})

FlyTab:AddSlider("FlyValue", {
    Text =  "Fly Amount",
    Default = 1,
    Min = 1,
    Max = 5,
    Rounding = 2,
    Compact = false,
})

Options.FlyValue:OnChanged(function()
    Settings.Blatant.Fly.Value = Options.FlyValue.Value * 30
end)


--// Light head funny thing
game:GetService("RunService").RenderStepped:Connect(function()
    if Settings.Visuals.Local.Light.Enabled then
        local player = game.Players.LocalPlayer
        local head = player.Character.Head
        local light = head:FindFirstChild("HeadLight")
        if not light then
            light = Instance.new("PointLight")
            light.Name = "HeadLight"
            light.Range = 20
            light.Parent = head
        end

        light.Brightness = Settings.Visuals.Local.Light.Strength
        light.Color = Settings.Visuals.Local.Light.Color
    else
        local player = game.Players.LocalPlayer
        local head = player.Character.Head
        local light = head:FindFirstChild("HeadLight")
        if light then
            light:Destroy()
        end
    end
end)

--// Nametag Funny thing
game:GetService("RunService").RenderStepped:Connect(function()
    if Settings.Visuals.Local.Nametag.Enabled then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local head = character and character:FindFirstChild("Head")
        local billboard = head and head:FindFirstChild("NametagBillboard")
        
        if not billboard then
            billboard = Instance.new("BillboardGui")
            billboard.Name = "NametagBillboard"
            billboard.Size = UDim2.new(0, 100, 0, 50)
            billboard.StudsOffset = Vector3.new(0, 2, 0) 
            
            local textLabel = Instance.new("TextLabel")
            textLabel.Name = "NametagText"
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.TextColor3 = Settings.Visuals.Local.Nametag.Color
            textLabel.Text = "   " .. player.Name .. "\n     |\n     |\n     V"
            textLabel.Font = Enum.Font.SourceSansBold
            textLabel.TextSize = 20
            textLabel.TextYAlignment = Enum.TextYAlignment.Top
            textLabel.TextTransparency = 0 
            textLabel.Parent = billboard
            billboard.Parent = head
        end

        local nametagText = billboard:FindFirstChild("NametagText")
        if nametagText then
            nametagText.TextColor3 = Settings.Visuals.Local.Nametag.Color
        end
    else
        local player = game.Players.LocalPlayer
        local character = player.Character
        local head = character and character:FindFirstChild("Head")
        local billboard = head and head:FindFirstChild("NametagBillboard")
        
        if billboard then
            billboard:Destroy()
        end
    end
end)

--// Create the fov circle
local FOVring = Drawing.new("Circle")
FOVring.Visible = Settings.Aimbot.Fov.Enabled
FOVring.Thickness = 1.5
FOVring.Radius = Settings.Aimbot.Fov.Radius
FOVring.Transparency = 1
FOVring.Color = Settings.Aimbot.Fov.Color
FOVring.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)

--// Main functions

local function getAimKey()
    if Settings.Aimbot.Aimkey == "LMB" then
        return Enum.UserInputType.MouseButton1
    elseif Settings.Aimbot.Aimkey == "RMB" then
        return Enum.UserInputType.MouseButton2
    end
end

local lockedOnPlayer = nil
local function getMousePosition()
    local mouse = game.Players.LocalPlayer:GetMouse()
    return mouse.X, mouse.Y
end

local function calculateDelta(targetX, targetY, mouseX, mouseY)
    return targetX - mouseX, targetY - mouseY
end

local function applyShake()
    if Settings.Aimbot.Shake.Enabled then
        local shakeOffset = Vector3.new(
            math.random() * Settings.Aimbot.Shake.ShakeValue - Settings.Aimbot.Shake.ShakeValue / 2,
            math.random() * Settings.Aimbot.Shake.ShakeValue - Settings.Aimbot.Shake.ShakeValue / 2,
            math.random() * Settings.Aimbot.Shake.ShakeValue - Settings.Aimbot.Shake.ShakeValue / 2
        )
        workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(shakeOffset)
    end
end
local function FOVCHECK(Player)
    if FOVring.Visible == false then
        return true
    end

    local FOVCheck = FOVring.Radius

    if Player ~= LocalPlayer and Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.Health ~= 0 and Player.Character:FindFirstChild("LowerTorso") then
        local pos = CurrentCamera:WorldToViewportPoint(Player.Character.PrimaryPart.Position)
        local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude

        if magnitude < FOVCheck then
            FOVCheck = magnitude
            return true
        else
            return false
        end
    end
end
local function getClosestPlayer()
    local players = game:GetService("Players"):GetPlayers()
    local closestPlayer = nil
    local closestDistance = math.huge

    local mousePos = Vector2.new(getMousePosition())

    local function getDistance(point1, point2)
        return (point1 - point2).Magnitude
    end

    for i, player in pairs(players) do
        if FOVCHECK(player) then
            if player.Character and player.Character:FindFirstChild("Head") and player ~= game:GetService("Players").LocalPlayer then
                local pos, vis = workspace.CurrentCamera:WorldToViewportPoint(player.Character.Head.Position)
                if vis then
                    local ssHeadPoint = Vector2.new(pos.X, pos.Y)
                    local isSameTeam = player.Team == game:GetService("Players").LocalPlayer.Team

                    local distance = getDistance(ssHeadPoint, mousePos)

                    if Settings.Aimbot.Fov.Enabled and distance < Settings.Aimbot.Fov.Radius and (not Settings.Aimbot.Teamcheck or not isSameTeam) then
                        if distance < closestDistance then
                            closestPlayer = player
                            closestDistance = distance
                        end
                    elseif not Settings.Aimbot.Fov.Enabled and (not Settings.Aimbot.Teamcheck or not isSameTeam) then
                        if distance < closestDistance then
                            closestPlayer = player
                            closestDistance = distance
                        end
                    end
                end
            end
        end
    end

    if closestPlayer then
        return closestPlayer
    else
        return nil
    end
end

local currentTween = nil

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == getAimKey() then
        if currentTween then
            currentTween:Cancel()
            currentTween = nil
        end

        if not Settings.Aimbot.Stickyaim then
            local closestPlayer = getClosestPlayer()
            if closestPlayer then
                lockedPlayer = closestPlayer
            end
        elseif lockedPlayer then
            lockedPlayer = nil
        end
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.UserInputType == getAimKey() then
        if currentTween then
            currentTween:Cancel()
            currentTween = nil
        end
        lockedPlayer = nil
    end
end)

local function aimbotLogic()
    if Settings.Aimbot.Mode == "Third Person" then
        FOVring.Position = Vector2.new(getMousePosition())
    else
        FOVring.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
    end

    local targetPlayer = Settings.Aimbot.Stickyaim and stickyLockedPlayer or lockedPlayer

    if targetPlayer and Settings.Aimbot.Enabled then
        local cameraPos = workspace.CurrentCamera.CFrame.Position

        if targetPlayer.Character and targetPlayer.Character:FindFirstChild(Settings.Aimbot.Aimpart) then
            local aimPart = targetPlayer.Character:FindFirstChild(Settings.Aimbot.Aimpart)
            local partPos = aimPart.Position
            local velocity = aimPart.Velocity

            if Settings.Aimbot.Prediction.Enabled then
                partPos = partPos + velocity * Vector3.new(Settings.Aimbot.Prediction.PredValue, Settings.Aimbot.Prediction.PredValue, Settings.Aimbot.Prediction.PredValue)
            end

            if Settings.Aimbot.Distancecheck.Enabled then
                local distanceToTarget = (partPos - cameraPos).Magnitude
                if distanceToTarget > Settings.Aimbot.Distancecheck.Value then
                    if Settings.Aimbot.Stickyaim then
                        stickyLockedPlayer = nil
                        if currentTween then
                            currentTween:Cancel()
                            currentTween = nil
                        end
                    else
                        lockedPlayer = nil
                        if currentTween then
                            currentTween:Cancel()
                            currentTween = nil
                        end
                    end
                    return
                end
            end


            local newCameraCFrame = CFrame.new(cameraPos, partPos)

            if currentTween then
                currentTween:Cancel()
                currentTween = nil
            end

            if Settings.Aimbot.Stickyaim then
                aimKey = nil
            else
                aimKey = getAimKey()
            end

            local isAimKeyPressed = aimKey and game:GetService("UserInputService"):IsMouseButtonPressed(aimKey)

            if Settings.Aimbot.Stickyaim and not isAimKeyPressed then
                if Settings.Aimbot.Mode == "Third Person" then
                    local Vector = CurrentCamera:WorldToViewportPoint(partPos)
				    mousemoverel((Vector.X - game:GetService("UserInputService"):GetMouseLocation().X), (Vector.Y - game:GetService("UserInputService"):GetMouseLocation().Y))
                else
                    if Settings.Aimbot.Smoothness.Enabled then
                        currentTween = TweenService:Create(workspace.CurrentCamera, TweenInfo.new(Settings.Aimbot.Smoothness.SmoothnessValue, Enum.EasingStyle.Linear), {
                            CFrame = newCameraCFrame
                        })
                        currentTween:Play()
                    else
                        workspace.CurrentCamera.CFrame = newCameraCFrame
                    end
                end

                applyShake()
                return
            end

            if not Settings.Aimbot.Stickyaim or (Settings.Aimbot.Stickyaim and not isAimKeyPressed) then
                if Settings.Aimbot.Mode == "Third Person" then
                    local Vector = CurrentCamera:WorldToViewportPoint(partPos)
				    mousemoverel((Vector.X - game:GetService("UserInputService"):GetMouseLocation().X), (Vector.Y - game:GetService("UserInputService"):GetMouseLocation().Y))
                else
                    if Settings.Aimbot.Smoothness.Enabled and isAimKeyPressed then
                        currentTween = TweenService:Create(workspace.CurrentCamera, TweenInfo.new(Settings.Aimbot.Smoothness.SmoothnessValue, Enum.EasingStyle.Linear), {
                            CFrame = newCameraCFrame
                        })
                        currentTween:Play()
                    else
                        workspace.CurrentCamera.CFrame = newCameraCFrame
                    end
                end
            end

            applyShake()
        end

        if Settings.Aimbot.Alivecheck and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid") then
            local humanoid = targetPlayer.Character:FindFirstChild("Humanoid")
            if humanoid.Health <= 0 then
                if Settings.Aimbot.Stickyaim then
                    stickyLockedPlayer = nil
                    if currentTween then
                        currentTween:Cancel()
                        currentTween = nil
                    end
                else
                    lockedPlayer = nil
                end
                return
            end
        end
    else
        if Settings.Aimbot.Stickyaim then
            stickyLockedPlayer = nil
            if currentTween then
                currentTween:Cancel()
                currentTween = nil
            end
        else
            lockedPlayer = nil
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    if Settings.Aimbot.Enabled and aimbotkeybind then
        if Settings.Aimbot.AirFunc.Enabled then
            if stickyLockedPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
                Settings.Aimbot.Aimpart = Settings.Aimbot.AirFunc.Hitpart
            else
                Settings.Aimbot.Aimpart = Options.PartToAimOnFunnyHaha.Value
            end
        end
    end
end)

function aimbotGetClosestPlayer()
    local distance = Settings.Aimbot.Fov.Radius
    local zclosest

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= lplr and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local pos = CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(lplr:GetMouse().X, lplr:GetMouse().Y)).magnitude

            if magnitude < distance then
                zclosest = v
                distance = magnitude
            end
        end
    end

    return zclosest
end

--// Aspect ratio aka stretched res lo
local oldNewindex

oldNewindex = hookmetamethod(game, "__newindex", function(object, propertyName, propertyValue)
    if object == CurrentCamera and propertyName == "CFrame" then
        if Settings.Visuals.Local.AspectRatio.Enabled then
            propertyValue = propertyValue * CFrame.new(0, 0, 0, 1, 0, 0, 0, Settings.Visuals.Local.AspectRatio.Value, 0, 0, 0, 1)
        end
    end
    return oldNewindex(object, propertyName, propertyValue)
end)


--// Renderstepped for aimbot
game:GetService("RunService").RenderStepped:Connect(aimbotLogic)

game:GetService("RunService").RenderStepped:Connect(function()
    Crosshair1.Color = Settings.Visuals.Local.Crosshair.Color
    Crosshair2.Color = Settings.Visuals.Local.Crosshair.Color
    Crosshair1.Visible = Settings.Visuals.Local.Crosshair.Enabled
    Crosshair2.Visible = Settings.Visuals.Local.Crosshair.Enabled
end)

--// now comes the funny esp

local function GetBoundingBox(parts)
    if not parts or #parts == 0 then
        return nil, nil
    end

    local minX, minY, minZ = math.huge, math.huge, math.huge
    local maxX, maxY, maxZ = -math.huge, -math.huge, -math.huge

    for _, part in ipairs(parts) do
        local pos = part.Position
        local size = part.Size
        local vertices = {
            pos + size / 2,
            pos + Vector3.new(-size.X / 2, size.Y / 2, size.Z / 2),
            pos + Vector3.new(size.X / 2, size.Y / 2, size.Z / 2),
            pos + Vector3.new(size.X / 2, -size.Y / 2, size.Z / 2),
            pos + Vector3.new(-size.X / 2, -size.Y / 2, size.Z / 2),
            pos + Vector3.new(-size.X / 2, size.Y / 2, -size.Z / 2),
            pos + Vector3.new(size.X / 2, size.Y / 2, -size.Z / 2),
            pos + Vector3.new(size.X / 2, -size.Y / 2, -size.Z / 2),
            pos + Vector3.new(-size.X / 2, -size.Y / 2, -size.Z / 2),
        }

        for _, vertex in ipairs(vertices) do
            minX = math.min(minX, vertex.X)
            minY = math.min(minY, vertex.Y)
            minZ = math.min(minZ, vertex.Z)
            maxX = math.max(maxX, vertex.X)
            maxY = math.max(maxY, vertex.Y)
            maxZ = math.max(maxZ, vertex.Z)
        end
    end

    return Vector3.new((minX + maxX) / 2, (minY + maxY) / 2, (minZ + maxZ) / 2), Vector3.new(maxX - minX, maxY - minY, maxZ - minZ)
end


local function GetBonePosition(Character, BoneName)
    local bone = Character:FindFirstChild(BoneName)
    if bone then
        return bone.Position
    end
    return nil
end

local function IsPlayerValid(player)
    return player and player.Character and player.Character:FindFirstChild("HumanoidRootPart")
end

local bones = {
    {"Head", "UpperTorso"},
    {"UpperTorso", "RightUpperArm"},
    {"RightUpperArm", "RightLowerArm"},
    {"RightLowerArm", "RightHand"},
    {"UpperTorso", "LeftUpperArm"},
    {"LeftUpperArm", "LeftLowerArm"},
    {"LeftLowerArm", "LeftHand"},
    {"UpperTorso", "LowerTorso"},
    {"LowerTorso", "LeftUpperLeg"},
    {"LeftUpperLeg", "LeftLowerLeg"},
    {"LeftLowerLeg", "LeftFoot"},
    {"LowerTorso", "RightUpperLeg"},
    {"RightUpperLeg", "RightLowerLeg"},
    {"RightLowerLeg", "RightFoot"}
}

local function CreateESP(Player)
    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Thickness = Settings.Visuals.Esp.Boxes.Thickness
    Box.Transparency = Settings.Visuals.Esp.Boxes.Transparency
    Box.Color = Settings.Visuals.Esp.Boxes.Color

    local Name = Drawing.new("Text")
    Name.Visible = false
    Name.Color = Settings.Visuals.Esp.Names.Color
    Name.Size = Settings.Visuals.Esp.Names.Size
    Name.Center = true
    Name.Outline = Settings.Visuals.Esp.Names.Outline
    Name.OutlineColor = Settings.Visuals.Esp.Names.OutlineColor
    Name.Position = Vector2.new(0, 0)
    Name.ZIndex = 1

    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Thickness = Settings.Visuals.Esp.Tracers.Thickness
    Tracer.Color = Settings.Visuals.Esp.Tracers.Color

    local SkeletonLines = {}

    local function ConnectSkeletonLines(parts, bones)
        for i = 1, #bones do
            local bonePair = bones[i]
            local startBone = bonePair[1]
            local endBone = bonePair[2]

            local startPart, endPart = nil, nil

            for _, part in ipairs(parts) do
                if part.Name == startBone then
                    startPart = part
                elseif part.Name == endBone then
                    endPart = part
                end

                if startPart and endPart then
                    local line = SkeletonLines[i]
                    if not line then
                        line = Drawing.new("Line")
                        line.Thickness = 2
                        line.Transparency = 1
                        line.Color = Settings.Visuals.Esp.Skeleton.Color
                        SkeletonLines[i] = line
                    end

                    line.Visible = true
                    line.From = workspace.CurrentCamera:WorldToViewportPoint(startPart.Position)
                    line.To = workspace.CurrentCamera:WorldToViewportPoint(endPart.Position)
                    break
                end
            end
        end
    end

    local function ClearSkeletonLines()
        for i = 1, #SkeletonLines do
            local line = SkeletonLines[i]
            if line then
                line.Visible = false
            end
        end
    end

    local function UpdateDrawingProperties()
        Box.Thickness = Settings.Visuals.Esp.Boxes.Thickness
        Box.Transparency = Settings.Visuals.Esp.Boxes.Transparency
        Box.Color = Settings.Visuals.Esp.Boxes.Color
        Name.Color = Settings.Visuals.Esp.Names.Color
        Name.Size = Settings.Visuals.Esp.Names.Size
        Name.Center = true
        Name.Outline = Settings.Visuals.Esp.Names.Outline
        Tracer.Thickness = Settings.Visuals.Esp.Tracers.Thickness
        Tracer.Color = Settings.Visuals.Esp.Tracers.Color
        Name.OutlineColor = Settings.Visuals.Esp.Names.OutlineColor
        for i = 1, #SkeletonLines do
            local line = SkeletonLines[i]
            if line then
                line.Color = Settings.Visuals.Esp.Skeleton.Color
            end
        end

        if Settings.Visuals.Esp.Misc.Teamcheck then
            if Player.Team == game:GetService("Players").LocalPlayer.Team then
                Tracer.Visible = false
            end
        end
    end
    

    local function UpdateESP()
        Box.Visible = false
        Name.Visible = false

        if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.Health > 0 and Player ~= game:GetService("Players").LocalPlayer then
            if not Settings.Visuals.Esp.Misc.Teamcheck or (Settings.Visuals.Esp.Misc.Teamcheck and Player.Team ~= game:GetService("Players").LocalPlayer.Team) then
                local Character = Player.Character
                local humanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

                if not humanoidRootPart then
                    ClearSkeletonLines()
                    return
                end

                local parts = {}
                for _, part in ipairs(Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        table.insert(parts, part)
                    end
                end

                local center, size = GetBoundingBox(parts)
                if not center or not size then
                    ClearSkeletonLines()
                    return
                end

                local topLeft, onScreen = workspace.CurrentCamera:WorldToViewportPoint(center - size / 2)
                local bottomRight = workspace.CurrentCamera:WorldToViewportPoint(center + size / 2)

                Box.Visible = Settings.Visuals.Esp.Boxes.Enabled and onScreen
                Box.Position = Vector2.new(topLeft.X, topLeft.Y)
                Box.Size = Vector2.new(bottomRight.X - topLeft.X, bottomRight.Y - topLeft.Y)
                Box.Color = Settings.Visuals.Esp.Boxes.Color

                local offset = Vector2.new(0, -30)
                local headOffset = Vector3.new(0, size.Y / 2, 0)
                local headPosition = center + headOffset
                local headPosScreen, headPosVisible = workspace.CurrentCamera:WorldToViewportPoint(headPosition)

                if headPosVisible then
                    Name.Visible = Settings.Visuals.Esp.Names.Enabled
                    Name.Position = Vector2.new(headPosScreen.X, headPosScreen.Y) + offset
                    Name.Text = Player.DisplayName
                else
                    Name.Visible = false
                end

                if Settings.Visuals.Esp.Skeleton.Enabled then
                    local humanoidRootPos, humanoidRootVisible = workspace.CurrentCamera:WorldToViewportPoint(humanoidRootPart.Position)
                    if humanoidRootVisible then
                        local Character = Player.Character
                        local bonePositions = {
                            GetBonePosition(Character, "Head"),
                            GetBonePosition(Character, "UpperTorso"),
                            GetBonePosition(Character, "RightUpperArm"),
                            GetBonePosition(Character, "RightLowerArm"),
                            GetBonePosition(Character, "RightHand"),
                            GetBonePosition(Character, "LeftHand"),
                            GetBonePosition(Character, "LeftUpperArm"),
                            GetBonePosition(Character, "LeftLowerArm"),
                            GetBonePosition(Character, "LowerTorso"),
                        }

                        local skeletonVisible = true
                        for i = 1, #bonePositions do
                            if not bonePositions[i] then
                                skeletonVisible = false
                                break
                            end
                        end

                        if skeletonVisible then
                            ConnectSkeletonLines(parts, bones)
                        else
                            ClearSkeletonLines()
                        end
                    else
                        ClearSkeletonLines()
                    end
                else
                    ClearSkeletonLines()
                end
                if Tracer.Visible then
                    Tracer.Visible = false
                end

                if Settings.Visuals.Esp.Tracers.Enabled then
                    local targetCharacter = Player.Character
                    local tracerVisible = false
                    if IsPlayerValid(Player) then
                        local hitPart = targetCharacter:FindFirstChild(Settings.Visuals.Esp.Tracers.Hitbox)
            
                        if hitPart then
                            local targetPos, targetVisible = workspace.CurrentCamera:WorldToViewportPoint(hitPart.Position)
            
                            if Settings.Visuals.Esp.Misc.Teamcheck then
                                local isEnemy = Player.Team ~= game:GetService("Players").LocalPlayer.Team
                                tracerVisible = targetVisible and isEnemy
                            else
                                tracerVisible = targetVisible
                            end
            
                            if tracerVisible then
                                Tracer.Visible = true
                                Tracer.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
                                Tracer.To = Vector2.new(targetPos.X, targetPos.Y)
                            end
                        end
                    end
            
                    if not tracerVisible then
                        Tracer.Visible = false
                    end
                else
                    Tracer.Visible = false
                end
            else
                Box.Visible = false
                Name.Visible = false
                ClearSkeletonLines()
            end
        else
            Box.Visible = false
            Name.Visible = false
            ClearSkeletonLines()
        end
    end

    game:GetService("RunService"):BindToRenderStep(tostring(Player.UserId), Enum.RenderPriority.Character.Value, UpdateESP)
    game:GetService("RunService"):BindToRenderStep(tostring(Player.UserId) .. "DrawingProperties", Enum.RenderPriority.Input.Value, UpdateDrawingProperties)
end

for _, Player in ipairs(game:GetService("Players"):GetPlayers()) do
    if Player ~= game:GetService("Players").LocalPlayer then
        CreateESP(Player)
    end
end


game:GetService("Players").PlayerAdded:Connect(function(Player)
    if Player ~= game:GetService("Players").LocalPlayer then
        CreateESP(Player)
    end
end)


local emojis = {"😀", "😄", "😊", "🎉", "🌞", "🌟", "🏆", "🎮", "🏰", "🌈", "🍎", "🍓", "🍕", "🍔", "🍟", "🍦", "🍩", "🍉", "🍒", "🍌", "🍇", "🍔", "🍟", "🌮", "🍕", "🍣", "🍔", "🍟", "🌭", "🍟", "🍖", "🍗", "🍤", "🍳", "🥐", "🍞", "🍗", "🍖", "🍔", "🍟", "🍕", "🍔", "🍟", "🍣", "🍣", "🍱", "🍛", "🍜", "🍝", "🍞", "🍮", "🍭", "🍬", "🍫", "🍿", "🍪", "🍩", "🍨", "🍧", "🍦", "🎂", "🍰", "🍮", "🍭", "🍬", "🍫", "🍿", "🍪", "🍩", "🍨", "🍧", "🍦", "🍺", "🍻", "🍷", "🍸", "🍹", "🍾", "🥂", "🥃", "🍴", "🍽️", "🥄", "🔪", "🍽️", "🍴", "🍽️", "🥄", "🔪", "🍽️", "🍴", "🍽️", "🥄", "🔪", "🎸", "🎺", "🎻", "🥁", "🎷", "🎹", "🎶", "🎵", "🎼", "🎧", "🎤", "🎸", "🎺", "🎻", "🥁", "🎷", "🎹", "🎶", "🎵", "🎼", "🎧", "🎤", "📷", "📸", "📹", "🎥", "🎬", "📺", "📻", "🎮", "🕹️", "🎲", "⚽", "🏀", "🏈", "⚾", "🎾", "🏐", "🏉", "🎱", "🎳", "🏏", "🏑", "🏒", "🏓", "🏸", "🥅", "⛳", "🏹", "🎣", "🥊", "🥋", "🥏", "🥅", "⛳", "🏹", "🎣", "🥊", "🥋", "🥏", "⛸️", "🎿", "⛷️", "🏂", "🏋️‍♀️", "🏋️‍♂️", "🤺", "⛸️", "🎿", "⛷️", "🏂", "🏋️‍♀️", "🏋️‍♂️", "🤺", "🏌️‍♀️", "🏌️‍♂️", "🏄‍♀️", "🏄‍♂️", "🚣‍♀️", "🚣‍♂️", "🏊‍♀️", "🏊‍♂️", "⛹️‍♀️", "⛹️‍♂️", "🏋️‍♀️", "🏋️‍♂️", "🚴‍♀️", "🚴‍♂️", "🚵‍♀️", "🚵‍♂️", "🤸‍♀️", "🤸‍♂️", "🤽‍♀️", "🤽‍♂️", "🤾‍♀️", "🤾‍♂️", "🏆", "🏅", "🎖️", "🥇", "🥈", "🥉"}

local Messages = Settings.Blatant.MessageSpammer.Message
local messageList = {}
local currentIndex = 1
local lastMessageTime = tick()

game:GetService("RunService").Heartbeat:Connect(function()
    if Settings.Blatant.MessageSpammer.Enabled then
        local currentTime = tick()
        local elapsedTime = currentTime - lastMessageTime

        if Settings.Blatant.MessageSpammer.Message ~= Messages then
            Messages = Settings.Blatant.MessageSpammer.Message
            messageList = {}

            for message in Messages:gmatch("([^,]+)") do
                table.insert(messageList, message)
            end
        end

        if elapsedTime >= 3 then
            local message = messageList[currentIndex]

            if message then
                sendMessage(message)
                currentIndex = currentIndex + 1

                if currentIndex > #messageList then
                    currentIndex = 1
                end

                lastMessageTime = currentTime
            end
        end
    end
end)

function sendMessage(message)
    local finalMessage = message

    if Settings.Blatant.MessageSpammer.UseEmojis then
        local randomEmojiIndex = math.random(1, #emojis)
        local emoji = emojis[randomEmojiIndex]
        finalMessage = finalMessage .. " " .. emoji
    end

    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(finalMessage, "All")
end

--// Main CFrame speed
game:GetService("RunService").Heartbeat:Connect(function()
    if Settings.Blatant.CFrameSpeed.Enabled then
        if lplr.Character.Humanoid.MoveDirection.Magnitude > 0 then
            for i = 1, Settings.Blatant.CFrameSpeed.Value do
                lplr.Character:TranslateBy(lplr.Character.Humanoid.MoveDirection)
            end
        end
    end
end)


game:GetService("RunService").RenderStepped:Connect(function()
    FOVring.Visible = Settings.Aimbot.Fov.Enabled
    FOVring.Radius = Settings.Aimbot.Fov.Radius
    FOVring.Color = Settings.Aimbot.Fov.Color
end)

--// Config and shit
MenuGroup:AddButton("Unload Cheat", function()
    Library:Unload()
end)

MenuGroup:AddToggle("WatermarkEnabled", {
    Text = "Watermark",
    Default = true,
    Tooltip = "Watermark Enabled",
})

Toggles.WatermarkEnabled:OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.WatermarkEnabled.Value)
end)

Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()

Library:SetWatermark("Universal aimbot and Esp made by Linemaster | " .. os.date(funny[math.random(1, #funny)], os.time()) .. day .. GetSubPrefix(day) .. os.date(second_string, os.time()))

SaveManager:SetIgnoreIndexes({"MenuKeybind"})

ThemeManager:SetFolder("AimbotAndEspFunny")
SaveManager:SetFolder("AimbotAndEspFunny/Configs")
SaveManager:BuildConfigSection(Tabs.UiSettings)
ThemeManager:ApplyToTab(Tabs.UiSettings)

MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {
    Default = "Insert",
    NoUI = true,
    Text = "Menu keybind"
})

Library.ToggleKeybind = Options.MenuKeybind