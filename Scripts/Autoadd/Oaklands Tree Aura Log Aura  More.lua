--> Macros

if not LPH_OBFUSCATED then
    LPH_JIT_MAX = function(...)
        return ...
    end
end

--> Variables
local Services =
    setmetatable(
    {},
    {
        __index = function(self, index)
            return game:GetService(index)
        end
    }
)
local KiriotESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))
local Version = "v1.2.1"
local Title = "oaklands - sunken " .. Version
local ReplicatedFirst = Services.ReplicatedFirst
local Client = require(ReplicatedFirst.Client)
local GameShared = require(ReplicatedFirst.Client.Interface.Shared)
local Modules = rawget(GameShared, "Modules")
local Changelog = require(Modules.Changelog)
local GetVersion = function()
    local count = 0
    local v6 = nil
    for i, v in next, Changelog.versions do
        if v.Id > count then
            count = v.Id
            v6 = i
        end
    end
    return "v" .. v6
end
local Outdated = GetVersion():gsub("%p+", "") > Version:gsub("%p+", "") and ("bad") or ("good")
local Players = Services.Players
local Player = Players.LocalPlayer
local Character = Player.Character
local module = require(game.ReplicatedFirst.Client)
local tutorial = module.ActiveModules.Tutorial
local invTable = nil
local Colours = {
    Magnetite = BrickColor.new("Bright violet"),
    ["Rosa Quartz"] = BrickColor.new("Carnation pink"),
    Mythril = BrickColor.new("Med. bluish green"),
    Gold = BrickColor.new("Br. yellowish orange"),
    Iron = BrickColor.new("Dark grey"),
    Pyrite = BrickColor.new("Flame yellowish orange"),
    Quartz = BrickColor.new("Institutional white"),
    Tin = BrickColor.new("Light stone grey"),
    Copper = BrickColor.new("Flame reddish orange")
}
local Areas = {
    ["Oak Depot"] = Vector3.new(736, 82, 1677),
    ["Oak Depot Sell"] = Vector3.new(702, 83, 1790),
    ["Lighthouse"] = Vector3.new(1067, 118, 1958),
    ["Dock"] = Vector3.new(945, 79, 1509),
    ["Island"] = Vector3.new(945, 76, 1233),
    ["Crossway"] = Vector3.new(71, 107, 1465),
    ["Junkyard"] = Vector3.new(-550, 133, 2010),
    ["Mountains"] = Vector3.new(-1759, 419, 865),
    ["Abandoned Shelter"] = Vector3.new(-1819, 330, 561),
    ["Beach Hut"] = Vector3.new(-3591, 113, 163),
    ["Lake"] = Vector3.new(-3069, 132, 455)
}

local function Init()
    do
        for i, v in next, getconnections(game:GetService("LogService").MessageOut) do
            v:Disable()
            shared.FoundMessageOutLogger = true
        end
        for i, v in next, getconnections(game:GetService("ScriptContext").Error) do
            v:Disable()
            shared.FoundErrorLogger = true
        end
        if shared.FoundMessageOutLogger then
            local old
            old =
                hookfunction(
                print,
                newcclosure(
                    function(...)
                        return old(("[SW] Debug: %s:%s:%s > "):format(os.date("%H"), os.date("%M"), os.date("%S")), ...)
                    end
                )
            )
            print("Debugging Below")
            for i, v in next, shared do
                print(i, v)
            end
        end
    end
end

local function CheckProcess()
    local Success, Output = pcall(Init)
    if not Success then
        if type(messagebox) == "function" then
            writefile("Oaklands/ErrorLogs/" .. os.time(), Output)
            local Answer =
                messagebox(
                string.format(
                    "Something has gone wrong when bypassing anti-cheat\n\nThis may put you at risk\n\nError has been written to executor path: workspace/Oaklands/ErrorLogs/%s",
                    os.time()
                ),
                "sunken anti cheat bypassing",
                1570
            )
            if Answer == 3 then
                game:Shutdown()
            elseif Answer == 4 then
                CheckProcess()
            elseif Answer == 5 then
                shared.LoadScript = true
            end
        else
            game:Shutdown()
        end
    else
        shared.LoadScript = true
    end
