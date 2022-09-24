--crim start
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ReplicatedFirst   = game:GetService("ReplicatedFirst")
local UserInputService  = game:GetService("UserInputService")
local RunService        = game:GetService("RunService")
local Lighting          = game:GetService("Lighting")
local Players           = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
local PlayerGui   = LocalPlayer.PlayerGui
local Mouse       = LocalPlayer:GetMouse()
local Camera      = workspace.CurrentCamera

local Context = game:GetService("ScriptContext")
for _, Connection in next, getconnections(Context.Error) do
    Connection:Disable()
end

local function Create(Object, Properties, Parent)
    local Obj = Instance.new(Object)

    for i,v in pairs (Properties) do
        Obj[i] = v
    end
    if Parent ~= nil then
        Obj.Parent = Parent
    end

    return Obj
end

local function Assert(Bool, Text)
    if not Bool then
        rconsoleprint(Text.."\n")
        rconsoleprint("Please wait for a update.")
        wait(9e9)
    end
end
local Map = workspace:FindFirstChild("Map")
Assert(Map, "Unable to find Map")

local Dealers = Map:FindFirstChild("Shopz")
Assert(Dealers, "Unable to find Dealers [Shopz]")

local Atms = Map:FindFirstChild("ATMz")
Assert(Atms, "Unable to find Dealers [ATMz]")

local Safes = Map:FindFirstChild("BredMakurz")
Assert(Safes, "Unable to find Safes [BredMakurz]")

local Filter = workspace:FindFirstChild("Filter")
Assert(Filter, "Unable to find Filter")

local DroppedMoney = Filter:FindFirstChild("SpawnedBread")
Assert(DroppedMoney, "Unable to find DroppedMoney [SpawnedBread]")

local Piles = Filter:FindFirstChild("SpawnedPiles")
Assert(Piles, "Unable to find Piles [SpawnedPiles]")

local PilePickup = ReplicatedStorage.Events.PIC_PU
local CashPickup = ReplicatedStorage.Events.CZDPZUS

local HeadSize = Vector3.new(1.2, 1, 1)
local RayCheck
for i,v in next, getgc(true) do
    if type(v) == "table" and rawget(v, "ONRH_S4") and type(rawget(v, "ONRH_S4")) == "function" then
        RayCheck = v
        break
    end
end

Assert(RayCheck, "Unable to find RayCheck")

for i,v in next, getconstants(RayCheck.ONRH_S4) do
    if v == 10 or v == 1.5 then
        setconstant(RayCheck.ONRH_S4, i, math.huge)
    end
end

local ChatFrame = LocalPlayer.PlayerGui.Chat.Frame
local function ShowChat(Active)
    Active = type(Active) == "table" and Active.Toggle or Active == true

    ChatFrame.ChatChannelParentFrame.Visible = Active
    ChatFrame.ChatBarParentFrame.Position = ChatFrame.ChatChannelParentFrame.Position + UDim2.new(UDim2.new(), ChatFrame.ChatChannelParentFrame.Size.Y)
end

local Skyboxes = {
    ["none"] = {
        SkyboxLf = "rbxassetid://252760980",
  SkyboxBk = "rbxassetid://252760981",
  SkyboxDn = "rbxassetid://252763035",
  SkyboxFt = "rbxassetid://252761439",
  SkyboxLf = "rbxassetid://252760980",
  SkyboxRt = "rbxassetid://252760986",
  SkyboxUp = "rbxassetid://252762652",
    },
    ["nebula"] = {
  SkyboxLf = "rbxassetid://159454286",
  SkyboxBk = "rbxassetid://159454299",
  SkyboxDn = "rbxassetid://159454296",
  SkyboxFt = "rbxassetid://159454293",
  SkyboxLf = "rbxassetid://159454286",
  SkyboxRt = "rbxassetid://159454300",
  SkyboxUp = "rbxassetid://159454288",
 },
    ["vaporwave"] = {
  SkyboxLf = "rbxassetid://1417494402",
  SkyboxBk = "rbxassetid://1417494030",
  SkyboxDn = "rbxassetid://1417494146",
  SkyboxFt = "rbxassetid://1417494253",
  SkyboxLf = "rbxassetid://1417494402",
  SkyboxRt = "rbxassetid://1417494499",
  SkyboxUp = "rbxassetid://1417494643",
 },
 ["clouds"] = {
  SkyboxLf = "rbxassetid://570557620",
  SkyboxBk = "rbxassetid://570557514",
  SkyboxDn = "rbxassetid://570557775",
  SkyboxFt = "rbxassetid://570557559",
  SkyboxLf = "rbxassetid://570557620",
  SkyboxRt = "rbxassetid://570557672",
  SkyboxUp = "rbxassetid://570557727",
 },
 ["twilight"] = {
  SkyboxLf = "rbxassetid://264909758",
  SkyboxBk = "rbxassetid://264908339",
  SkyboxDn = "rbxassetid://264907909",
  SkyboxFt = "rbxassetid://264909420",
  SkyboxLf = "rbxassetid://264909758",
  SkyboxRt = "rbxassetid://264908886",
  SkyboxUp = "rbxassetid://264907379",
 },
}

local ClientWarnRemote = ReplicatedStorage.Events2.ClientWarn
local function ClientWarn(Settings)
    ClientWarnRemote:Fire({Settings.Text or "No Message", Settings.Length or 1, Settings.Color or Color3.fromRGB(255, 121, 121), Settings.OutlineColor or Color3.new(0, 0, 0)}) 
end

local Debris = workspace:FindFirstChild("Debris")

