if not game:IsLoaded() then
    game.Loaded:Wait();
end

local Tick = tick();

local Functions = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Uvxtq/Custom-Lua-Functions/main/Loader.lua"))();
local rconsolelog = Functions.rconsolelog;
local filtergc = Functions.filtergc;
local ESP = Functions.ESP;

local rconsoletop = rconsoletop or function() end;

rconsolename("Weaponry Debug Console");
rconsoleclear();
rconsoletop(true)

local Services = setmetatable({},{
    __index = function(self, Index)
        local Service = game:GetService(Index);

        if Service then
            self[Index] = Service;

            return Service;
        end
    end,
})

LPH_NO_UPVALUES = function(...) return ... end;

local Linoria = "https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/";

local Library = loadstring(game:HttpGet((Linoria .. 'Library.lua')))();

local ThemeManager = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Uvxtq/Project-AlphaZero/main/AlphaZero/Theme%20Manager.lua")))();
local SaveManager = loadstring(game:HttpGet(Linoria .. 'addons/SaveManager.lua'))();

local Players = Services.Players;
local LocalPlayer = Players.LocalPlayer;
local Camera = workspace.CurrentCamera;
local Mouse = LocalPlayer:GetMouse();

local TeamCheck = false;

LocalPlayer.CharacterAdded:Connect(function()
    if #Services.Teams:GetTeams() ~= 0 then
        TeamCheck = true;

        ESP:DeInit();

        ESP:Init({"Box", "Nametag"}, {
            Color = Color3.fromRGB(255, 255, 255),
            TeamCheck = TeamCheck,
            Distance = 1000,
            Rainbow = true,
        });
    else
        TeamCheck = false;

        ESP:DeInit();

        ESP:Init({"Box", "Nametag"}, {
            Color = Color3.fromRGB(255, 255, 255),
            TeamCheck = TeamCheck,
            Distance = 1000,
            Rainbow = true,
        });
    end
end)

if #Services.Teams:GetTeams() ~= 0 then
    TeamCheck = true;
else
    TeamCheck = false;
end

if not LocalPlayer.Character then
    rconsolelog("Error", "Character not found, waiting for character to load");

    LocalPlayer.CharacterAdded:Wait();

    rconsolelog("Success", "Character loaded");
end

rconsolelog("Loading", "Finding important functions in gc");

local ReloadWeapon = filtergc("function", {
 Name = "reloadWeapon"
}, true)

local InventoryManager = filtergc("function", {
 Name = "InventoryManager"
}, true)


local FireWeapon = filtergc("function", {
    Name = "FireWeapon"
}, true)

rconsolelog("Info", "Successfully found important functions in gc");

rconsolelog("Loading", "Loading functions");