end

CheckProcess()

repeat
    task.wait()
until shared.LoadScript == true

print("Loading Main Script")

if Outdated == "bad" then
    local Answer =
        messagebox(
        "The script is currently outdated, this may put you at risk, would you like to continue?",
        "sunken version checker",
        4
    )
    if Answer == 7 then
        game:Shutdown()
    end
end

if not (Services.StarterGui:GetCoreGuiEnabled("PlayerList")) then
    local Text = Drawing.new("Text")
    Text.Position =
        Vector2.new(
        (workspace.CurrentCamera.ViewportSize.X / 2) - 125,
        workspace.CurrentCamera.ViewportSize.Y / 2 - (Services.GuiService:GetGuiInset().Y / 2)
    )
    Text.Text = "Waiting for you to have a plot"
    Text.Outline = true
    Text.Font = 1
    Text.Size = 28
    Text.Color = Color3.fromRGB(255, 255, 255)
    Text.OutlineColor = Color3.fromHSV(tick() % 3 / 3, 1, 1)
    Text.Visible = true
    print(Text.Text)
    repeat
        task.wait()
        Text.Position =
            Vector2.new(
            (workspace.CurrentCamera.ViewportSize.X / 2) - 125,
            workspace.CurrentCamera.ViewportSize.Y / 2 - (Services.GuiService:GetGuiInset().Y / 2)
        )
        Text.OutlineColor = Color3.fromHSV(tick() % 3 / 3, 1, 1)
    until Services.StarterGui:GetCoreGuiEnabled("PlayerList")
    Text.Text = "Loading"
    task.wait(0.5)
    Text:Remove()
end

local function closestTree()
    return (tutorial:ClosestModel(tutorial.Player.Character:GetPivot().Position, tutorial:GetTreesInRadius()))
end

--> Minified Functions ( Neater Looking Code )

local function Teleport(Pos)
    if Player.Character.Humanoid.Sit == true then
        Pos = Pos + Vector3.new(0, 40, 0)
    end
    Player.Character:PivotTo(typeof(Pos) == "CFrame" and Pos or CFrame.new(Pos))
end

local Hooks = {}
do
    function Hooks.HookingLighting()
        if shared.HookedLighting == true then
            return
        end
        shared.HookedLighting = true
        local old
        old =
            hookmetamethod(
            game,
            "__newindex",
            newcclosure(
                function(self, index, value)
                    if tostring(self) == "Lighting" and shared.FullBright then
                        if index == "ClockTime" then
                            value = 12
                        end
                    end
                    return old(self, index, value)
                end
            )
        )
    end
    function Hooks.HookingHumanoid()
        if shared.HookedHumanoid == true then
            return
        end
        shared.HookedHumanoid = true
        local old
        old =
            hookmetamethod(
            game,
            "__index",
            newcclosure(
                function(self, index)
                    if tostring(self) == "WalkSpeed" or tostring(self) == "JumpPower" then
                        return tostring(self) == "WalkSpeed" and 16 or 50
                    end
                    return old(self, index)
                end
            )
        )
    end
end
print("Loading Hooks")
for i, v in next, Hooks do
    local Success, Output = pcall(v)
    print("Hooked ", i, Success)