local menu
do
    local library = loadstring(game:HttpGet("https://pastebin.com/raw/9Nfr6Pdy"))()

    menu = library.new([[get fucked elite  <font color="rgb(78, 93, 234)">algebra#0001
</font>]], "nemv2\\")
    local tabs = {
        menu.new_tab("http://www.roblox.com/asset/?id=7300477598"),
        menu.new_tab("http://www.roblox.com/asset/?id=7300535052"),
        menu.new_tab("http://www.roblox.com/asset/?id=7300480952"),
        menu.new_tab("http://www.roblox.com/asset/?id=7300486042"),
        menu.new_tab("http://www.roblox.com/asset/?id=7300489566"),
    }

    do
        local _menu = tabs[5].new_section("menu")

        local all_cfgs

        local configs = _menu.new_sector("configs")
        local text
        local list = configs.element("Scroll", "config list", {options = {"none"}}, function(State)
            text:set_value({Text = State.Scroll})
        end)
        text = configs.element("TextBox", "config name")
        configs.element("Button", "save", nil, function()
            if menu.values[5].menu.configs["config name"].Text ~= "none" then
                menu.save_cfg(menu.values[5].menu.configs["config name"].Text)
            end
        end)
        configs.element("Button", "load", nil, function()
            if menu.values[5].menu.configs["config name"].Text ~= "none" then
                menu.load_cfg(menu.values[5].menu.configs["config name"].Text)
            end
        end)

        local function update_cfgs()
            all_cfgs = listfiles("nemv2\\")
            for _,cfg in next, all_cfgs do
                all_cfgs[_] = string.gsub(string.gsub(cfg, "nemv2\\", ""), ".txt", "")
                list:add_value(all_cfgs[_])
            end
        end update_cfgs()

        task.spawn(function()
            while true do
                wait(1)
                update_cfgs()
            end
        end)

        local playercheck = _menu.new_sector("player check")
        playercheck.element("Toggle", "friends are friendly")
        playercheck.element("Toggle", "forcefield check")

        local Positions = {
            ["tower"] = Vector3.new(-4475, 105, -850),
            ["vibe check"] = Vector3.new(-4848, -200, -875),
            ["subway"] = Vector3.new(-4619, -31, -814),
            ["sewers"] = Vector3.new(-4131, -91, -704),
            ["junkyard"] = Vector3.new(-3941, 5, -595),
            ["gas station"] = Vector3.new(-4373, 7, 215),
            ["motel"] = Vector3.new(-4638, 6, -983),
            ["grey wall"] = Vector3.new(-4901, 189, -779),
        }

        local LastTP = tick()

        local teleports = _menu.new_sector("teleports", "Right")
        local locations = teleports.element("Scroll", "locations", {options = {"tower", "vibe check", "subway", "sewers", "junkyard", "gas station", "motel", "grey wall"}})
        teleports.element("Button", "teleport", nil, function(State)
            local SelfCharacter = LocalPlayer.Character
            local SelfRootPart, SelfHumanoid = SelfCharacter and SelfCharacter:FindFirstChild("HumanoidRootPart"), SelfCharacter and SelfCharacter:FindFirstChildOfClass("Humanoid")
            if not SelfCharacter or not SelfRootPart or not SelfHumanoid then return end

            local Time = tick() - LastTP
            if Time < 10 then
                local TimeLeft = math.floor(10 - Time)
                ClientWarn{Text = "Teleport Delay: "..TimeLeft}

                return
            end

            LastTP = tick()
            
            local Position

            if Positions[menu.values[5].menu.teleports.locations.Scroll] ~= nil then
                Position = Positions[menu.values[5].menu.teleports.locations.Scroll]
            else

            end

            if not Position then
                return
            end
            
            SelfRootPart.Position = Vector3.new(0, -1e9, 0)
            wait(1)
            SelfRootPart.Position = Position
        end)
    end
    do
        local Circle = Drawing.new("Circle") do
            Circle.Color = Color3.fromRGB(255, 255, 255)
            Circle.Thickness = 1
            Circle.Transparency = 1
            Circle.Radius = 100
            Circle.Visible = false
        
            RunService.RenderStepped:Connect(function()
                Circle.Position = UserInputService:GetMouseLocation()
            end)
        end

        local aimbot = tabs[2].new_section("aimbot")

        local assist = aimbot.new_sector("assist")
        assist.element("Toggle", "enabled"):add_keybind()
        assist.element("Dropdown", "hitbox", {options = {"closest", "head", "torso"}})
        assist.element("Slider", "smoothing", {default = {min = 1, max = 50, default = 1}})
        assist.element("Toggle", "snap")

        local silent = aimbot.new_sector("silent aim")
        silent.element("Toggle", "enabled"):add_keybind()
        silent.element("Dropdown", "hitbox", {options = {"head", "torso"}})
        silent.element("Slider", "hitchance", {default = {min = 1, max = 100, default = 100}})
        silent.element("Toggle", "visualize silent lock")
        silent.element("Combo", "bullet redirection", {options = {"enabled", "wallbang"}})

        local targeting = aimbot.new_sector("targeting", "Right")
        targeting.element("Dropdown", "prioritize", {options = {"crosshair", "distance", "lowest hp"}})
        targeting.element("Toggle", "visible check")
        targeting.element("Slider", "max distance", {default = {min = 250, max = 15000, default = 15000}})

        local fov = aimbot.new_sector("fov", "Right")
        fov.element("Slider", "fov size", {default = {min = 30, max = 600, default = 100}}, function(State) Circle.Radius = State.Slider end)
        fov.element("Toggle", "draw fov", nil, function(State) Circle.Visible = State.Toggle end):add_color({Color = Color3.fromRGB(84, 101, 255)}, nil, function(State) Circle.Color = State.Color end)
        fov.element("Slider", "sides", {default = {min = 15, max = 100, default = 100}}, function(State) Circle.NumSides = State.Slider end)
        fov.element("Slider", "thickness", {default = {min = 1, max = 4, default = 1}}, function(State) Circle.Thickness = State.Slider end)

        local triggerbot = aimbot.new_sector("triggerbot", "Right")
        triggerbot.element("Toggle", "enabled"):add_keybind()
        triggerbot.element("Slider", "reaction time (ms)", {default = {min = 0, max = 500, default = 150}})
    end
    do
        local players = tabs[3].new_section("players")

        local esp = players.new_sector("esp")
        esp.element("Toggle", "enabled"):add_keybind()
        esp.element("Slider", "max distance", {default = {min = 250, max = 15000, default = 15000}})

        local enemies = players.new_sector("enemies")
        enemies.element("Toggle", "box"):add_color({Color = Color3.fromRGB(255, 255, 255)})
        enemies.element("Toggle", "name"):add_color({Color = Color3.fromRGB(255, 255, 255)})
        enemies.element("Toggle", "health"):add_color({Color = Color3.fromRGB(0, 255, 0)})
        enemies.element("Toggle", "indicators"):add_color({Color = Color3.fromRGB(255, 255, 255)})
        enemies.element("Combo", "types", {options = {"tool", "distance"}})

        local friendlies = players.new_sector("friendlies")
        friendlies.element("Toggle", "box"):add_color({Color = Color3.fromRGB(255, 255, 255)})
        friendlies.element("Toggle", "name"):add_color({Color = Color3.fromRGB(255, 255, 255)})
        friendlies.element("Toggle", "health"):add_color({Color = Color3.fromRGB(0, 255, 0)})
        friendlies.element("Toggle", "indicators"):add_color({Color = Color3.fromRGB(255, 255, 255)})
        friendlies.element("Combo", "types", {options = {"tool", "distance"}})

        local oof = players.new_sector("out of fov", "Right")
        oof.element("Toggle", "enemies"):add_color({Color = Color3.fromRGB(84, 101, 255)})
        oof.element("Toggle", "friendlies"):add_color({Color = Color3.fromRGB(84, 101, 255)})
        oof.element("Slider", "size", {default = {min = 10, max = 15, default = 15}})
        oof.element("Slider", "offset", {default = {min = 100, max = 700, default = 400}})
        oof.element("Combo", "settings", {options = {"outline", "blinking"}})

        local function UpdateChams()
            for _,Player in next, Players:GetPlayers() do
                if Player ~= LocalPlayer then
                    ApplyChams(Player)
                end
            end
        end

        local chams = players.new_sector("chams", "Right")
        chams.element("Toggle", "enemies", nil, UpdateChams):add_color({Color = Color3.fromRGB(141, 115, 245)}, false, UpdateChams)
        chams.element("Toggle", "friendlies", nil, UpdateChams):add_color({Color = Color3.fromRGB(102, 255, 102)}, false, UpdateChams)
        chams.element("Toggle", "through walls", nil, UpdateChams):add_color({Color = Color3.fromRGB(170, 170, 170)}, false, UpdateChams)

        local drawings = players.new_sector("drawings", "Right")
        drawings.element("Dropdown", "font", {options = {"Plex", "Monospace", "System", "UI"}})
        drawings.element("Dropdown", "surround", {options = {"none", "[]", "--", "<>"}})

        local world = tabs[3].new_section("world")

        local worldesp = world.new_sector("world esp")

        local function UpdateSafeChams()
            for _,Safe in next, Safes:GetChildren() do
                local Handle = Safe.MainPart:FindFirstChild("BoxHandleAdornment")
                if not Handle then continue end
                local Visible = string.find(Safe.Name, "Small") and table.find(menu.values[3].world["world esp"]["safe classes"].Combo, "small") or string.find(Safe.Name, "Medium") and table.find(menu.values[3].world["world esp"]["safe classes"].Combo, "medium") or string.find(Safe.Name, "Register") and table.find(menu.values[3].world["world esp"]["safe classes"].Combo, "register")
                Handle.Visible = menu.values[3].world["world esp"]["safes"].Toggle and Visible and true or false
                Handle.Color3 = menu.values[3].world["world esp"]["$safes"].Color
            end
        end
        worldesp.element("Toggle", "safes", nil, UpdateSafeChams):add_color({Color = Color3.fromRGB(255, 115, 115)}, nil, UpdateSafeChams)
        worldesp.element("Combo", "safe classes", {options = {"small", "medium", "register"}, default = {Combo = {"small", "medium", "register"}}}, UpdateSafeChams)

        local function UpdatePilesChams()
            for _,Pile in next, Piles:GetChildren() do
                local Handle = Pile.MeshPart:FindFirstChild("BoxHandleAdornment")
                if not Handle then continue end
        
                Handle.Visible = menu.values[3].world["world esp"]["piles"].Toggle
                Handle.Color3 = menu.values[3].world["world esp"]["$piles"].Color
            end
        end
        worldesp.element("Toggle", "piles", nil, UpdatePilesChams):add_color({Color = Color3.fromRGB(255, 255, 115)}, nil, UpdatePilesChams)

        local function UpdateDealerChams()
            for _,Dealer in next, Dealers:GetChildren() do
                local Handle = Dealer.MainPart:FindFirstChild("BoxHandleAdornment")
                if not Handle then continue end
        
                local Visible = Dealer.Name == "Dealer" and table.find(menu.values[3].world["world esp"]["dealer classes"].Combo, "standard") or Dealer.Name == "ArmoryDealer" and table.find(menu.values[3].world["world esp"]["dealer classes"].Combo, "armoury")
                Handle.Color3 = menu.values[3].world["world esp"]["$dealers"].Color
                Handle.Visible = menu.values[3].world["world esp"]["dealers"].Toggle and Visible or false
            end
        end
        worldesp.element("Toggle", "dealers", nil, UpdateDealerChams):add_color({Color = Color3.fromRGB(255, 115, 255)}, nil, UpdateDealerChams)
        worldesp.element("Combo", "dealer classes", {options = {"standard", "armoury"}, default = {Combo = {"standard", "armoury"}}}, UpdateDealerChams)

        local function UpdateAtmChams()
            for _,Atm in next, Atms:GetChildren() do
                local Handle = Atm.MainPart:FindFirstChild("BoxHandleAdornment")
                if not Handle then continue end
    
                Handle.Color3 = menu.values[3].world["world esp"]["$atms"].Color
                Handle.Visible = menu.values[3].world["world esp"]["atms"].Toggle
            end
        end
        worldesp.element("Toggle", "atms", nil, UpdateAtmChams):add_color({Color = Color3.fromRGB(115, 115, 255)}, nil, UpdateAtmChams)

        local function UpdateCashChams()
            for _,Money in next, DroppedMoney:GetChildren() do
                local Handle = Money:FindFirstChild("BoxHandleAdornment")
                if not Handle then continue end
        
                local Visible = Money:WaitForChild("Value", 5).Value >= menu.values[3].world["world esp"]["minimum cash amount"].Slider
                Handle.Visible = menu.values[3].world["world esp"]["dropped cash"].Toggle and Visible or false
                Handle.Color3 = menu.values[3].world["world esp"]["$dropped cash"].Color
            end
        end
        worldesp.element("Toggle", "dropped cash", nil, UpdateCashChams):add_color({Color = Color3.fromRGB(115, 255, 115)}, nil, UpdateCashChams)
        worldesp.element("Slider", "minimum cash amount", {default = {min = 1, max = 100, default = 1}}, UpdateCashChams)

        local self = world.new_sector("self")
        self.element("Toggle", "fov changer"):add_keybind()
        self.element("Slider", "field of view", {default = {min = 30, max = 120, default = 80}})

        local ColorCorrection = Create("ColorCorrectionEffect", {
            Enabled = false,
            Name = "CustomColorCorrection",
        }, Camera)

        local worldsettings = world.new_sector("world settings", "Right")
        worldsettings.element("Toggle", "color correction", nil, function(State)
            ColorCorrection.Enabled = State.Toggle
        end):add_color({Color = Color3.fromRGB(255, 255, 255)}, nil, function(State)
            ColorCorrection.TintColor = State.Color
        end)
        worldsettings.element("Slider", "saturation", {default = {min = 0, max = 100, default = 0}}, function(State)
            ColorCorrection.Saturation = State.Slider/50
        end)
        worldsettings.element("Toggle", "fullbright")
        worldsettings.element("Dropdown", "skybox", {options = {"none", "nebula", "vaporwave", "clouds", "twilight"}}, function(State)
            local Sky = Lighting:FindFirstChildOfClass("Sky")
            if not Sky then
                return
            end

            local Skybox = Skyboxes[State.Dropdown]

            for i,v in next, Skybox do
                Sky[i] = v
            end
        end)
        worldsettings.element("Toggle", "disable clouds", nil, function(State)
            workspace.Terrain.Clouds.Enabled = not State.Toggle
        end)
        worldsettings.element("Toggle", "force time of day")
        worldsettings.element("Slider", "time of day", {default = {min = 0, max = 24, default = 12}})
        worldsettings.element("Combo", "removals", {options = {"smoke", "smoke vignette", "blind", "bullet holes", "atm blur", "blood vignette"}}, function(State)
            local Combo = State.Combo

            if (table.find(Combo, "atm blur")) then
                Camera.ATMBlur.Enabled = false
            else
                Camera.ATMBlur.Enabled = true
            end
        end)

        Debris.ChildAdded:Connect(function(Child)
            if table.find(menu.values[3].world["world settings"].removals.Combo, "smoke") and Child.Name == "SmokeExplosion" then
                Child:Destroy()

                return
            end
            if table.find(menu.values[3].world["world settings"].removals.Combo, "bullet holes") and Child.Name == "BulletHole" then
                Child:Destroy()

                return
            end
        end)
        Camera.ChildAdded:Connect(function(Child)
            if table.find(menu.values[3].world["world settings"].removals.Combo, "blind") and Child.Name == "BlindEffect" then
                Child.Enabled = false

                return
            end
        end)
        PlayerGui.ChildAdded:Connect(function(Child)
            if Child.Name == "SmokeScreenGUI" and table.find(menu.values[3].world["world settings"].removals.Combo, "smoke vignette") then
                for i,v in next, Child:GetChildren() do
                    v.ImageTransparency = 1
                end
            end
        end)
    end
    do
        local misc = tabs[4].new_section("misc")

        local character = misc.new_sector("character")
        character.element("Toggle", "walkspeed"):add_keybind()
        character.element("Slider", "speed", {default = {min = 20, max = 35, default = 35}})
        character.element("Toggle", "noclip"):add_keybind()
        character.element("Toggle", "infinite stamina"):add_keybind()
        character.element("Combo", "disablers", {options = {"fall damage", "down", "ragdoll", "zawarudo", "jailed", "handcuffed"}})

        local autopickup = misc.new_sector("auto pickup")
        autopickup.element("Toggle", "enabled")
        autopickup.element("Combo", "items", {options = {"cash", "piles"}})

        local hbe = misc.new_sector("hitbox expander", "Right")
        hbe.element("Toggle", "enabled"):add_keybind()
        hbe.element("Slider", "multiplier", {default = {min = 100, max = 400, default = 400}})

        local viewoffset = misc.new_sector("viewmodel offset", "Right")
        viewoffset.element("Toggle", "enabled")
        viewoffset.element("Slider", "x offset", {default = {min = -10, max = 10, default = 0}})
        viewoffset.element("Slider", "y offset", {default = {min = -10, max = 10, default = 0}})
        viewoffset.element("Slider", "z offset", {default = {min = -10, max = 10, default = 0}})

        local other = misc.new_sector("other", "Left")
        other.element("Toggle", "show chat", nil, ShowChat)
        other.element("Toggle", "lockpick hbe")
        other.element("Toggle", "extended zoom", nil, function(State)
            if (State.Toggle) then
                LocalPlayer.CameraMaxZoomDistance = 50
            else
                LocalPlayer.CameraMaxZoomDistance = 8
            end
        end)
        other.element("Toggle", "no jump cooldown")

        local gunmods = misc.new_sector("gun mods", "Right")
        gunmods.element("Toggle", "enabled")
        gunmods.element("Slider", "recoil modifier", {default = {min = 0, max = 100, default = 100}})
        gunmods.element("Slider", "firerate modifier", {default = {min = 1, max = 3, default = 1}})
        gunmods.element("Combo", "other", {options = {"fast equip", "no spread"}})

        PlayerGui.ChildAdded:Connect(function(Child)
            if Child.Name ~= "LockpickGUI" then
                return
            end

            local Location = Child.MF.LP_Frame.Frames
            for i = 1, 3 do
                local Bar = Location["B"..i].Bar
                if menu.values[4].misc["other"]["lockpick hbe"].Toggle then
                    Bar.Size = UDim2.new(0, 35, 0, 500)
                else
                    Bar.Size = UDim2.new(0, 35, 0, 30)
                end
            end
        end)

        local FakeConfig = {}
        function FakeConfig.GetConfig(NIL, Tool)
            local GunSettings = {}

            for Setting, Value in next, require(Tool:WaitForChild("Config")) do
                if menu.values[4].misc["gun mods"].enabled.Toggle then
                    if Setting == "Recoil" then
                        local RecoilModifier = menu.values[4].misc["gun mods"]["recoil modifier"].Slider / 100
                        Value = Value * RecoilModifier
                    end
                    if Setting == "FireRate" then
                        local FireRateModifier = menu.values[4].misc["gun mods"]["firerate modifier"].Slider
                        Value = Value * FireRateModifier
                    end
                    if Setting == "EquipTime" and table.find(menu.values[4].misc["gun mods"]["other"].Combo, "fast equip") then
                        Value = 0.1
                    end
                    if Setting == "Spread" and table.find(menu.values[4].misc["gun mods"]["other"].Combo, "no spread") then
                        Value = 0
                    end
                end

                GunSettings[Setting] = Value;
            end

            return GunSettings
        end

        local RealConfig = ReplicatedStorage.Modules.Config
        local OldRequire; OldRequire = hookfunction(getrenv().require, function(self, ...)
            local args = {...}

            if self == RealConfig then
                return FakeConfig
            end

            return OldRequire(self, unpack(args))
        end)

        local LastPickup = tick()
        RunService.RenderStepped:Connect(function()
            local SelfCharacter = LocalPlayer.Character
            local SelfRootPart, SelfHumanoid = SelfCharacter and SelfCharacter:FindFirstChild("HumanoidRootPart"), SelfCharacter and SelfCharacter:FindFirstChildOfClass("Humanoid")
            if not SelfCharacter or not SelfRootPart or not SelfHumanoid then return end
            if tick() - LastPickup < 5.1 then return end
            if not menu.values[4].misc["auto pickup"].enabled.Toggle then return end

            local Found = false
            if table.find(menu.values[4].misc["auto pickup"].items.Combo, "piles") then
                for _,Pile in pairs (Piles:GetChildren()) do
                    local MainPart = Pile:FindFirstChild("MeshPart")
                    if not MainPart then continue end
                    local Magnitude = (LocalPlayer.Character.HumanoidRootPart.Position - MainPart.Position).Magnitude
            
                    if Magnitude < 7 then
                        PilePickup:FireServer(MainPart)
                        Found = true
                    end
                end
            end
            if table.find(menu.values[4].misc["auto pickup"].items.Combo, "cash") then
                for _,Cash in pairs (DroppedMoney:GetChildren()) do
                    local Magnitude = (LocalPlayer.Character.HumanoidRootPart.Position - Cash.Position).Magnitude
            
                    if Magnitude < 7 then
                        CashPickup:FireServer(Cash)
                        Found = true
                    end
                end
            end
        
            if Found then
                LastPickup = tick()
            end
        end)

        local function OnLocalCharacterAdded(Character)
            if not Character then return end
            repeat wait() until Character:FindFirstChildOfClass("Humanoid")

            local StaminaTbl = {}

            for i,v in pairs (getgc(true)) do
                if type(v) == "table" and rawget(v, "S") then
                    table.insert(StaminaTbl, v)
                end
            end

            local Loop; Loop = RunService.RenderStepped:Connect(function()
                if LocalPlayer.Character ~= Character then
                    Loop:Disconnect()
                    Loop = nil
                end

                if menu.values[4].misc.character["infinite stamina"].Toggle and menu.values[4].misc.character["$infinite stamina"].Active then
                    for _,Stamina in next, StaminaTbl do
                        Stamina.S = 100
                    end
                end
            end)
        end
        OnLocalCharacterAdded(LocalPlayer.Character)
        LocalPlayer.CharacterAdded:Connect(OnLocalCharacterAdded)

        local NoclipLoop = RunService.Stepped:Connect(function()
            if not LocalPlayer.Character then return end
            if not menu.values[4].misc.character.noclip.Toggle or not menu.values[4].misc.character["$noclip"].Active then return end

            for _,part in pairs (LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") and part.CanCollide == true then
                    part.CanCollide = false
                end
            end
        end)
    end
end

local function Ragdoll()
    getrenv()._G.RagdollChar(1)
end

local Friends = {}
local function IsEnemy(Player)
    if menu.values[5].menu["player check"]["friends are friendly"].Toggle and Friends[Player] ~= nil then
        return false
    end
    return true
end
task.spawn(function()
    while true do
        wait(10)
        Friends = {}
        for _,Player in next, Players:GetPlayers() do
            if LocalPlayer:IsFriendsWith(Player.UserId) then
                Friends[Player] = true
            end
        end
    end
end)

function ApplyChams(Player)
    if Player.Character == nil then return end

    local BodyParts = 
    {
    "Torso", "UpperTorso", "LowerTorso",
    "Left Arm", "LeftUpperArm","LeftLowerArm", "LeftHand",
    "Right Arm", "RightUpperArm", "RightLowerArm", "RightHand",
    "Left Leg", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot",
    "Right Leg", "RightUpperLeg", "RightLowerLeg", "RightFoot"
    }

    local Enabled, Color
    if IsEnemy(Player) then
        Enabled = menu.values[3].players.chams["enemies"].Toggle
        Color = menu.values[3].players.chams["$enemies"].Color
    else
        Enabled = menu.values[3].players.chams["friendlies"].Toggle
        Color = menu.values[3].players.chams["$friendlies"].Color
    end
    local Enabled2, Color2 = menu.values[3].players.chams["through walls"].Toggle, menu.values[3].players.chams["$through walls"].Color

    local function ApplyHandle(Part, Handle)
        local Inline, Outline = Part:FindFirstChild("Inline"), Part:FindFirstChild("Outline")
        if not Inline then
            Inline = Create(Handle, {
                Name = "Inline",
                Color3 = Color2,
                Transparency = 0.75,
                ZIndex = 2,
                AlwaysOnTop = true,
                AdornCullingMode = "Never",
                Visible = Enabled and Enabled2 or false,
                Adornee = Part,
            })
            if Handle == "BoxHandleAdornment" then
                Inline.Size = Part.Size + Vector3.new(0.05, 0.05, 0.05)
            else
                Inline.Radius = Part.Size.X / 2 + 0.15
                Inline.Height = Part.Size.Y + 0.3
                Inline.CFrame = CFrame.new(Vector3.new(), Vector3.new(0,1,0))
            end
        end
        if not Outline then
            Outline = Create(Handle, {
                Name = "Outline",
                Color3 = Color,
                Transparency = 0.55,
                Transparency = 0.55,
                ZIndex = 2,
                AlwaysOnTop = false,
                AdornCullingMode = "Never",
                Visible = Enabled,
                Adornee = Part,
            })
            if Handle == "BoxHandleAdornment" then
                Outline.Size = Part.Size + Vector3.new(0.1, 0.1, 0.1)
            else
                Outline.Radius = Part.Size.X / 2 + 0.2
                Outline.Height = Part.Size.Y + 0.35
                Outline.CFrame = CFrame.new(Vector3.new(), Vector3.new(0,1,0))
            end
        end
        Inline.Color3 = Color2
        Inline.Visible = Enabled and Enabled2 or false
        Outline.Color3 = Color
        Outline.Visible = Enabled

        Inline.Parent = Part
        Outline.Parent = Part

        return Inline, Outline
    end

    for _,Part in next, Player.Character:GetChildren() do
        if Part.Name == "Head" and not Part:IsA("LocalScript") and not Part:IsA("Accessory") then
            ApplyHandle(Part, "CylinderHandleAdornment")
        elseif table.find(BodyParts, Part.Name) and not Part:IsA("LocalScript") and not Part:IsA("Accessory") then
            ApplyHandle(Part, "BoxHandleAdornment")
        end
    end

    Player.Character.ChildAdded:Connect(function(Child)
        if Child.Name == "Head" and not Child:IsA("LocalScript") and not Child:IsA("Accessory") then
            ApplyHandle(Child, "CylinderHandleAdornment")
        elseif table.find(BodyParts, Child.Name) and not Child:IsA("LocalScript") and not Child:IsA("Accessory") then
            ApplyHandle(Child, "BoxHandleAdornment")
        end
    end)
end

Players.PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Connect(function()
        RunService.RenderStepped:Wait()
        ApplyChams(Player)
    end)

    Player:GetPropertyChangedSignal("Team"):Connect(function()
        ApplyChams(Player)
    end)
end)
for _,Player in next, Players:GetPlayers() do
    if Player ~= LocalPlayer then
        ApplyChams(Player)

        Player.CharacterAdded:Connect(function()
            RunService.RenderStepped:Wait()
            ApplyChams(Player)
        end)

        Player:GetPropertyChangedSignal("Team"):Connect(function()
            ApplyChams(Player)
        end)
    end
