-- Phantom Forces | Aimbot & ESP | made by #tupsutumppu | 15.4.2024
local RUN_SERVICE = cloneref(game:GetService("RunService"));
local TWEEN_SERVICE = cloneref(game:GetService("TweenService"));
local PLAYERS = cloneref(game:GetService("Players"));

local localPlayer = PLAYERS.LocalPlayer;
local comm_id, comm_channel = create_comm_channel();
local camera = cloneref(workspace.CurrentCamera);
local ignore = cloneref(workspace.Ignore);
local mouse = localPlayer:GetMouse();
local closest = nil;

local btDefault = {enabled = false; outline = true; color = Color3.fromRGB(255, 0, 255); outlineColor = Color3.fromRGB(0, 40, 255); thickness = 1.5; transparency = 1};
local textDefault = {enabled = false; outline = true; color = Color3.fromRGB(255, 0, 255); outlineColor = Color3.fromRGB(0, 40, 255); size = 14; font = 2; transparency = 1};

local esp = {
    settings = {
        box = table.clone(btDefault);
        tracer = table.clone(btDefault);
        name = table.clone(textDefault);
        weapon = table.clone(textDefault);
    };
};
esp.cache = {
    __index = esp;
};

local combatSettings = {
    visCheck = true;
    aimPart = "Head";
    noRecoil = false;
    noSway = false;
    aimbot = {
        enabled = false;
        smoothing = 2;
    };
    silentAim = {
        enabled = false;
        hitChance = 80;
    };
    fovCircle = {
        enabled = false;
        sides = 64;
        color = Color3.fromRGB(255, 255, 255);
        transparency = 1;
        radius = 100;
        thickness = 1.2;
        filled = false
    };
};
local mouse2Down = false;