end
local Util = {}
print("Loading Util")
do
    function Util.GetVehicle()
        for i, v in next, game:GetService("Workspace").World.Structures:GetChildren() do
            if v.Name:find("VehiclePad") then
                local Owner = v:FindFirstChild("Owner")
                if Owner and Owner.Value == Player then
                    local Vehicle = v:FindFirstChild("RiggedVehicle")
                    if Vehicle then
                        return Vehicle
                    end
                end
            end
        end
    end
    function Util.ModVehicleSpeed(Speed)
        local Vehicle = Util.GetVehicle()
        local VFramework = Vehicle:FindFirstChild("Framework")
        if VFramework then
            local Seats = VFramework:FindFirstChild("Seats")
            if Seats then
                local DriverSeat = Seats:FindFirstChild("VehicleSeat")
                if DriverSeat then
                    DriverSeat.MaxSpeed = Speed
                end
            end
        end
    end
    function Util.CleanVehicle()
        local Vehicle = Util.GetVehicle()
        if Vehicle then
            for i, v in next, Vehicle:GetDescendants() do
                if v:IsA("BasePart") then
                    if v.Material == Enum.Material.CorrodedMetal then
                        v.Material = Enum.Material.SmoothPlastic
                    end
                end
            end
        end
    end
    function Util.ColourVehicle(Colour)
        local Vehicle = Util.GetVehicle()
        if Vehicle then
            local Wheels = Vehicle:FindFirstChild("Wheels")
            local Headlights = Vehicle:FindFirstChild("Framework"):FindFirstChild("Headlights")
            for i, v in next, Vehicle:GetDescendants() do
                if v:IsA("BasePart") and not v:IsDescendantOf(Wheels) and not v:IsDescendantOf(Headlights) then
                    v.Color = Colour
                end
            end
        end
    end
    function Util.GetIndexFromValue(self, value)
        for i, v in next, self do
            if v == value then
                return i
            end
        end
    end
    function Util.GetPlot()
        for i, v in next, game:GetService("Workspace").World.Property:GetChildren() do
            local Owner = v:FindFirstChild("Owner")
            if Owner then
                if Owner.Value == game:GetService("Players").LocalPlayer then
                    return v
                end
            end
        end
    end
    function Util.GetClosestTree()
        local tree, dist = nil, math.huge
        for i, v in next, game:GetService("Workspace").World.TreeRegions.Island:GetChildren() do
            if v:IsA("Model") then
                if v:FindFirstChild("HeptagonPart") then
                    local mag = game.Players.LocalPlayer:DistanceFromCharacter(v:GetPivot().Position)
                    if mag < dist then
                        dist = mag
                        tree = v
                    end
                end
            end
        end
        return tree
    end
    function Util.GetOwnedTrees()
        local trees = {}
        for i, v in next, game:GetService("Workspace").World.LooseItems:GetChildren() do
            if
                v:FindFirstChild("Owner") and tostring(v.Owner.Value) == game.Players.LocalPlayer.Name and
                    v.Name == "Tree"
             then
                if v:FindFirstChildWhichIsA("BasePart") then
                    table.insert(trees, v)
                end
            end
        end
        return trees
    end
    function Util.GetOwnedOres()
        local ores = {}
        for i, v in next, game:GetService("Workspace").World.LooseItems:GetChildren() do
            if
                v:FindFirstChild("Owner") and tostring(v.Owner.Value) == game.Players.LocalPlayer.Name and
                    v.Name == "Rock"
             then
                if v:FindFirstChildWhichIsA("BasePart") then
                    table.insert(ores, v)
                end
            end
        end
        return ores
    end
    function Util.GetLowestTreePart(parts)
        local foot = Character.RightFoot.Position
        local closest, dist = nil, math.huge
        for i, v in next, parts do
            if not v:IsA("BasePart") then
                continue
            end
            local mag = (foot - v.Position).Magnitude
            if mag < dist then
                dist = mag
                closest = v
            end
        end
        return closest
    end
    function Util.GetClosestLog()
        local log, dist = nil, math.huge
        for i, v in next, Util.GetOwnedTrees() do
            local mag = Player:DistanceFromCharacter(v:GetPivot().Position)
            if mag < dist then
                dist = mag
                log = v
            end
        end
        return log
    end
    function Util.KeyPress(keyCode, time)
        Services.VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
        task.wait(time)
        Services.VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
    end
    function Util.GetPlayerByName(Name)
        for i, v in next, Players:GetPlayers() do
            if v ~= Player then
                if v.Name:lower():find(Name:lower()) or v.DisplayName:lower():find(Name:lower()) then
                    return v
                end
            end
        end
    end
    function Util.TeleportToPlayer(Player)
        Teleport(Player.Character and Player.Character:GetPivot())
    end
    function Util.GetOres()
        local ores = {}
        for i, v in next, Services.Workspace.World.RockRegions.Island:GetChildren() do
            if v:GetAttribute("Mineable") == true then
                table.insert(ores, v)
            end
        end
        return ores
    end
    function Util.GetClosestOre()
        local ores = Util.GetOres()
        local ore, dist = nil, math.huge
        for i, v in next, ores do
            local mag = Player:DistanceFromCharacter(v:GetPivot().Position)
            if mag < dist then
                dist = mag
                ore = v
            end
        end
        return ore
    end
    function Util.GetPlayersPlot(Name)
        for i, v in next, Services.Workspace.World.Property:GetDescendants() do
            if v.Name == "Owner" and v.Parent.Parent.Name == "Property" then
                local plotOwner = tostring(v.Value)
                if plotOwner:lower():find(Name:lower()) then
                    return v.Parent:FindFirstChild("MainRegion")
                end
            end
        end
    end