end
LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function()
    for _,Player in next, Players:GetPlayers() do
        ApplyChams(Player)
    end
end)

RunService.Heartbeat:Connect(function()
    for _,Player in next, Players:GetPlayers() do
        local Character = Player.Character
        local RootPart, Humanoid = Character and Character:FindFirstChild("HumanoidRootPart"), Character and Character:FindFirstChildOfClass("Humanoid")
        if not Character or not RootPart or not Humanoid then continue end
        if not Character:FindFirstChild("Head") then continue end
        if menu.values[5].menu["player check"]["forcefield check"].Toggle and Character:FindFirstChildOfClass("ForceField") then continue end
        if not IsEnemy(Player) then continue end
        if Player == LocalPlayer then continue end

        local Head = Character:FindFirstChild("Head")
        if not Head then continue end

        if menu.values[4].misc["hitbox expander"].enabled.Toggle and menu.values[4].misc["hitbox expander"]["$enabled"].Active then
            Head.Size = HeadSize * menu.values[4].misc["hitbox expander"].multiplier.Slider / 100
            Head.Transparency = 0.8
            Head.CanCollide = false
        else
            Head.Size = HeadSize
            Head.Transparency = 0
        end
    end
end)

local TriggerbotDebounce = false
local TriggerbotLoop = RunService.RenderStepped:Connect(function()
    if not menu.values[2].aimbot.triggerbot.enabled.Toggle or not menu.values[2].aimbot.triggerbot["$enabled"].Active then return end
    if menu.open then return end
    if TriggerbotDebounce then return end

    local SelfCharacter = LocalPlayer.Character
    local SelfRootPart, SelfHumanoid = SelfCharacter and SelfCharacter:FindFirstChild("HumanoidRootPart"), SelfCharacter and SelfCharacter:FindFirstChildOfClass("Humanoid")
    if not SelfCharacter or not SelfRootPart or not SelfHumanoid then return end

    local Target = Mouse.Target
    local Player
    if Target and Target.Parent and Players:GetPlayerFromCharacter(Target.Parent) then 
        Player = Players:GetPlayerFromCharacter(Target.Parent)
    end
    if not Target or not Player then return end

    local Character = Player.Character
    local RootPart, Humanoid = Character and Character:FindFirstChild("HumanoidRootPart"), Character and Character:FindFirstChildOfClass("Humanoid")
    if not Character or not RootPart or not Humanoid then return end
    if not Character:FindFirstChild("Head") then return end
    if menu.values[5].menu["player check"]["forcefield check"].Toggle and Character:FindFirstChildOfClass("ForceField") then return end
    if not IsEnemy(Player) then return end
    TriggerbotDebounce = true
    task.spawn(function()
        if menu.values[2].aimbot.triggerbot["reaction time (ms)"].Slider/1000 > 1/60 then
            wait(menu.values[2].aimbot.triggerbot["reaction time (ms)"].Slider/1000)
        end
        mouse1press()
        repeat 
            RunService.RenderStepped:Wait()
        until not Mouse.Target or not Mouse.Target.Parent or Players:GetPlayerFromCharacter(Mouse.Target.Parent) ~= Player
        mouse1release()
        TriggerbotDebounce = false
    end)
end)