function esp:update()
    if self.data and self.data.character and self.data.character.Head and self.player.Team ~= localPlayer.Team then
        local torso = self.data.character.Torso;
        local screenPosition, onScreen = camera:WorldToViewportPoint(torso.CFrame.Position);

        if torso and screenPosition and onScreen then
            local scaleFactor = 1 / (screenPosition.Z * math.tan(math.rad(camera.FieldOfView / 2)) * 2) * 1000;
            local boxWidth, boxHeight = math.round(4 * scaleFactor), math.round(5 * scaleFactor);
            local boxPos = Vector2.new(math.round(screenPosition.X - boxWidth / 2), math.round(screenPosition.Y - boxHeight / 2));
            local topTextY = (screenPosition.Y - (boxHeight + self.drawings.name.TextBounds.Y + 19) / 2);
            local bottomTextY = (screenPosition.Y + (boxHeight + self.drawings.weapon.TextBounds.Y - 5) / 2);

            self.drawings.boxOutline.Visible = esp.settings.box.enabled and esp.settings.box.outline;
            self.drawings.boxOutline.Size = Vector2.new(boxWidth, boxHeight);
            self.drawings.boxOutline.Position = boxPos;
            self.drawings.boxOutline.Color = esp.settings.box.outlineColor;
            self.drawings.boxOutline.Thickness = esp.settings.box.thickness + 1.5;
            self.drawings.boxOutline.Transparency = esp.settings.box.transparency;

            self.drawings.box.Visible = esp.settings.box.enabled;
            self.drawings.box.Size = Vector2.new(boxWidth, boxHeight);
            self.drawings.box.Position = boxPos;
            self.drawings.box.Color = esp.settings.box.color;
            self.drawings.box.Thickness = esp.settings.box.thickness;
            self.drawings.box.Transparency = esp.settings.box.transparency;

            self.drawings.tracerOutline.Visible = esp.settings.tracer.enabled and esp.settings.tracer.outline;
            self.drawings.tracerOutline.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y);
            self.drawings.tracerOutline.To = Vector2.new(screenPosition.X, screenPosition.Y);
            self.drawings.tracerOutline.Color = esp.settings.tracer.outlineColor;
            self.drawings.tracerOutline.Thickness = esp.settings.tracer.thickness + 1.5;
            self.drawings.tracerOutline.Transparency = esp.settings.tracer.transparency;

            self.drawings.tracer.Visible = esp.settings.tracer.enabled;
            self.drawings.tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y);
            self.drawings.tracer.To = Vector2.new(screenPosition.X, screenPosition.Y);
            self.drawings.tracer.Color = esp.settings.tracer.color;
            self.drawings.tracer.Thickness = esp.settings.tracer.thickness;
            self.drawings.tracer.Transparency = esp.settings.tracer.transparency;

            self.drawings.weapon.Visible = esp.settings.weapon.enabled;
            self.drawings.weapon.Text = (self.data.weapon) or "no weapon";
            self.drawings.weapon.Size = esp.settings.weapon.size;
            self.drawings.weapon.Color = esp.settings.weapon.color;
            self.drawings.weapon.Transparency = esp.settings.weapon.transparency;
            self.drawings.weapon.Outline = esp.settings.weapon.outline;
            self.drawings.weapon.OutlineColor = esp.settings.weapon.outlineColor;
            self.drawings.weapon.Font = esp.settings.weapon.font;
            self.drawings.weapon.Position = Vector2.new(screenPosition.X, bottomTextY);
            self.drawings.weapon.Center = true;

            self.drawings.name.Visible = esp.settings.name.enabled;
            self.drawings.name.Text = self.player.Name;
            self.drawings.name.Size = esp.settings.name.size;
            self.drawings.name.Color = esp.settings.name.color;
            self.drawings.name.Transparency = esp.settings.name.transparency;
            self.drawings.name.Outline = esp.settings.name.outline;
            self.drawings.name.OutlineColor = esp.settings.name.outlineColor;
            self.drawings.name.Font = esp.settings.name.font;
            self.drawings.name.Position = Vector2.new(screenPosition.X, topTextY);
            self.drawings.name.Center = true;
        else
            self.drawings.boxOutline.Visible = false;
            self.drawings.box.Visible = false;
            self.drawings.tracerOutline.Visible = false;
            self.drawings.tracer.Visible = false;
            self.drawings.weapon.Visible = false;
            self.drawings.name.Visible = false;
        end

    else
        self.drawings.boxOutline.Visible = false;
        self.drawings.box.Visible = false;
        self.drawings.tracerOutline.Visible = false;
        self.drawings.tracer.Visible = false;
        self.drawings.weapon.Visible = false;
        self.drawings.name.Visible = false;
    end
end

function esp.new(player, data)
    local self = setmetatable({}, esp.cache);
    self.player = player;
    self.data = data;
    self.drawings = {
        boxOutline = Drawing.new("Square"), {};
        box = Drawing.new("Square"), {};
        tracerOutline = Drawing.new("Line"), {};
        tracer = Drawing.new("Line"), {};
        weapon = Drawing.new("Text"), {};
        name = Drawing.new("Text"), {};
    };
    self.connection = RUN_SERVICE.RenderStepped:Connect(function()
        self:update()
    end);

    esp.cache[player] = self;
    return self;
end

function esp:remove()
    self.connection:Disconnect();

    for _, drawing in next, self.drawings do
        if typeof(drawing) ~= "table" then
            drawing:Remove();
        end
    end

    esp.cache[self.player] = nil;
    table.clear(self);
end

function esp.getEnemyCharacters()
    local enemies = {};

    for k, v in next, esp.cache do
        if typeof(k) == "Instance" and v.data and v.data.character and k.Team ~= localPlayer.Team then
            table.insert(enemies, v.data.character);
        end
    end

    return enemies;
end

PLAYERS.PlayerRemoving:Connect(function(player)
    local self = esp.cache[player];

    if self then
        self:remove();
    end
end);