end
local Actions = {}
print("Loading Action")
do
    function Actions.GoToLog()
        local log = Util.GetClosestLog()
        Teleport(log:GetPivot())
    end
    function Actions.GoToOre()
        local ores = Util.GetOwnedOres()
        local ore, dist = nil, math.huge
        for i, v in next, ores do
            local primary = v:FindFirstChildWhichIsA("BasePart")
            local mag = Player:DistanceFromCharacter(primary.Position)
            if mag < dist then
                dist = mag
                ore = v
            end
        end
        Teleport(ore:GetPivot())
    end
    function Actions.BringLogs()
        local trees = Util.GetOwnedTrees()
        for i, v in next, trees do
            Teleport(Character:GetPivot() + Vector3.new(15, 10, 5))
        end
    end
    function Actions.GoToPlot()
        local Plot = Util.GetPlot()
        local Main = Plot:FindFirstChild("MainRegion")
        local Offset = Vector3.new(0, 15, 0)
        Teleport(Main:GetPivot() + Offset)
    end
    function Actions.GoToSell()
        local Offset = Vector3.new(0, 15, 0)
        Teleport(CFrame.new(-535, 135, 1920) + Offset)
    end
    function Actions.GoToMap()
        local Offset = Vector3.new(0, 15, 0)
        Teleport(Services.Workspace.World.SpawnLocation:GetPivot() + Offset)
    end
    function Actions.InfiniteStamina()
        rawset(Client:RequestModule("Stamina"), "CurrentStamina", 9e9)
    end
    function Actions.BypassBlacklists()
        for i, v in next, Services.Workspace.World.Property:GetDescendants() do
            if v:IsA("Part") then
                if Color3.fromRGB(255, 64, 64) == v.Color then
                    v:Destroy()
                end
            end
        end
    end
end
print("Loading ESP")
KiriotESP = KiriotESP()
KiriotESP.Color = Color3.fromRGB(170, 0, 248)
local Functions = {}
function Functions.BreakTree()
    if invTable == nil then
        for _, v in next, getgc(true) do
            if type(v) == "table" and rawget(v, "Inventory") then
                invTable = v
                break
            end
        end
    end
    if invTable then
        local tree = closestTree()
        local Inventory = rawget(invTable, "Inventory")
        if tree and Inventory then
            Inventory:InformServer("SwingStartAttempt", {})
            task.wait(.5)
            local args = {}
            local lowestPart = nil
            local lowestY = math.huge
            for _, v in next, tree:GetDescendants() do
                if v:IsA("MeshPart") and v.Position.Y < lowestY then
                    lowestPart = v
                    lowestY = v.Position.Y
                end
            end
            args.HitPart = lowestPart
            args.HitPosition = lowestPart.Position
            Inventory:InformServer("AttemptChop", args)
        end
    end
end
function Functions.BreakLog()
    if invTable == nil then
        for _, v in next, getgc(true) do
            if type(v) == "table" and rawget(v, "Inventory") then
                invTable = v
                break
            end
        end
    end
    if invTable then
        local tree = Util.GetClosestLog()
        local Inventory = rawget(invTable, "Inventory")
        if tree and Inventory then
            Inventory:InformServer("SwingStartAttempt", {})
            task.wait(.5)
            local args = {}
            local lowestPart = Util.GetLowestTreePart(tree:GetChildren())
            args.HitPart = lowestPart
            args.HitPosition = lowestPart.Position
            Inventory:InformServer("AttemptChop", args)
        end
    end