local ValidTargets = {}
local AimbotLoop = RunService:BindToRenderStep("updateAimbot", 1, function()
    ValidTargets = {}

    if menu.values[2].aimbot.assist.enabled.Toggle or menu.values[2].aimbot["silent aim"].enabled.Toggle then else return end
    local SelfCharacter = LocalPlayer.Character
    local SelfRootPart, SelfHumanoid = SelfCharacter and SelfCharacter:FindFirstChild("HumanoidRootPart"), SelfCharacter and SelfCharacter:FindFirstChildOfClass("Humanoid")
    if not SelfCharacter or not SelfRootPart or not SelfHumanoid then return end
    if menu.open then return end

    local Params                      = RaycastParams.new()
    Params.FilterType                 = Enum.RaycastFilterType.Blacklist
    Params.IgnoreWater                = true
    Params.FilterDescendantsInstances = {Camera, SelfCharacter, Filter, Debris}

    local Closest      = 999999

    local CameraPosition = Camera.CFrame.Position
    local MousePosition  = Vector2.new(Mouse.X, Mouse.Y)
    for _,Player in pairs (Players:GetPlayers()) do
        local Character = Player.Character
        local RootPart, Humanoid = Character and Character:FindFirstChild("HumanoidRootPart"), Character and Character:FindFirstChildOfClass("Humanoid")
        if not Character or not RootPart or not Humanoid then continue end
        if not Character:FindFirstChild("Head") then continue end
        if menu.values[5].menu["player check"]["forcefield check"].Toggle and Character:FindFirstChildOfClass("ForceField") then continue end
        if not IsEnemy(Player) then continue end
        if Player == LocalPlayer then continue end

        local Head = Character:FindFirstChild("Head")
        if not Head then continue end

        local DistanceFromCharacter = (Camera.CFrame.Position - RootPart.Position).Magnitude
        if menu.values[2].aimbot.targeting["max distance"].Slider < DistanceFromCharacter then continue end

        local Pos, OnScreen = Camera:WorldToViewportPoint(RootPart.Position)
        if not OnScreen then continue end
        local Magnitude = (Vector2.new(Pos.X, Pos.Y) - MousePosition).Magnitude
        if not (Magnitude < menu.values[2].aimbot.fov["fov size"].Slider) then continue end

        local Hitbox = menu.values[2].aimbot.assist.hitbox.Dropdown == "head" and Head or RootPart
        if menu.values[2].aimbot.assist.hitbox.Dropdown == "closest" then
            local HeadPos  = Camera:WorldToViewportPoint(Head.Position)
            local TorsoPos = Camera:WorldToViewportPoint(RootPart.Position)

            local HeadDistance  = (Vector2.new(HeadPos.X, HeadPos.Y) - MousePosition).Magnitude
            local TorsoDistance = (Vector2.new(TorsoPos.X, TorsoPos.Y) - MousePosition).Magnitude

            Hitbox = HeadDistance < TorsoDistance and Head or RootPart
        end

        if menu.values[2].aimbot.targeting["visible check"].Toggle then
            local Direction = Hitbox.Position - CameraPosition
            local Result    = workspace:Raycast(CameraPosition, Direction.Unit * Direction.Magnitude, Params)

            if not Result then continue end
            local Hit, Pos  = Result.Instance, Result.Position

            if not Hit:FindFirstAncestor(Player.Name) then continue end
            table.insert(ValidTargets, {Player, Hitbox, Magnitude, DistanceFromCharacter, Humanoid.Health})
        else
            table.insert(ValidTargets, {Player, Hitbox, Magnitude, DistanceFromCharacter, Humanoid.Health})
        end
    end

    if menu.values[2].aimbot.targeting.prioritize.Dropdown == "crosshair" then
        table.sort(ValidTargets, function(a, b) return a[3] < b[3] end)
    elseif menu.values[2].aimbot.targeting.prioritize.Dropdown == "distance" then
        table.sort(ValidTargets, function(a, b) return a[4] < b[4] end)
    elseif menu.values[2].aimbot.targeting.prioritize.Dropdown == "lowest hp" then
        table.sort(ValidTargets, function(a, b) return a[5] < b[5] end)
    end

    if menu.values[2].aimbot.assist.enabled.Toggle and menu.values[2].aimbot.assist["$enabled"].Active then
        if #ValidTargets ~= 0 then
            local Target = ValidTargets[1]
            local Hitbox = Target[2]

            if menu.values[2].aimbot.assist.snap.Toggle and (Camera.Focus.Position - Camera.CFrame.Position).Magnitude <= 1 then
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, Hitbox.Position)
            else
                local Pos = Camera:WorldToScreenPoint(Hitbox.Position)
                local Magnitude = Vector2.new(Pos.X - Mouse.X, Pos.Y - Mouse.Y)
                mousemoverel(Magnitude.X/(menu.values[2].aimbot.assist.smoothing.Slider + 1), Magnitude.Y/(menu.values[2].aimbot.assist.smoothing.Slider + 1))
            end
        end
    end