comm_channel.Event:Connect(function(caller, player, data)
    if caller == "actor" then
        local self = esp.cache[player];

        if self then
            self.data = data;
    
        else
            esp.new(player);
        end
    end
end);

run_on_actor(getactors()[1], [[
    local RUN_SERVICE = cloneref(game:GetService("RunService"));
    local req = getrenv().shared.require
    local operateOnAllEntries = req("ReplicationInterface").operateOnAllEntries;
    local applyImpulse = req("RecoilSprings").applyImpulse;

    local combatSettings;
    local closest;
    local comm_channel = ...;
    comm_channel = get_comm_channel(comm_channel);

    RUN_SERVICE.Heartbeat:Connect(function()
        operateOnAllEntries(function(player, data)

            comm_channel:Fire("actor", player, {
                weapon = (data._thirdPersonObject and data._thirdPersonObject._weaponname) or false;
                character = (data._thirdPersonObject and data._thirdPersonObject._characterHash) or false;
            });
        end);
    end);

    comm_channel.Event:Connect(function(caller, _, data)
        if caller == "main" then
            combatSettings = data.combatSettings;
            closest = data.closest;
        end
    end)

    local old_applyImpulse;
    local old_index;

    old_applyImpulse = hookfunction(applyImpulse, function(...)
        if combatSettings.noRecoil then
            return
        end
        return old_applyImpulse(...);
    end);

    old_index = hookmetamethod(game, "__index", newcclosure(function(...)
        local self, index = ...;

        if typeof(self) == "Instance" and index == "CFrame" and debug.info(3, "n") == "fireRound" then

            if combatSettings.silentAim.enabled and closest and math.random(1, 100) <= combatSettings.silentAim.hitChance then
                local oldCFrame = old_index(self, index);

                return CFrame.lookAt(oldCFrame.Position, closest.CFrame.Position);
            end
        end

        return old_index(...);
    end));
]], comm_id);

local function isVisible(head, character)
    local params = RaycastParams.new();
    params.FilterDescendantsInstances = {camera, ignore};
    params.FilterType = Enum.RaycastFilterType.Exclude;
    params.IgnoreWater = true;
    local result = workspace:Raycast(camera.CFrame.Position, head.CFrame.Position - camera.CFrame.Position, params);

    if result and result.Instance and result.Instance:IsDescendantOf(character) then
        return true;
    end
    return false;
end

local function getClosestEnemy()
    local enemies = esp.getEnemyCharacters();
    local maxDist = math.huge;
    local closest = nil;

    for _, v in next, enemies do
        if v and v.Head and v[combatSettings.aimPart] then
            local head = v.Head;
            local headPos = head.CFrame.Position;
            local headPosV2, onScreen = camera:WorldToViewportPoint(headPos);

            if onScreen then
                local distance = (Vector2.new(headPosV2.X, headPosV2.Y) - (camera.ViewportSize / 2)).Magnitude;

                if ((distance < combatSettings.fovCircle.radius) or not combatSettings.fovCircle.enabled) and (not combatSettings.visCheck or isVisible(head, head.Parent)) then
                    distance = (camera.CFrame.Position - headPos).Magnitude;

                    if distance < maxDist then
                        maxDist = distance;
                        closest = v[combatSettings.aimPart];
                    end
                end
            end
        end
    end

    if closest then
        return closest;
    end

    return nil;
end

local function lookAt(pos)
    local mousePos = Vector2.new(mouse.X, mouse.Y);
    mousemoverel((pos.X - mousePos.X) / combatSettings.aimbot.smoothing, (pos.Y - mousePos.Y) / combatSettings.aimbot.smoothing);
end

mouse.Button2Down:Connect(function()
    mouse2Down = true;
end);

mouse.Button2Up:Connect(function()
    mouse2Down = false;
end);

local circle = Drawing.new("Circle");
circle.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2);