end
function Functions.BreakOre()
    if invTable == nil then
        for _, v in next, getgc(true) do
            if type(v) == "table" and rawget(v, "Inventory") then
                invTable = v
                break
            end
        end
    end
    if invTable then
        local ore = Util.GetClosestOre()
        local Inventory = rawget(invTable, "Inventory")
        if ore and Inventory then
            Inventory:InformServer("SwingStartAttempt", {})
            task.wait(.5)
            local args = {}
            local lowestPart = Util.GetLowestTreePart(ore:GetChildren())
            args.HitPart = lowestPart
            args.HitPosition = lowestPart.Position
            Inventory:InformServer("AttemptMine", args)
        end
    end
end

print("Loading Functions")

local library =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/drawing/void/source.lua"))()

print("Loading User Interface")

local main =
    library:Load {
    Name = Title .. " | script status: " .. Outdated,
    SizeX = 550,
    SizeY = 600,
    Theme = "Midnight",
    Extension = "oaktree",
    Folder = "oaklands"
}

task.spawn(
    function()
        while task.wait(0.001) do
            library:ChangeThemeOption("Accent", Color3.fromHSV(tick() % 3 / 3, 1, 1))
        end
    end
)

local home = main:Tab("home")

local changelogs =
    home:Section {
    Name = "changelogs",
    Side = "Left"
}

changelogs:Label(
    [[
re-wrote esp

lags when turn on but dont lag after
blame luraph!! omg!! Lurpah!
use configs to get around this ^

rainbow epic gamer mode

]]
)
changelogs:Label("")
changelogs:Label("")
changelogs:Label("")

local tab = main:Tab("main")

local trees =
    tab:Section {
    Name = "trees",
    Side = "Left"
}

local rocks =
    tab:Section {
    Name = "ores",
    Side = "Left"
}

local misc =
    tab:Section {
    Name = "misc",
    Side = "Left"
}

local teleports =
    tab:Section {
    Name = "teleports",
    Side = "Right"
}

local player =
    tab:Section {
    Name = "player",
    Side = "Right"
}

local vehicle =
    tab:Section {
    Name = "vehicle",
    Side = "Left"
}

trees:Toggle {
    Name = "tree aura",
    Flag = "tree aura",
    Callback = function(bool)
        shared.tree_aura = bool
        while shared.tree_aura do
            if not shared.tree_aura then
                break
            end
            Functions.BreakTree()
            task.wait(0.05)
        end
    end
}

trees:Toggle {
    Name = "log aura",
    Flag = "log aura",
    Callback = function(bool)
        shared.log_aura = bool
        while shared.log_aura do
            if not shared.log_aura then
                break
            end
            Functions.BreakLog()
            task.wait(0.05)
        end
    end
}

rocks:Toggle {
    Name = "ore aura",
    Flag = "ore aura",
    Callback = function(bool)
        shared.ore_aura = bool
        while shared.ore_aura do
            if not shared.ore_aura then
                break
            end
            Functions.BreakOre()
            task.wait(0.05)
        end
    end
}

misc:Toggle {
    Name = "full bright",
    Flag = "full bright",
    Callback = function(x)
        shared.FullBright = x
    end
}

misc:Toggle {
    Name = "sprint",
    Flag = "sprint",
    Callback = function(x)
        Util.KeyPress("LeftShift", x == true and 9e9 or 0)
    end
}

misc:Toggle {
    Name = "ctrl + click to tp",
    Flag = "click to tp",
    Callback = function()
    end
}

for i, v in pairs(Areas) do
    teleports:Button {
        Name = i:lower(),
        Callback = function()
            Teleport(CFrame.new(v))
        end
    }
end

teleports:Button {
    Name = "plot",
    Callback = function()
        Teleport(Util.GetPlot():FindFirstChild("MainRegion"):GetPivot())
    end
}

teleports:Button {
    Name = "nearest owned log",
    Callback = function()
        Actions.GoToLog()
    end
}

teleports:Button {
    Name = "nearest owned ore",
    Callback = function()
        Actions.GoToOre()
    end
}