end)

local CharStats = ReplicatedStorage.CharStats
local function GetCharStats(Player)
    return CharStats:FindFirstChild(Player or LocalPlayer.Name)
end

local OriginalWalkspeed = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed or 16
local FOV = Camera.FieldOfView
RunService.RenderStepped:Connect(function()
    local SelfCharacter = LocalPlayer.Character
    local SelfRootPart, SelfHumanoid = SelfCharacter and SelfCharacter:FindFirstChild("HumanoidRootPart"), SelfCharacter and SelfCharacter:FindFirstChildOfClass("Humanoid")
    if not SelfCharacter or not SelfRootPart or not SelfHumanoid then return end

    if menu.values[4].misc.character.walkspeed.Toggle and menu.values[4].misc.character["$walkspeed"].Active then
        SelfHumanoid.WalkSpeed = menu.values[4].misc.character.speed.Slider
    else
        SelfHumanoid.WalkSpeed = OriginalWalkspeed
    end
    if menu.values[3].world.self["fov changer"].Toggle and menu.values[3].world.self["$fov changer"].Active then
        Camera.FieldOfView = menu.values[3].world.self["field of view"].Slider
    else
        Camera.FieldOfView = FOV
    end

    if menu.values[4].misc["other"]["no jump cooldown"].Toggle then
        SelfHumanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
    end

    local Stats = GetCharStats()
    if Stats then
        if table.find(menu.values[4].misc.character.disablers.Combo, "down") then
            Stats:FindFirstChild("Downed").Value = false
        end
    end
end)