RUN_SERVICE.Heartbeat:Connect(function()
    closest = getClosestEnemy();

    comm_channel:Fire("main", nil, {
        combatSettings = combatSettings;
        closest = closest;
    });

    if combatSettings.aimbot.enabled and mouse2Down then
        if closest then
            lookAt(camera:WorldToScreenPoint(closest.CFrame.Position));
        end
    end

    circle.Visible = combatSettings.fovCircle.enabled;
    circle.Thickness = combatSettings.fovCircle.thickness;
    circle.NumSides = combatSettings.fovCircle.sides;
    circle.Radius = combatSettings.fovCircle.radius;
    circle.Color = combatSettings.fovCircle.color;
    circle.Transparency = combatSettings.fovCircle.transparency;
end)

local repo = "https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/";
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))();
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))();

local Window = Library:CreateWindow({
    Title = tostring(cloneref(game:GetService("MarketplaceService")):GetProductInfo(game.PlaceId).Name) .. " |" .. " #tupsutumppu";
    Center = true;
    AutoShow = true;
    TabPadding = 8;
    MenuFadeTime = 0.2
});

local Tabs = {
    Combat = Window:AddTab("Combat");
    ESP = Window:AddTab("ESP");
    ["UI Settings"] = Window:AddTab("UI Settings")
};

local aimingGB = Tabs.Combat:AddLeftGroupbox("Aiming");
local gunModsGB = Tabs.Combat:AddRightGroupbox("Gun Mods");
local boxGB = Tabs.ESP:AddLeftGroupbox("Box");
local tracerGB = Tabs.ESP:AddRightGroupbox("Tracer");
local nameGB = Tabs.ESP:AddRightGroupbox("Name");
local weaponGB = Tabs.ESP:AddLeftGroupbox("Weapon");

aimingGB:AddToggle("aimbot", {
    Text = "Aimbot";
    Default = false;
    Tooltip = "enable / disable aimbot";

    Callback = function(Value)
        combatSettings.aimbot.enabled = Value;
    end
});
aimingGB:AddToggle("silentAim", {
    Text = "Silent Aim";
    Default = false;
    Tooltip = "enable / disable silent aim";

    Callback = function(Value)
        combatSettings.silentAim.enabled = Value;
    end
});
aimingGB:AddToggle("visCheck", {
    Text = "Visibility Check";
    Default = true;
    Tooltip = "checks if target is visible";

    Callback = function(Value)
        combatSettings.visCheck = Value;
    end
});
aimingGB:AddDropdown("hitPart", {
    Values = {"Head", "Torso"},
    Default = "Head",
    Multi = false,

    Text = "Aim Part",
    Tooltip = "",

    Callback = function(Value)
        combatSettings.aimPart = Value;
    end
});
aimingGB:AddSlider("aimbotSmoothing", {
    Text = "Aimbot Smoothing",
    Default = combatSettings.aimbot.smoothing,
    Min = 2,
    Max = 20,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        combatSettings.smoothing = Value;
    end
});
aimingGB:AddSlider("silentAimHitChance", {
    Text = "Silent Aim Hit Chance",
    Default = combatSettings.silentAim.hitChance,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
        combatSettings.silentAim.hitChance = Value;
    end
});
aimingGB:AddDivider();
aimingGB:AddToggle("fovCircle", {
    Text = "FOV Cirle";
    Default = false;
    Tooltip = "enable / disable fov circle";

    Callback = function(Value)
        combatSettings.fovCircle.enabled = Value;
    end
});
aimingGB:AddSlider("circleRadius", {
    Text = "Radius",
    Default = combatSettings.fovCircle.radius,
    Min = 25,
    Max = 1000,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
        combatSettings.fovCircle.radius = Value;
    end
});
aimingGB:AddSlider("circleThickness", {
    Text = "Thickness",
    Default = combatSettings.fovCircle.thickness,
    Min = 1,
    Max = 3,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        combatSettings.fovCircle.thickness = Value;
    end
});
aimingGB:AddSlider("circleNumSides", {
    Text = "NumSides",
    Default = combatSettings.fovCircle.sides,
    Min = 6,
    Max = 256,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
        combatSettings.fovCircle.sides = Value;
    end
});
aimingGB:AddSlider("circleTransparency", {
    Text = "Transparency",
    Default = combatSettings.fovCircle.transparency,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        combatSettings.fovCircle.transparency = Value;
    end
});
aimingGB:AddLabel("Color"):AddColorPicker("fovCircleColor", {
    Default = combatSettings.fovCircle.color,
    Title = "Color",
    Transparency = 0,

    Callback = function(Value)
        combatSettings.fovCircle.color = Value;
    end
});