player:Slider {
    Name = "walkspeed",
    Flag = "walkspeed",
    Text = "[value]/24",
    Default = 16,
    Min = 16,
    Max = 24,
    Float = 1,
    Callback = function(value)
    end
}

vehicle:Button {
    Name = "clean car",
    Callback = Util.CleanVehicle
}

vehicle:Slider {
    Name = "max speed",
    Flag = "max speed",
    Text = "[value]/250",
    Default = 50,
    Min = 50,
    Max = 250,
    Float = 1,
    Callback = function(value)
    end
}

vehicle:Button {
    Name = "assign vehicle speed",
    Callback = function()
        Util.ModVehicleSpeed(library.flags["max speed"])
    end
}

vehicle:ColorPicker {
    Name = "vehicle colour",
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "vehicle colour",
    Callback = function(color)
    end
}

vehicle:Button {
    Name = "assign vehicle colour",
    Callback = function()
        Util.ColourVehicle(library.flags["vehicle colour"])
    end
}

vehicle:Box {
    Name = "license plate text",
    Placeholder = "Soggyware",
    Flag = "license_plate_text",
    Callback = function(text)
    end
}

vehicle:Button {
    Name = "assign license plate",
    Callback = function()
        local Vehicle = Util.GetVehicle()
        if Vehicle then
            local Framework = Vehicle:FindFirstChild("Framework")
            if Framework then
                local License = Framework:FindFirstChild("LicensePlate")
                if License then
                    local Container = License:FindFirstChild("SurfaceGui")
                    if Container then
                        local LICENSE = Container:FindFirstChild("LICENSE")
                        LICENSE.Text = library.flags.license_plate_text
                        for i, v in next, Container:GetChildren() do
                            if v.Name == "TextLabel" then
                                if v.Text == "OAKLANDS" or v.Text == "On Top" then
                                    v.Text = "On Top"
                                else
                                    v.Text = "Soggyware"
                                end
                            end
                        end
                    end
                end
            end
        end
    end
}

local esptab = main:Tab("esp")

local esps =
    esptab:Section {
    Name = "esp",
    Side = "Left"
}

local oreespopts =
    esptab:Section {
    Name = "ore esp options",
    Side = "Right"
}

esps:Toggle {
    Name = "toggle",
    Flag = "toggle",
    Callback = function(x)
        KiriotESP:Toggle(x)
    end
}

esps:Toggle {
    Name = "boxes",
    Flag = "boxes",
    Callback = function(x)
        KiriotESP.Boxes = (x)
    end
}

esps:Toggle {
    Name = "names",
    Flag = "names",
    Callback = function(x)
        KiriotESP.Names = (x)
    end
}

esps:Toggle {
    Name = "players",
    Flag = "players",
    Callback = function(x)
        KiriotESP.Players = (x)
    end
}

esps:Toggle {
    Name = "ores",
    Flag = "ores",
    Callback = function(x)
        KiriotESP.Ores = (x)
    end
}

local InsertedOres = {}

local function UpdateESP(v, x, name)
    LPH_JIT_MAX(
        function()
            if v:IsA("Model") and x == "Add" then
                for i2, v2 in next, v:GetDescendants() do
                    if v2:IsA("BasePart") then
                        if v2.Name ~= "Section" then
                            if v:GetAttribute("Mineable") then
                                local NewName = Util.GetIndexFromValue(Colours, v2.BrickColor)
                                if NewName ~= nil then
                                    if not table.find(InsertedOres, v) then
                                        if library.flags[NewName] == true then
                                            table.insert(InsertedOres, v)
                                            KiriotESP:Add(
                                                v2,
                                                {
                                                    Name = NewName or "Unknown Ore",
                                                    IsEnabled = "Ores",
                                                    Color = v2.Color
                                                }
                                            )
                                        elseif library.flags[NewName] == false then
                                            local idx = table.find(InsertedOres, v)
                                            table.remove(InsertedOres, idx)
                                            if KiriotESP.Objects then
                                                local NewName = Util.GetIndexFromValue(Colours, v2.BrickColor)
                                                if NewName ~= nil then
                                                    for i3, v3 in next, KiriotESP.Objects do
                                                        if v3.Name == NewName then
                                                            v3:Remove()
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            elseif x == "Remove" and v:IsA("Model") then
                for i2, v2 in next, v:GetDescendants() do
                    if v2:IsA("BasePart") then
                        if v2.Name ~= "Section" then
                            if v:GetAttribute("Mineable") then
                                local idx = table.find(InsertedOres, v)
                                table.remove(InsertedOres, idx)
                                if KiriotESP.Objects then
                                    if name ~= nil then
                                        for i3, v3 in next, KiriotESP.Objects do
                                            if v3.Name == name then
                                                v3:Remove()
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    )()
end