local KillallToggle = false;
local Weaponry = {}; do
    function Weaponry:IsVisible(Player, Part)
        local Parts = Camera:GetPartsObscuringTarget({Camera.CFrame.Position, Player.Character[Part].Position}, {Player.Character})

        for Index, Part in next, Parts do
            if Part.Transparency == 1 or Part.CanCollide == false then
                Parts[Index] = nil;
            end
        end

        return #Parts == 0;
    end

    function Weaponry:IsNotSameTeam(Player, Toggle)
        return not Toggle or Player.Team ~= LocalPlayer.Team;
    end

    function Weaponry:IsAlive(Player)
        return Player and Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.Health > 0;
    end

    function Weaponry:IsOnScreen(Part)
        local _, OnScreen = Camera:WorldToViewportPoint(Part.Position);

        return OnScreen;
    end

    function Weaponry:IsInFOV(Player, FOVSize, Toggle)
        local Vector, OnScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position);

        return not Toggle or OnScreen and (Vector2.new(Vector.X, Vector.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude <= FOVSize;
    end

    function Weaponry:GetClosestToMouseInFov()
        local ClosestPlayer = nil;
        local ClosestDistance = math.huge;

        for _, Player in next, Players:GetPlayers() do
            if Player and Player ~= LocalPlayer and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                if self:IsNotSameTeam(Player, TeamCheck) and self:IsAlive(Player) and Player.Character:FindFirstChild("ForceField") == nil then
                    local Distance = (Mouse.Hit.Position - Player.Character.HumanoidRootPart.Position).Magnitude;

                    if Distance < ClosestDistance and self:IsOnScreen(Player.Character.HumanoidRootPart) then
                        ClosestPlayer = Player;
                        ClosestDistance = Distance;
                    end
                end
            end
        end

        return ClosestPlayer;
    end

    function Weaponry:KillAll()
        for _, Player in next, Players:GetChildren() do
            if not KillallToggle then break; end

            if Player ~= LocalPlayer and Player.Character and not Player.Character:FindFirstChild("ForceField") and self:IsNotSameTeam(Player, TeamCheck) then
                local PlayerChar = Player.Character;

                if PlayerChar and PlayerChar:FindFirstChild("HumanoidRootPart") and not PlayerChar:FindFirstChild("ForceField") and self:IsAlive(Player) then
                    repeat task.wait();
                        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            LocalPlayer.Character.HumanoidRootPart.CFrame = PlayerChar.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0);
                            Camera.CFrame = CFrame.new(Camera.CFrame.Position, (PlayerChar.Head.Position - Vector3.new(0, 2, 0)));

                            pcall(FireWeapon);
                        end
                    until PlayerChar.Humanoid.Health <= 0 or not KillallToggle;
                end
            end
        end
    end
end;

local function Find(Table, Name)
    for Index, Value in next, Table do
        if typeof(Value) == "table" then
            local Found = Find(Value, Name);

            if Found then
                return Found;
            end
        elseif typeof(Index) == "string" and Index == Name then
            return Value;
        end
    end
end

local Window = Library:CreateWindow({
    Title = string.format("Weaponry | %s", LocalPlayer.Name),
    Center = true,
    AutoShow = true,
})

local Tabs = {
    ["Main Tab"] = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
};

local MainTab = Tabs["Main Tab"]:AddLeftGroupbox("Main");

MainTab:AddToggle("Silent Aim", {
    Text = "Silent Aim",
    Default = false,
    Tooltip = "Redirects your bullets to the closest player to your mouse",
})

MainTab:AddToggle("Auto Reload", {
    Text = "Auto Reload",
    Default = false,
    Tooltip = "Automatically reloads your weapon when it runs out of ammo",
})

MainTab:AddToggle("Inf Ammo", {
    Text = "Inf Ammo",
    Default = false,
    Tooltip = "Makes your weapon have infinite ammo",
})

MainTab:AddToggle("Always Sprint", {
    Text = "Always Sprint",
    Default = false,
    Tooltip = "Makes you always sprint",
})

MainTab:AddToggle("Funny Head", {
    Text = "Makes your head go brrrr",
    Default = false,
    Tooltip = "Makes your head go brrrr on others screens",
})

local HeadChance = 25;
MainTab:AddSlider("Head Chance", {
    Text = "Hit Head Chance",
    Default = 25,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Compact = false,
    Callback = function(HeadChanceValue)
        HeadChance = HeadChanceValue;
    end
})

MainTab:AddToggle("Big Head", {
    Text = "Big Head Hitbox",
    Default = false,
    Tooltip = "Makes the enemies head bigger so you can hit people easier",
})

MainTab:AddToggle("Kill All", {
    Text = "Kill All",
    Default = false,
    Tooltip = "Kills all players on the server",
})

rconsolelog("Info", "Successfully loaded functions");

rconsolelog("Loading", "Hooking cat");

local Raycast = require(Services.ReplicatedStorage.SharedModules.RayCat);

local function RandomHit(Percentage)
    local Random = Random.new();

    return Random:NextNumber(0, 100) < Percentage and "Head" or "HumanoidRootPart";
end

local OldRayCast; OldRayCast = hookfunction(Raycast.cat, LPH_NO_UPVALUES(function(...)
    local Args = {...};
    local Position, Direction = Args[1], Args[2];
    local Target = Weaponry:GetClosestToMouseInFov();
    local RandomPart = RandomHit(HeadChance);

    if Target and Toggles["Silent Aim"] then
        local Character = Target.Character;
        local HitPart = Character and Character:FindFirstChild(RandomPart);

        if HitPart and Weaponry:IsVisible(Target, RandomPart) and Weaponry:IsInFOV(Target, 250, true) and Character:FindFirstChild("ForceField") == nil then
            Direction = (HitPart.Position - Position).Unit * 1000;
        end
    end

    return OldRayCast(Position, Direction, unpack(Args, 3));
end))

rconsolelog("Info", "Successfully hooked cat");

rconsolelog("Loading", "Loading Gun Mods");

local CurrentWeapons = nil;
local Stats = nil;

if not CurrentWeapons or not Stats then
    repeat task.wait();
        CurrentWeapons = debug.getupvalues(InventoryManager)[5];
        Stats = debug.getupvalues(FireWeapon)[2];
    until CurrentWeapons and Stats;
end

task.spawn(function()
    while true do task.wait()
        if Library.Unloaded then break; end

        for _, Weapon in next, CurrentWeapons do
            local CurrentAmmo = Find(Weapon, "CurrentAmmo");

            if tonumber(CurrentAmmo) and tonumber(CurrentAmmo) == 0 and Toggles["Auto Reload"].Value then
                ReloadWeapon();
            end
        end

        if Toggles["Inf Ammo"].Value then
            Stats = debug.getupvalue(FireWeapon, 2);

            if Stats and Stats.WeaponStats then 
                Services.ReplicatedStorage.Remotes.WeaponHandler:FireServer(3, Stats);
                Stats.CurrentAmmo = Stats.WeaponStats.MaxAmmo;
            end
        end
    end
end)

task.spawn(function()
    while true do task.wait()
        if Library.Unloaded then break; end
        KillallToggle = Toggles["Kill All"].Value;

        if Toggles["Kill All"].Value then
            Weaponry:KillAll();
        end
    end
end)

LocalPlayer.CharacterAdded:Connect(function()
    if Library.Unloaded then return; end

    task.spawn(function()
        if Toggles["Kill All"].Value then
            task.wait(1.5);

            local VirtualUser = game:GetService("VirtualUser");
            VirtualUser:CaptureController();

            VirtualUser:SetKeyDown("w");
            task.wait(0.5);
            VirtualUser:SetKeyUp("w");
        end
    end)
end)

rconsolelog("Info", "Successfully loaded Gun Mods");

hookfunction(LocalPlayer.Kick, function()
    rconsolelog("Info", "Prevented kick!");
end)

rconsolelog("Loading", "Initializing Esp");

ESP:Init({"Box", "Nametag"}, {
    Color = Color3.fromRGB(255, 255, 255),
    TeamCheck = TeamCheck,
    Distance = 1000,
    Rainbow = true,
});

local UIS = game:GetService("UserInputService");

task.spawn(function()
    local FOVCircle = Drawing.new("Circle");
    FOVCircle.Visible = false;
    FOVCircle.Thickness = 1;
    FOVCircle.NumSides = 100;
    FOVCircle.Filled = false;
    FOVCircle.Color = Color3.fromRGB(255, 255, 255);
    FOVCircle.Radius = 0;
    FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2);

    while true do task.wait()
        if Library.Unloaded then break; end

        if UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
            FOVCircle.Radius = 300;
            FOVCircle.Color = Color3.fromHSV(tick() / 10 % 1, 1, 1);
            continue;
        end

        FOVCircle.Position = Vector2.new(Mouse.X, Mouse.Y + 36);
        FOVCircle.Radius = 250;
        FOVCircle.Visible = true;
        FOVCircle.Color = Color3.fromHSV(tick() / 10 % 1, 1, 1);
    end
end)