gunModsGB:AddToggle("noRecoil", {
    Text = "No Recoil";
    Default = false;
    Tooltip = "enable / disable weapon recoil";

    Callback = function(Value)
        combatSettings.noRecoil = Value;
    end
});

boxGB:AddToggle("boxEnabled", {
    Text = "Enabled";
    Default = false;
    Tooltip = "enable / disable boxes";

    Callback = function(Value)
        esp.settings.box.enabled = Value;
    end
});
boxGB:AddSlider("boxThickness", {
    Text = "Thickness",
    Default = esp.settings.box.thickness,
    Min = 0,
    Max = 3,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        esp.settings.box.thickness = Value;
    end
});
boxGB:AddSlider("boxTransparency", {
    Text = "Transparency",
    Default = esp.settings.box.transparency,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        esp.settings.box.transparency = Value;
    end
});
boxGB:AddLabel("Color"):AddColorPicker("boxColor", {
    Default = esp.settings.box.color,
    Title = "Color",
    Transparency = 0,

    Callback = function(Value)
        esp.settings.box.color = Value;
    end
});
boxGB:AddDivider()
boxGB:AddToggle("boxOutline", {
    Text = "Outline";
    Default = true;
    Tooltip = "enable / disable box outline";

    Callback = function(Value)
        esp.settings.box.outline = Value;
    end
});
boxGB:AddLabel("Outline Color"):AddColorPicker("boxOutlineColor", {
    Default = esp.settings.box.outlineColor,
    Title = "Outline Color",
    Transparency = 0,

    Callback = function(Value)
        esp.settings.box.outlineColor = Value;
    end
});


tracerGB:AddToggle("tracerEnabled", {
    Text = "Enabled";
    Default = false;
    Tooltip = "enable / disable tracers";

    Callback = function(Value)
        esp.settings.tracer.enabled = Value;
    end
});
tracerGB:AddSlider("tracerThickness", {
    Text = "Thickness",
    Default = esp.settings.tracer.thickness,
    Min = 0,
    Max = 3,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        esp.settings.tracer.thickness = Value;
    end
});
tracerGB:AddSlider("tracerTransparency", {
    Text = "Transparency",
    Default = esp.settings.tracer.transparency,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        esp.settings.tracer.transparency = Value;
    end
});
tracerGB:AddLabel("Color"):AddColorPicker("tracerColor", {
    Default = esp.settings.tracer.color,
    Title = "Color",
    Transparency = 0,

    Callback = function(Value)
        esp.settings.tracer.color = Value;
    end
});
tracerGB:AddDivider()
tracerGB:AddToggle("tracerOutline", {
    Text = "Outline";
    Default = true;
    Tooltip = "enable / disable tracer outline";

    Callback = function(Value)
        esp.settings.tracer.outline = Value;
    end
});
tracerGB:AddLabel("Outline Color"):AddColorPicker("tracerOutlineColor", {
    Default = esp.settings.tracer.outlineColor,
    Title = "Outline Color",
    Transparency = 0,

    Callback = function(Value)
        esp.settings.tracer.outlineColor = Value;
    end
});