local function ForceUpdateESP(x, name)
    for i, v in next, game:GetService("Workspace").World.RockRegions:GetDescendants() do
        LPH_JIT_MAX(
            function()
                UpdateESP(v, x == true and "Add" or "Remove", name)
            end
        )()
    end
end

game:GetService("Workspace").World.RockRegions.DescendantAdded:Connect(
    LPH_JIT_MAX(
        function(v)
            UpdateESP(v, "Add")
        end
    )
)
game:GetService("Workspace").World.RockRegions.DescendantRemoving:Connect(
    LPH_JIT_MAX(
        function(v)
            UpdateESP(v, "Remove")
        end
    )
)

for i, v in next, Colours do
    oreespopts:Toggle {
        Name = i:lower(),
        Flag = i,
        Callback = function(x)
            LPH_JIT_MAX(
                function()
                    ForceUpdateESP(x, i)
                end
            )()
        end
    }
end

task.spawn(
    function()
        while task.wait(0.1) do
            Character.Humanoid.WalkSpeed = library.flags.walkspeed
        end
    end
)

game:GetService("UserInputService").InputBegan:Connect(
    function(x)
        pcall(
            function()
                Character = Player.Character
            end
        )
        if
            x.UserInputType == Enum.UserInputType.MouseButton1 and library.flags["click to tp"] and
                game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)
         then
            local pos = Player:GetMouse().Hit
            Teleport(pos)
        end
    end
)

local configs = main:Tab("configuration")
local themes = configs:Section {Name = "Theme", Side = "Left"}
local themepickers = {}
local themelist =
    themes:Dropdown {
    Name = "Theme",
    Default = library.currenttheme,
    Content = library:GetThemes(),
    Flag = "Theme Dropdown",
    Callback = function(option)
        if option then
            library:SetTheme(option:lower())
            for option, picker in next, themepickers do
                picker:Set(library.theme[option])
            end
        end
    end
}
library:ConfigIgnore("Theme Dropdown")
local namebox = themes:Box {Name = "Custom Theme Name", Placeholder = "Custom Theme", Flag = "Custom Theme"}
library:ConfigIgnore("Custom Theme")
themes:Button {Name = "Save Custom Theme", Callback = function()
        if library:SaveCustomTheme(library.flags["Custom Theme"]) then
            themelist:Refresh(library:GetThemes())
            themelist:Set(library.flags["Custom Theme"])
            namebox:Set("")
        end
    end}