rconsolelog("Info", "Successfully initialized Esp");

local InputConfigs = require(Services.ReplicatedStorage.ClientModules.InputConfigs);

task.spawn(function()
    while true do task.wait(0.01)
        if Library.Unloaded then break; end

        if Toggles["Always Sprint"].Value then
            rawset(InputConfigs, "SprintHolding", true);
        end
    end
end)

-- Funny head movement
local OldRep; OldRep = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...};
    local Method = getnamecallmethod();

    if Method == "FireServer" and self.Name == "CharacterReplicator" and Toggles["Funny Head"].Value then
        Args[1] = math.rad(math.random(-180, 180));
        Args[2] = math.rad(math.random(-180, 180));
        Args[3] = nil;
        Args[4] = math.rad(math.random(-180, 180));
        Args[5] = Vector2.new(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)));
        Args[6] = math.rad(math.random(-180, 180));
    end

    return OldRep(self, unpack(Args));
end)

local OldHitboxHead; OldHitboxHead = hookmetamethod(game, "__index", function(self, key)
    if tostring(self) == "HitboxHead" and key == "Size" then
        return Vector3.new(1.2, 1.1, 1.1);
    end

    return OldHitboxHead(self, key);
end)

local OverrideHitboxHead = false;
task.spawn(function()
    while true do task.wait()
        if Library.Unloaded then break; end

        if Toggles["Big Head"].Value then
            if Toggles["Kill All"].Value then
                OverrideHitboxHead = true;
                return;
            end

            for _, Hitbox in next, workspace.Hitbox:GetChildren() do
                if Hitbox:FindFirstChild("HitboxHead") and Hitbox.HitboxHead.Size == Vector3.new(1.2, 1.1, 1.1) then
                    Hitbox.HitboxHead.Size = Vector3.new(30, 30, 30);
                    --Hitbox.HitboxHead.Transparency = 0.8;
                end
            end
        else
            if OverrideHitboxHead then
                if not Toggles["Kill All"].Value then
                    OverrideHitboxHead = false;
                end

                return;
            end

            for _, Hitbox in next, workspace.Hitbox:GetChildren() do
                if Hitbox:FindFirstChild("HitboxHead") and Hitbox.HitboxHead.Size == Vector3.new(30, 30, 30) then
                    Hitbox.HitboxHead.Size = Vector3.new(1.2, 1.1, 1.1);
                    --Hitbox.HitboxHead.Transparency = 0;
                end
            end
        end
    end
end)