local OldNewIndex; OldNewIndex = hookmetamethod(game, "__newindex", function(self, key, value)
    local SelfName = tostring(self)

    if not checkcaller() then
        if key == "FieldOfView" then
            if value == 40 then
                value = FOV
            end
            FOV = value

            if menu.values[3].world.self["fov changer"].Toggle and menu.values[3].world.self["$fov changer"].Active then
                value = menu.values[3].world.self["field of view"].Slider
            end

            return OldNewIndex(self, key, value)
        end
        if SelfName == "BloodShot" and table.find(menu.values[3].world["world settings"].removals.Combo, "blood vignette") and key == "ImageTransparency" then
            value = 0
        end
        if key == "WalkSpeed" then
            OriginalWalkspeed = value
            if menu.values[4].misc.character.walkspeed.Toggle and menu.values[4].misc.character["$walkspeed"].Active then
                value = menu.values[4].misc.character.speed.Slider
            end

            return OldNewIndex(self, key, value)
        end
        if key == "Ambient" and menu.values[3].world["world settings"].fullbright.Toggle then
            value = Color3.fromRGB(255, 255, 255)

            return OldNewIndex(self, key, value)
        end
        if key == "ClockTime" and menu.values[3].world["world settings"]["force time of day"].Toggle then
            value = menu.values[3].world["world settings"]["time of day"].Slider

            return OldNewIndex(self, key, value)
        end

        return OldNewIndex(self, key, value)
    end

    return OldNewIndex(self, key, value)
end)
local _Humanoid do
    RunService.RenderStepped:Connect(function()
        _Humanoid = nil
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            _Humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        end
    end)
end
local OldIndex; OldIndex = hookmetamethod(game, "__index", function(self, key)
    local SelfName = tostring(self)
    local caller = getcallingscript()

    if not checkcaller() then
        if _Humanoid and self == _Humanoid then
            if key == "WalkSpeed" then
                return OriginalWalkspeed
            end
        end
        if key == "FieldOfView" then
            if menu.values[3].world.self["fov changer"].Toggle and menu.values[3].world.self["$fov changer"].Active then
                --return menu.values[3].world.self["field of view"].Slider
            end
        end
        if table.find(menu.values[4].misc.character.disablers.Combo, "ragdoll") then
            if key == "Value" then
                if Name == "RagdollTime" or Name == "RagdollTime2" then
                    return 0
                elseif Name == "RagdollSwitch" or Name == "RagdollSwitch2" or Name == "SRagdolled" then
                    return false
                end
            end
            if key == "PlatformStand" then
                return false
            end
        end
        if table.find(menu.values[4].misc.character.disablers.Combo, "zawarudo") then
            if key == "Value" then
                if Name == "ZaWarudo" then
                    return false
                end
            end
        end
        if table.find(menu.values[4].misc.character.disablers.Combo, "handcuffed") then
            if key == "Value" then
                if Name == "Handcuffed" then
                    return false
                end
            end
        end
        if table.find(menu.values[4].misc.character.disablers.Combo, "jailed") then
            if key == "Value" then
                if Name == "Jailed" then
                    return false
                end
            end
        end
        if SelfName == "Head" and key == "Size" then
            return HeadSize
        end
        if self == Mouse and (key == "X" or key == "Y") then
            if #ValidTargets ~= 0 then
                local Target = ValidTargets[1]
                local Hitbox = Target[2]

                if menu.values[2].aimbot["silent aim"].hitbox.Dropdown == "head" then
                    Hitbox = Target[1].Character.Head
                else
                    Hitbox = Target[1].Character.HumanoidRootPart
                end

                if Hitbox ~= nil then
                    if caller and caller.Name == "MouseScript" then
                        if menu.values[2].aimbot["silent aim"]["visualize silent lock"].Toggle then
                            local ScreenPos, OnScreen = Camera:WorldToScreenPoint(Hitbox.Position)
                            return ScreenPos[key]
                        else
                            return OldIndex(self, key)
                        end
                    end
                    if not (math.random(1, 100) <= menu.values[2].aimbot["silent aim"].hitchance.Slider) then return OldIndex(self, key) end
                    
                    local ScreenPos, OnScreen = Camera:WorldToScreenPoint(Hitbox.Position)
                    return ScreenPos[key]
                end
            end
        end
        if SelfName == "FP_Offset" and key == "Value" then
            if menu.values[4].misc["viewmodel offset"].enabled.Toggle then
                return Vector3.new(menu.values[4].misc["viewmodel offset"]["x offset"].Slider/7, menu.values[4].misc["viewmodel offset"]["y offset"].Slider/7, menu.values[4].misc["viewmodel offset"]["z offset"].Slider/7)
            end
        end
    end

    return OldIndex(self, key)
end)