local customtheme = configs:Section {Name = "Custom Theme", Side = "Right"}
themepickers["Accent"] =
    customtheme:ColorPicker {
    Name = "Accent",
    Default = library.theme["Accent"],
    Flag = "Accent",
    Callback = function(color)
        library:ChangeThemeOption("Accent", color)
    end
}
library:ConfigIgnore("Accent")
themepickers["Window Background"] =
    customtheme:ColorPicker {
    Name = "Window Background",
    Default = library.theme["Window Background"],
    Flag = "Window Background",
    Callback = function(color)
        library:ChangeThemeOption("Window Background", color)
    end
}
library:ConfigIgnore("Window Background")
themepickers["Window Border"] =
    customtheme:ColorPicker {
    Name = "Window Border",
    Default = library.theme["Window Border"],
    Flag = "Window Border",
    Callback = function(color)
        library:ChangeThemeOption("Window Border", color)
    end
}
library:ConfigIgnore("Window Border")
themepickers["Tab Background"] =
    customtheme:ColorPicker {
    Name = "Tab Background",
    Default = library.theme["Tab Background"],
    Flag = "Tab Background",
    Callback = function(color)
        library:ChangeThemeOption("Tab Background", color)
    end
}
library:ConfigIgnore("Tab Background")
themepickers["Tab Border"] =
    customtheme:ColorPicker {
    Name = "Tab Border",
    Default = library.theme["Tab Border"],
    Flag = "Tab Border",
    Callback = function(color)
        library:ChangeThemeOption("Tab Border", color)
    end
}
library:ConfigIgnore("Tab Border")
themepickers["Tab Toggle Background"] =
    customtheme:ColorPicker {
    Name = "Tab Toggle Background",
    Default = library.theme["Tab Toggle Background"],
    Flag = "Tab Toggle Background",
    Callback = function(color)
        library:ChangeThemeOption("Tab Toggle Background", color)
    end
}
library:ConfigIgnore("Tab Toggle Background")
themepickers["Section Background"] =
    customtheme:ColorPicker {
    Name = "Section Background",
    Default = library.theme["Section Background"],
    Flag = "Section Background",
    Callback = function(color)
        library:ChangeThemeOption("Section Background", color)
    end
}
library:ConfigIgnore("Section Background")
themepickers["Section Border"] =
    customtheme:ColorPicker {
    Name = "Section Border",
    Default = library.theme["Section Border"],
    Flag = "Section Border",
    Callback = function(color)
        library:ChangeThemeOption("Section Border", color)
    end
}
library:ConfigIgnore("Section Border")
themepickers["Text"] =
    customtheme:ColorPicker {Name = "Text", Default = library.theme["Text"], Flag = "Text", Callback = function(color)
        library:ChangeThemeOption("Text", color)
    end}
library:ConfigIgnore("Text")
themepickers["Disabled Text"] =
    customtheme:ColorPicker {
    Name = "Disabled Text",
    Default = library.theme["Disabled Text"],
    Flag = "Disabled Text",
    Callback = function(color)
        library:ChangeThemeOption("Disabled Text", color)
    end
}
library:ConfigIgnore("Disabled Text")
themepickers["Object Background"] =
    customtheme:ColorPicker {
    Name = "Object Background",
    Default = library.theme["Object Background"],
    Flag = "Object Background",
    Callback = function(color)
        library:ChangeThemeOption("Object Background", color)
    end
}
library:ConfigIgnore("Object Background")
themepickers["Object Border"] =
    customtheme:ColorPicker {
    Name = "Object Border",
    Default = library.theme["Object Border"],
    Flag = "Object Border",
    Callback = function(color)
        library:ChangeThemeOption("Object Border", color)
    end
}
library:ConfigIgnore("Object Border")
themepickers["Dropdown Option Background"] =
    customtheme:ColorPicker {
    Name = "Dropdown Option Background",
    Default = library.theme["Dropdown Option Background"],
    Flag = "Dropdown Option Background",
    Callback = function(color)
        library:ChangeThemeOption("Dropdown Option Background", color)
    end
}
library:ConfigIgnore("Dropdown Option Background")
local configsection = configs:Section {Name = "Configs", Side = "Left"}
local configlist = configsection:Dropdown {Name = "Configs", Content = library:GetConfigs(), Flag = "Config Dropdown"}
library:ConfigIgnore("Config Dropdown")
local loadconfig = configsection:Button {Name = "Load Config", Callback = function()
        library:LoadConfig(library.flags["Config Dropdown"])
    end}
local delconfig = configsection:Button {Name = "Delete Config", Callback = function()
        library:DeleteConfig(library.flags["Config Dropdown"])
    end}
local configbox = configsection:Box {Name = "Config Name", Placeholder = "Config Name", Flag = "Config Name"}
library:ConfigIgnore("Config Name")
local save = configsection:Button {Name = "Save Config", Callback = function()
        library:SaveConfig(library.flags["Config Name"])
        configlist:Refresh(library:GetConfigs())
    end}

local infotab = main:Tab("information")

local infotab = infotab:Section {Name = "information", Side = "Left"}

infotab:Label("Game Version " .. GetVersion())

infotab:Label("Script Version " .. Version)

print("Loaded Script")