-- local bodyspin = nil;
-- task.spawn(function()
--     while true do task.wait()
--         if (bodyspin == nil or bodyspin ~= nil and bodyspin.Parent ~= LocalPlayer.Character.HumanoidRootPart) then
--             bodyspin = Instance.new("BodyAngularVelocity")
--             bodyspin.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
--             bodyspin.AngularVelocity = Vector3.new(60, 60, 60)
--             bodyspin.Parent = LocalPlayer.Character.HumanoidRootPart
--         else
--             bodyspin.MaxTorque = Vector3.new(false and math.huge or 0, true and math.huge or 0, false and math.huge or 0)
--             bodyspin.AngularVelocity = Vector3.new(60, 60, 60)
--         end
--     end
-- end)

rconsolelog("Success", string.format("Loaded script in %s ms", math.floor((tick() - Tick) * 1000)));

Library:SetWatermarkVisibility(true)

Library.KeybindFrame.Visible = false;

Library:OnUnload(function()
    Library.Unloaded = true;
end)

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu');

MenuGroup:AddButton("Unload UI", function() Library:Unload() end);
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {Default = "RightControl", NoUI = true, Text = "Menu keybind"});

Library.ToggleKeybind = Options.MenuKeybind;

ThemeManager:SetLibrary(Library);
SaveManager:SetLibrary(Library);

SaveManager:IgnoreThemeSettings();

SaveManager:SetIgnoreIndexes({"MenuKeybind"});

ThemeManager:SetFolder("AlphaZero");
SaveManager:SetFolder("AlphaZero/Anime Souls Simulator");

SaveManager:BuildConfigSection(Tabs["UI Settings"]);

ThemeManager:ApplyToTab(Tabs["UI Settings"]);

task.spawn(function()
    while game:GetService('RunService').RenderStepped:Wait() do
        if Library.Unloaded then break; end

        if Toggles.Rainbow and Toggles.Rainbow.Value then
            local Registry = Window.Holder.Visible and Library.Registry or Library.HudRegistry;

            for _, Object in next, Registry do
                for Property, ColorIdx in next, Object.Properties do
                    if ColorIdx == 'AccentColor' or ColorIdx == 'AccentColorDark' then
                        local Instance = Object.Instance;
                        local yPos = Instance.AbsolutePosition.Y;

                        local Mapped = Library:MapValue(yPos, 0, 1080, 0, 0.5) * 1.5;
                        local Color = Color3.fromHSV((Library.CurrentRainbowHue - Mapped) % 1, 0.8, 1);

                        if ColorIdx == 'AccentColorDark' then
                            Color = Library:GetDarkerColor(Color);
                        end

                        Instance[Property] = Color;
                    end
                end
            end
        end
    end
end)

Toggles.Rainbow:OnChanged(function()
    if not Toggles.Rainbow.Value then
        ThemeManager:ThemeUpdate()
    end
end)

local function GetLocalTime()
 local Time = os.date("*t")
 local Hour = Time.hour;
 local Minute = Time.min;
 local Second = Time.sec;

 local AmPm = nil;
 if Hour >= 12 then
  Hour = Hour - 12;
  AmPm = "PM";
 else
  Hour = Hour == 0 and 12 or Hour;
  AmPm = "AM";
 end

 return string.format("%s:%02d:%02d %s", Hour, Minute, Second, AmPm);
end

local DayMap = {"st", "nd", "rd", "th"};
local function FormatDay(Day)
    local LastDigit = Day % 10;
    if LastDigit >= 1 and LastDigit <= 3 then
        return string.format("%s%s", Day, DayMap[LastDigit]);
    end

    return string.format("%s%s", Day, DayMap[4]);
end

local MonthMap = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
local function GetLocalDate()
 local Time = os.date("*t")
 local Day = Time.day;

 local Month = nil;
 if Time.month >= 1 and Time.month <= 12 then
  Month = MonthMap[Time.month];
 end

 return string.format("%s %s", Month, FormatDay(Day));
end

local function GetLocalDateTime()
 return GetLocalDate() .. " " .. GetLocalTime();
end

Toggles.Rainbow:SetValue(true);

Library:Notify(string.format('Loaded script in %.2f second(s)!', tick() - Tick), 5);

task.spawn(function()
    while true do task.wait(0.1)
        if Library.Unloaded then break; end

        local Ping = string.split(string.split(game.Stats.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1], ".")[1];
        local Fps = string.split(game.Stats.Workspace.Heartbeat:GetValueString(), ".")[1];
        local AccountName = LocalPlayer.Name;

        Library:SetWatermark(string.format("%s | %s | %s FPS | %s Ping", GetLocalDateTime(), AccountName, Fps, Ping));
    end
end)