nameGB:AddToggle("nameEnabled", {
    Text = "Enabled";
    Default = false;
    Tooltip = "enable / disable name esp";

    Callback = function(Value)
        esp.settings.name.enabled = Value;
    end
});
nameGB:AddDropdown("nameFont", {
    Values = {"UI", "System", "Plex", "Monospace"},
    Default = "System",
    Multi = false,

    Text = "Font",
    Tooltip = "",

    Callback = function(Value)
        esp.settings.name.font = Drawing.Fonts[Value];
    end
});
nameGB:AddSlider("nameSize", {
    Text = "Size",
    Default = esp.settings.name.size,
    Min = 5,
    Max = 20,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
        esp.settings.name.size = Value;
    end
});
nameGB:AddSlider("nameTransparency", {
    Text = "Transparency",
    Default = esp.settings.name.transparency,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        esp.settings.name.transparency = Value;
    end
});
nameGB:AddLabel("Color"):AddColorPicker("nameColor", {
    Default = esp.settings.name.color,
    Title = "Color",
    Transparency = 0,

    Callback = function(Value)
        esp.settings.name.color = Value;
    end
});
nameGB:AddDivider()
nameGB:AddToggle("nameOutline", {
    Text = "Outline";
    Default = true;
    Tooltip = "enable / disable text outline";

    Callback = function(Value)
        esp.settings.name.outline = Value;
    end
});
nameGB:AddLabel("Outline Color"):AddColorPicker("nameOutlineColor", {
    Default = esp.settings.name.outlineColor,
    Title = "Outline Color",
    Transparency = 0,

    Callback = function(Value)
        esp.settings.name.outlineColor = Value;
    end
});


weaponGB:AddToggle("weaponEnabled", {
    Text = "Enabled";
    Default = false;
    Tooltip = "enable / disable weapon esp";

    Callback = function(Value)
        esp.settings.weapon.enabled = Value;
    end
});
weaponGB:AddDropdown("weaponFont", {
    Values = {"UI", "System", "Plex", "Monospace"},
    Default = "System",
    Multi = false,

    Text = "Font",
    Tooltip = "",

    Callback = function(Value)
        esp.settings.weapon.font = Drawing.Fonts[Value];
    end
});
weaponGB:AddSlider("weaponSize", {
    Text = "Size",
    Default = esp.settings.weapon.size,
    Min = 5,
    Max = 20,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
        esp.settings.weapon.size = Value;
    end
});
weaponGB:AddSlider("weaponTransparency", {
    Text = "Transparency",
    Default = esp.settings.weapon.transparency,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        esp.settings.weapon.transparency = Value;
    end
});
weaponGB:AddLabel("Color"):AddColorPicker("weaponColor", {
    Default = esp.settings.weapon.color,
    Title = "Color",
    Transparency = 0,

    Callback = function(Value)
        esp.settings.weapon.color = Value;
    end
});
weaponGB:AddDivider()
weaponGB:AddToggle("weaponOutline", {
    Text = "Outline";
    Default = true;
    Tooltip = "enable / disable text outline";

    Callback = function(Value)
        esp.settings.weapon.outline = Value;
    end
});
weaponGB:AddLabel("Outline Color"):AddColorPicker("weaponOutlineColor", {
    Default = esp.settings.weapon.outlineColor,
    Title = "Outline Color",
    Transparency = 0,

    Callback = function(Value)
        esp.settings.weapon.outlineColor = Value;
    end
});

local MenuGroup = Tabs["UI Settings"]:AddRightGroupbox("Menu");
MenuGroup:AddButton("Unload", function() Library:Unload() end);
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {Default = "End", NoUI = true, Text = "Menu keybind"});
Library.ToggleKeybind = Options.MenuKeybind;
ThemeManager:SetLibrary(Library);
ThemeManager:ApplyToTab(Tabs["UI Settings"]);
ThemeManager:ApplyTheme("Quartz");