local Shot = {Last = tick(), Count = 0}
local OldNamecall; OldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = tostring(getnamecallmethod())

    if method == "BulkMoveTo" then
        return wait(9e9)
    elseif method == "FireServer" then
        if table.find(menu.values[4].misc.character.disablers.Combo, "fall damage") and self.Name == "__DFfDD" then
            return wait(9e9)
        end
        if self.Name == "0924023902330" then
            return wait(9e9)
        end
    elseif method == "Kick" then
        return wait(9e9)
    end
    if menu.values[2].aimbot["silent aim"].enabled.Toggle and menu.values[2].aimbot["silent aim"]["$enabled"].Active then
        if not (math.random(1, 100) <= menu.values[2].aimbot["silent aim"].hitchance.Slider) then return OldNamecall(self, unpack(args)) end
        if method == "WorldToScreenPoint" then
            if #ValidTargets ~= 0 then
                local Target = ValidTargets[1]
                local Hitbox = Target[2]

                if menu.values[2].aimbot["silent aim"].hitbox.Dropdown == "head" then
                    Hitbox = Target[1].Character.Head
                else
                    Hitbox = Target[1].Character.HumanoidRootPart
                end

                if Hitbox ~= nil then
                    args[1] = Hitbox.Position
                    return OldNamecall(self, unpack(args))
                end
            end
        elseif method == "Raycast" and table.find(menu.values[2].aimbot["silent aim"]["bullet redirection"].Combo, "enabled") then
            if #ValidTargets ~= 0 then
                local Target = ValidTargets[1]
                local Hitbox = Target[2]

                if menu.values[2].aimbot["silent aim"].hitbox.Dropdown == "head" then
                    Hitbox = Target[1].Character.Head
                else
                    Hitbox = Target[1].Character.HumanoidRootPart
                end

                if Hitbox ~= nil and table.find(args[3].FilterDescendantsInstances, LocalPlayer.Character) ~= 1 and table.find(args[3].FilterDescendantsInstances, Camera) ~= 2 and table.find(args[3].FilterDescendantsInstances, LocalPlayer.Character) ~= nil then
                    args[2] = (Hitbox.Position - Camera.CFrame.Position).Unit * (Hitbox.Position - Camera.CFrame.Position).Magnitude

                    if table.find(menu.values[2].aimbot["silent aim"]["bullet redirection"].Combo, "wallbang") then
                        local Time = tick() - Shot.Last
                        if Time > 0.03 then
                            Shot.Count = 0
                            Shot.Last = tick()
                        end

                        if Shot.Count < 15 and tick() - Shot.Last < 0.05 then
                            Shot.Count = Shot.Count + 1

                            args[3].FilterType = Enum.RaycastFilterType.Whitelist
                            args[3].FilterDescendantsInstances = {Target[1].Character}
                        end
                    end
                end
            end
        end
    end

    return OldNamecall(self, unpack(args))
end)

local PlayerDrawings = {}
local Utility        = {}

Utility.Settings = {
    Line = {
        Thickness = 1,
        Color = Color3.fromRGB(0, 255, 0)
    },
    Text = {
        Size = 13,
        Center = true,
        Outline = true,
        Font = Drawing.Fonts.Plex,
        Color = Color3.fromRGB(255, 255, 255)
    },
    Square = {
        Thickness = 1,
        Color = menu.values[3].players.enemies["$box"].Color,
        Filled = false,
    },
    Triangle = {
        Color = Color3.fromRGB(255, 255, 255),
        Filled = true,
        Visible = false,
        Thickness = 1,
    }
}
function Utility.New(Type, Outline, Name)
    local drawing = Drawing.new(Type)
    for i, v in pairs(Utility.Settings[Type]) do
        drawing[i] = v
    end
    if Outline then
        drawing.Color = Color3.new(0,0,0)
        drawing.Thickness = 3
    end
    return drawing
end
function Utility.Add(Player)
    if not PlayerDrawings[Player] then
        PlayerDrawings[Player] = {
            Offscreen = Utility.New("Triangle", nil, "Offscreen"),
            Name = Utility.New("Text", nil, "Name"),
            Tool = Utility.New("Text", nil, "Tool"),
            Distance = Utility.New("Text", nil, "Distance"),
            BoxOutline = Utility.New("Square", true, "BoxOutline"),
            Box = Utility.New("Square", nil, "Box"),
            HealthOutline = Utility.New("Line", true, "HealthOutline"),
            Health = Utility.New("Line", nil, "Health")
        }
    end
end

for _,Player in pairs(Players:GetPlayers()) do
    if Player ~= LocalPlayer then
        Utility.Add(Player)
    end
end
Players.PlayerAdded:Connect(Utility.Add)
Players.PlayerRemoving:Connect(function(Player)
    if PlayerDrawings[Player] then
        for i,v in pairs(PlayerDrawings[Player]) do
            if v then
                v:Remove()
            end
        end

        PlayerDrawings[Player] = nil
    end
end)

local ESPLoop = RunService:BindToRenderStep("updateESP", 205, function()
    for _,Player in pairs (Players:GetPlayers()) do
        local PlayerDrawing = PlayerDrawings[Player]
        if not PlayerDrawing then continue end

        for _,Drawing in pairs (PlayerDrawing) do
            Drawing.Visible = false
        end

        if not menu.values[3].players.esp.enabled.Toggle or not menu.values[3].players.esp["$enabled"].Active then continue end

        local Character = Player.Character
        local RootPart, Humanoid = Character and Character:FindFirstChild("HumanoidRootPart"), Character and Character:FindFirstChildOfClass("Humanoid")
        if not Character or not RootPart or not Humanoid then continue end

        local DistanceFromCharacter = (Camera.CFrame.Position - RootPart.Position).Magnitude
        if menu.values[3].players.esp["max distance"].Slider < DistanceFromCharacter then continue end

        local Pos, OnScreen = Camera:WorldToViewportPoint(RootPart.Position)
        if not OnScreen then
            local VisualTable = menu.values[3].players["out of fov"]
            local Enemy = IsEnemy(Player)
            if Enemy and not VisualTable.enemies.Toggle then continue end
            if not Enemy and not VisualTable.friendlies.Toggle then continue end

            local RootPos = RootPart.Position
            local CameraVector = Camera.CFrame.Position
            local LookVector = Camera.CFrame.LookVector

            local Dot = LookVector:Dot(RootPart.Position - Camera.CFrame.Position)
            if Dot <= 0 then
                RootPos = (CameraVector + ((RootPos - CameraVector) - ((LookVector * Dot) * 1.01)))
            end

            local ScreenPos, OnScreen = Camera:WorldToScreenPoint(RootPos)
            if not OnScreen then
                local Drawing = PlayerDrawing.Offscreen
                local FOV     = 800 - menu.values[3].players["out of fov"].offset.Slider
                local Size    = menu.values[3].players["out of fov"].size.Slider

                local Center = (Camera.ViewportSize / 2)
                local Direction = (Vector2.new(ScreenPos.X, ScreenPos.Y) - Center).Unit
                local Radian = math.atan2(Direction.X, Direction.Y)
                local Angle = (((math.pi * 2) / FOV) * Radian)
                local ClampedPosition = (Center + (Direction * math.min(math.abs(((Center.Y - FOV) / math.sin(Angle)) * FOV), math.abs((Center.X - FOV) / (math.cos(Angle)) / 2))))
                local Point = Vector2.new(math.floor(ClampedPosition.X - (Size / 2)), math.floor((ClampedPosition.Y - (Size / 2) - 15)))

                local function Rotate(point, center, angle)
                    angle = math.rad(angle)
                    local rotatedX = math.cos(angle) * (point.X - center.X) - math.sin(angle) * (point.Y - center.Y) + center.X
                    local rotatedY = math.sin(angle) * (point.X - center.X) + math.cos(angle) * (point.Y - center.Y) + center.Y

                    return Vector2.new(math.floor(rotatedX), math.floor(rotatedY))
                end

                local Rotation = math.floor(-math.deg(Radian)) - 47
                Drawing.PointA = Rotate(Point + Vector2.new(Size, Size), Point, Rotation)
                Drawing.PointB = Rotate(Point + Vector2.new(-Size, -Size), Point, Rotation)
                Drawing.PointC = Rotate(Point + Vector2.new(-Size, Size), Point, Rotation)
                Drawing.Color = IsEnemy(Player) and VisualTable["$enemies"].Color or VisualTable["$friendlies"].Color

                Drawing.Filled = not table.find(menu.values[3].players["out of fov"].settings.Combo, "outline") and true or false
                if table.find(menu.values[3].players["out of fov"].settings.Combo, "blinking") then
                    Drawing.Transparency = (math.sin(tick() * 5) + 1) / 2
                else
                    Drawing.Transparency = 1
                end

                Drawing.Visible = true
            end
        else
            local VisualTable = IsEnemy(Player) and menu.values[3].players.enemies or menu.values[3].players.friendlies

            local Size           = (Camera:WorldToViewportPoint(RootPart.Position - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPart.Position + Vector3.new(0, 2.6, 0)).Y) / 2
            local BoxSize        = Vector2.new(math.floor(Size * 1.5), math.floor(Size * 1.9))
            local BoxPos         = Vector2.new(math.floor(Pos.X - Size * 1.5 / 2), math.floor(Pos.Y - Size * 1.6 / 2))
    
            local Name           = PlayerDrawing.Name
            local Tool           = PlayerDrawing.Tool
            local Distance       = PlayerDrawing.Distance
            local Box            = PlayerDrawing.Box
            local BoxOutline     = PlayerDrawing.BoxOutline
            local Health         = PlayerDrawing.Health
            local HealthOutline  = PlayerDrawing.HealthOutline
    
            if VisualTable.box.Toggle then
                Box.Size = BoxSize
                Box.Position = BoxPos
                Box.Visible = true
                Box.Color = VisualTable["$box"].Color
                BoxOutline.Size = BoxSize
                BoxOutline.Position = BoxPos
                BoxOutline.Visible = true
            end
    
            if VisualTable.health.Toggle then
                Health.From = Vector2.new((BoxPos.X - 5), BoxPos.Y + BoxSize.Y)
                Health.To = Vector2.new(Health.From.X, Health.From.Y - (Humanoid.Health / Humanoid.MaxHealth) * BoxSize.Y)
                Health.Color = VisualTable["$health"].Color
                Health.Visible = true
    
                HealthOutline.From = Vector2.new(Health.From.X, BoxPos.Y + BoxSize.Y + 1)
                HealthOutline.To = Vector2.new(Health.From.X, (Health.From.Y - 1 * BoxSize.Y) -1)
                HealthOutline.Visible = true
            end

            local function SurroundString(String, Add)
                local Left = ""
                local Right = ""

                local Remove = false
                if Add == "[]" then
                    String = string.gsub(String, "%[", "")
                    String = string.gsub(String, "%[", "")

                    Left = "["
                    Right = "]"
                elseif Add == "--" then
                    Left = "-"
                    Right = "-"
                    Remove = true
                elseif Add == "<>" then
                    Left = "<"
                    Right = ">"
                    Remove = true
                end
                if Remove then
                    String = string.gsub(String, Left, "")
                    String = string.gsub(String, Right, "")
                end

                return Left..String..Right
            end
    
            if VisualTable.name.Toggle then
                Name.Text = SurroundString(Player.Name, menu.values[3].players.drawings.surround.Dropdown)
                Name.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 16)
                Name.Color = VisualTable["$name"].Color
                Name.Font = Drawing.Fonts[menu.values[3].players.drawings.font.Dropdown]
                Name.Visible = true
            end
    
            if VisualTable.indicators.Toggle then
                local BottomOffset = BoxSize.Y + BoxPos.Y + 1
                if table.find(VisualTable.types.Combo, "tool") then
                    local Equipped = Player.Character:FindFirstChildOfClass("Tool") and Player.Character:FindFirstChildOfClass("Tool").Name or "None"
                    Equipped = SurroundString(Equipped, menu.values[3].players.drawings.surround.Dropdown)
                    Tool.Text = Equipped
                    Tool.Position = Vector2.new(BoxSize.X/2 + BoxPos.X, BottomOffset)
                    Tool.Color = VisualTable["$indicators"].Color
                    Tool.Font = Drawing.Fonts[menu.values[3].players.drawings.font.Dropdown]
                    Tool.Visible = true
                    BottomOffset = BottomOffset + 15
                end
                if table.find(VisualTable.types.Combo, "distance") then
                    Distance.Text = SurroundString(math.floor(DistanceFromCharacter).."m", menu.values[3].players.drawings.surround.Dropdown)
                    Distance.Position = Vector2.new(BoxSize.X/2 + BoxPos.X, BottomOffset)
                    Distance.Color = VisualTable["$indicators"].Color
                    Distance.Font = Drawing.Fonts[menu.values[3].players.drawings.font.Dropdown]
                    Distance.Visible = true
        
                    BottomOffset = BottomOffset + 15
                end
            end
        end
    end
end)

local function AddObjectListener(Object, _Function)
    for _,Thing in next, Object:GetChildren() do
        _Function(Thing)
    end
    Object.ChildAdded:Connect(_Function)
end
AddObjectListener(Dealers, function(Dealer)
    local MainPart = Dealer:FindFirstChild("MainPart")

    local Visible = Dealer.Name == "Dealer" and table.find(menu.values[3].world["world esp"]["dealer classes"].Combo, "standard") or Dealer.Name == "ArmoryDealer" and table.find(menu.values[3].world["world esp"]["dealer classes"].Combo, "armoury")
    local Handle = Create("BoxHandleAdornment", {
        Size = MainPart.Size,
        AlwaysOnTop = true,
        Adornee = MainPart,
        Color3 = menu.values[3].world["world esp"]["$dealers"].Color,
        Transparency = 0.5,
        ZIndex = 0,
        Visible = menu.values[3].world["world esp"]["dealers"].Toggle and Visible or false,
    }, MainPart)
end)
AddObjectListener(Atms, function(Atm)
    local MainPart = Atm:WaitForChild("MainPart", 10)

    local Handle = Create("BoxHandleAdornment", {
        Size = MainPart.Size,
        AlwaysOnTop = true,
        Adornee = MainPart,
        Color3 = menu.values[3].world["world esp"]["$atms"].Color,
        Transparency = 0.5,
        ZIndex = 0,
        Visible = menu.values[3].world["world esp"]["atms"].Toggle,
    }, MainPart)
end)
AddObjectListener(Safes, function(Safe)
    local MainPart = Safe:WaitForChild("MainPart", 10)

    local Visible = string.find(Safe.Name, "Small") and table.find(menu.values[3].world["world esp"]["safe classes"].Combo, "small") or string.find(Safe.Name, "Medium") and table.find(menu.values[3].world["world esp"]["safe classes"].Combo, "medium") or string.find(Safe.Name, "Register") and table.find(menu.values[3].world["world esp"]["safe classes"].Combo, "register")
    local Handle = Create("BoxHandleAdornment", {
        Size = MainPart.Size,
        AlwaysOnTop = true,
        Adornee = MainPart,
        Color3 = menu.values[3].world["world esp"]["$safes"].Color,
        Transparency = 0.5,
        ZIndex = 0,
        Visible = menu.values[3].world["world esp"]["safes"].Toggle and Visible and true or false,
    }, MainPart)
end)
AddObjectListener(DroppedMoney, function(Money)
    local MainPart = Money

    local Visible = Money:WaitForChild("Value", 5).Value >= menu.values[3].world["world esp"]["minimum cash amount"].Slider
    local Handle = Create("BoxHandleAdornment", {
        Size = MainPart.Size,
        AlwaysOnTop = true,
        Adornee = MainPart,
        Color3 = menu.values[3].world["world esp"]["$dropped cash"].Color,
        Transparency = 0.5,
        ZIndex = 0,
        Visible = menu.values[3].world["world esp"]["dropped cash"].Toggle and Visible or false,
    }, MainPart)
end)
AddObjectListener(Piles, function(Pile)
    local MainPart = Pile:WaitForChild("MeshPart", 5)

    local Handle = Create("BoxHandleAdornment", {
        Size = MainPart.Size,
        AlwaysOnTop = true,
        Adornee = MainPart,
        Color3 = menu.values[3].world["world esp"]["$piles"].Color,
        Transparency = 0.5,
        ZIndex = 0,
        Visible = menu.values[3].world["world esp"]["piles"].Toggle,
    }, MainPart)
end)