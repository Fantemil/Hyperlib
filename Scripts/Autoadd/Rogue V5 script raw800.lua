if game.PlaceId == 653205701 then

if _G.LoremipsumdwerolorsitametconsectetueradipiscingelitAeneancommodoligulaegetdolorAeneanmassaCumsociisnatoquepenatibusetmagnisdisparturientmontesnasceturridiculusmusDonecquamfelisultriciesnecpellentesqueeupretiumquissemNullaconsequatmassaquisenimDonecpedejustofringillavelaliquetnecvulputateegetarcuInenimjustorhoncusutimperdietavenenatisvitaejustoNullamdictumfeliseupedemollispretiumIntegertinciduntCrasdapibusVivamuselementumsempernisiAeneanvulputateeleifendtellusAeneanleoligulaporttitoreuconsequatvitaeeleifendacenimAliquamloremantedapibusinviverraquisfeugiatatellusPhasellusviverranullautmetusvariuslaoreetQuisquerutrumAeneanimperdietEtiamultriciesnisivelaugueCurabiturullamcorperultriciesnisiNamegetduiEtiamrhoncusMaecenastempustellusegetcondimentumrhoncussemquamsemperliberositametadipiscingsemnequesedipsumN then return end
_G.LoremipsumdwerolorsitametconsectetueradipiscingelitAeneancommodoligulaegetdolorAeneanmassaCumsociisnatoquepenatibusetmagnisdisparturientmontesnasceturridiculusmusDonecquamfelisultriciesnecpellentesqueeupretiumquissemNullaconsequatmassaquisenimDonecpedejustofringillavelaliquetnecvulputateegetarcuInenimjustorhoncusutimperdietavenenatisvitaejustoNullamdictumfeliseupedemollispretiumIntegertinciduntCrasdapibusVivamuselementumsempernisiAeneanvulputateeleifendtellusAeneanleoligulaporttitoreuconsequatvitaeeleifendacenimAliquamloremantedapibusinviverraquisfeugiatatellusPhasellusviverranullautmetusvariuslaoreetQuisquerutrumAeneanimperdietEtiamultriciesnisivelaugueCurabiturullamcorperultriciesnisiNamegetduiEtiamrhoncusMaecenastempustellusegetcondimentumrhoncussemquamsemperliberositametadipiscingsemnequesedipsumN = true

local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(615, 390),
    Theme = Mercury.Themes.Serika,
    Link = "https://www.roblox.com/games/653205701/Fort-Jackson#Going-Rogue"
}
local game = game
local GetService = game.GetService
if (not game.IsLoaded(game)) then
    local Loaded = game.Loaded
    Loaded.Wait(Loaded);
end

local _L = {}

_L.start = start or tick();
local Debug = true

do
    local F_A = getgenv().F_A
    if (F_A) then
        local Notify, GetConfig = F_A.Utils.Notify, F_A.GetConfig
        local UserInputService = GetService(game, "UserInputService");
        local CommandBarPrefix = GetConfig().CommandBarPrefix
        local StringKeyCode = UserInputService.GetStringForKeyCode(UserInputService, Enum.KeyCode[CommandBarPrefix]);
        return wait()
    end
end

local Services = {
    Workspace = GetService(game, "Workspace");
    UserInputService = GetService(game, "UserInputService");
    ReplicatedStorage = GetService(game, "ReplicatedStorage");
    StarterPlayer = GetService(game, "StarterPlayer");
    StarterPack = GetService(game, "StarterPack");
    StarterGui = GetService(game, "StarterGui");
    TeleportService = GetService(game, "TeleportService");
    CoreGui = GetService(game, "CoreGui");
    TweenService = GetService(game, "TweenService");
    HttpService = GetService(game, "HttpService");
    TextService = GetService(game, "TextService");
    MarketplaceService = GetService(game, "MarketplaceService");
    Chat = GetService(game, "Chat");
    Teams = GetService(game, "Teams");
    SoundService = GetService(game, "SoundService");
    Lighting = GetService(game, "Lighting");
    ScriptContext = GetService(game, "ScriptContext");
    Stats = GetService(game, "Stats");
}

setmetatable(Services, {
    __index = function(Table, Property)
        local Ret, Service = pcall(GetService, game, Property);
        if (Ret) then
            Services[Property] = Service
            return Service
        end
        return nil
    end,
    __mode = "v"
});

local GetChildren, GetDescendants = game.GetChildren, game.GetDescendants
local IsA = game.IsA
local FindFirstChild, FindFirstChildOfClass, FindFirstChildWhichIsA, WaitForChild = 
    game.FindFirstChild,
    game.FindFirstChildOfClass,
    game.FindFirstChildWhichIsA,
    game.WaitForChild

local GetPropertyChangedSignal, Changed = 
    game.GetPropertyChangedSignal,
    game.Changed
    
local Destroy, Clone = game.Destroy, game.Clone

local Heartbeat, Stepped, RenderStepped;
do
    local RunService = Services.RunService;
    Heartbeat, Stepped, RenderStepped =
        RunService.Heartbeat,
        RunService.Stepped,
        RunService.RenderStepped
end

local Players = Services.Players
local GetPlayers = Players.GetPlayers

local JSONEncode, JSONDecode, GenerateGUID = 
    Services.HttpService.JSONEncode, 
    Services.HttpService.JSONDecode,
    Services.HttpService.GenerateGUID

local Camera = Services.Workspace.CurrentCamera

local Tfind, sort, concat, pack, unpack;
do
    local table = table
    Tfind, sort, concat, pack, unpack = 
        table.find, 
        table.sort,
        table.concat,
        table.pack,
        table.unpack
end

local lower, upper, Sfind, split, sub, format, len, match, gmatch, gsub, byte;
do
    local string = string
    lower, upper, Sfind, split, sub, format, len, match, gmatch, gsub, byte = 
        string.lower,
        string.upper,
        string.find,
        string.split, 
        string.sub,
        string.format,
        string.len,
        string.match,
        string.gmatch,
        string.gsub,
        string.byte
end

local random, floor, round, abs, atan, cos, sin, rad;
do
    local math = math
    random, floor, round, abs, atan, cos, sin, rad = 
        math.random,
        math.floor,
        math.round,
        math.abs,
        math.atan,
        math.cos,
        math.sin,
        math.rad
end

local InstanceNew = Instance.new
local CFrameNew = CFrame.new
local Vector3New = Vector3.new

local Inverse, toObjectSpace, components
do
    local CalledCFrameNew = CFrameNew();
    Inverse = CalledCFrameNew.Inverse
    toObjectSpace = CalledCFrameNew.toObjectSpace
    components = CalledCFrameNew.components
end

local Connection = game.Loaded
local CWait = Connection.Wait
local CConnect = Connection.Connect

local Disconnect;
do
    local CalledConnection = CConnect(Connection, function() end);
    Disconnect = CalledConnection.Disconnect
end

local __H = InstanceNew("Humanoid");
local UnequipTools = __H.UnequipTools
local ChangeState = __H.ChangeState
local SetStateEnabled = __H.SetStateEnabled
local GetState = __H.GetState
local GetAccessories = __H.GetAccessories

local LocalPlayer = Players.LocalPlayer
local PlayerGui =  FindFirstChildWhichIsA(LocalPlayer, "PlayerGui");
local Mouse = LocalPlayer.GetMouse(LocalPlayer);

local CThread;
do
    local wrap = coroutine.wrap
    CThread = function(Func, ...)
        if (type(Func) ~= 'function') then
            return nil
        end
        local Varag = ...
        return function()
            local Success, Ret = pcall(wrap(Func, Varag));
            if (Success) then
                return Ret
            end
            if (Debug) then
                warn("[FA Error]: " .. debug.traceback(Ret));
            end
        end
    end
end

local startsWith = function(str, searchString, rawPos)
    local pos = rawPos or 1
    return searchString == "" and true or sub(str, pos, pos) == searchString
end

local trim = function(str)
    return gsub(str, "^%s*(.-)%s*$", "%1");
end

local tbl_concat = function(...)
    local new = {}
    for i, v in next, {...} do
        for i2, v2 in next, v do
            new[i] = v2
        end
    end
    return new
end

local indexOf = function(tbl, val)
    if (type(tbl) == 'table') then
        for i, v in next, tbl do
            if (v == val) then
                return i
            end
        end
    end
end

local forEach = function(tbl, ret)
    for i, v in next, tbl do
        ret(i, v);
    end
end

local filter = function(tbl, ret)
    if (type(tbl) == 'table') then
        local new = {}
        for i, v in next, tbl do
            if (ret(i, v)) then
                new[#new + 1] = v
            end
        end
        return new
    end
end

local map = function(tbl, ret)
    if (type(tbl) == 'table') then
        local new = {}
        for i, v in next, tbl do
            local Value, Key = ret(i, v);
            new[Key or #new + 1] = Value
        end
        return new
    end
end

local deepsearch;
deepsearch = function(tbl, ret)
    if (type(tbl) == 'table') then
        for i, v in next, tbl do
            if (type(v) == 'table') then
                deepsearch(v, ret);
            end
            ret(i, v);
        end
    end
end

local deepsearchset;
deepsearchset = function(tbl, ret, value)
    if (type(tbl) == 'table') then
        local new = {}
        for i, v in next, tbl do
            new[i] = v
            if (type(v) == 'table') then
                new[i] = deepsearchset(v, ret, value);
            end
            if (ret(i, v)) then
                new[i] = value(i, v);
            end
        end
        return new
    end
end

local flat = function(tbl)
    if (type(tbl) == 'table') then
        local new = {}
        deepsearch(tbl, function(i, v)
            if (type(v) ~= 'table') then
                new[#new + 1] = v
            end
        end)
        return new
    end
end

local flatMap = function(tbl, ret)
    if (type(tbl) == 'table') then
        local new = flat(map(tbl, ret));
        return new
    end
end

local shift = function(tbl)
    if (type(tbl) == 'table') then
        local firstVal = tbl[1]
        tbl = pack(unpack(tbl, 2, #tbl));
        tbl.n = nil
        return tbl
    end
end

local keys = function(tbl)
    if (type(tbl) == 'table') then
        local new = {}
        for i, v in next, tbl do
            new[#new + 1] = i	
        end
        return new
    end
end

local function clone(toClone, shallow)
    if (type(toClone) == 'function' and clonefunction) then
        return clonefunction(toClone);
    end
    local new = {}
    for i, v in pairs(toClone) do
        if (type(v) == 'table' and not shallow) then
            v = clone(v);
        end
        new[i] = v
    end
    return new
end

local setthreadidentity = setthreadidentity or syn_context_set or setthreadcontext or (syn and syn.set_thread_identity)
local getthreadidentity = getthreadidentity or syn_context_get or getthreadcontext or (syn and syn.get_thread_identity)

local GetCharacter = GetCharacter or function(Plr)
    return Plr and Plr.Character or LocalPlayer.Character
end

local Utils = {}

local Stats = Services.Stats
local ContentProvider = Services.ContentProvider

local firetouchinterest, hookfunction;
do
    local GEnv = getgenv();
    local touched = {}
    firetouchinterest = GEnv.firetouchinterest or function(part1, part2, toggle)
        if (part1 and part2) then
            if (toggle == 0) then
                touched[1] = part1.CFrame
                part1.CFrame = part2.CFrame
            else
                part1.CFrame = touched[1]
                touched[1] = nil
            end
        end
    end
    local newcclosure = newcclosure or function(f)
        return f
    end

    hookfunction = GEnv.hookfunction or function(func, newfunc, applycclosure)
        if (replaceclosure) then
            replaceclosure(func, newfunc);
            return func
        end
        func = applycclosure and newcclosure or newfunc
        return func
    end
end

if (not syn_context_set) then
    local CachedConnections = setmetatable({}, {
        __mode = "v"
    });

    GEnv = getgenv();
    getconnections = function(Connection, FromCache, AddOnConnect)
        local getconnections = GEnv.getconnections
        if (not getconnections) then
            return {}
        end

        local CachedConnection;
        for i, v in next, CachedConnections do
            if (i == Connection) then
                CachedConnection = v
                break;
            end
        end
        if (CachedConnection and FromCache) then
            return CachedConnection
        end

        local Connections = GEnv.getconnections(Connection);
        CachedConnections[Connection] = Connections
        return Connections
    end
end

local getrawmetatable = getrawmetatable or function()
    return setmetatable({}, {});
end

local getnamecallmethod = getnamecallmethod or function()
    return ""
end

local checkcaller = checkcaller or function()
    return false
end

local Hooks = {
    AntiKick = false,
    AntiTeleport = false,
    NoJumpCooldown = false,
}

local mt = getrawmetatable(game);
local OldMetaMethods = {}
setreadonly(mt, false);
for i, v in next, mt do
    OldMetaMethods[i] = v
end
setreadonly(mt, true);
local MetaMethodHooks = {}

local ProtectInstance, SpoofInstance, SpoofProperty;
local pInstanceCount = {0, 0}; 
local ProtectedInstances = setmetatable({}, {
    __mode = "v"
});
local FocusedTextBox = nil
do
    local SpoofedInstances = setmetatable({}, {
        __mode = "v"
    });
    local SpoofedProperties = {}
    Hooks.SpoofedProperties = SpoofedProperties

    local otherCheck = function(instance, n)
        if (IsA(instance, "ImageLabel") or IsA(instance, "ImageButton")) then
            ProtectedInstances[#ProtectedInstances + 1] = instance
            return;
        end

        if (IsA(instance, "BasePart")) then
            pInstanceCount[2] = math.max(pInstanceCount[2] + (n or 1), 0);
        end
    end

    ProtectInstance = function(Instance_)
        if (not Tfind(ProtectedInstances, Instance_)) then
            ProtectedInstances[#ProtectedInstances + 1] = Instance_
            local descendants = Instance_:GetDescendants();
            pInstanceCount[1] += 1 + #descendants;
            for i = 1, #descendants do
                otherCheck(descendants[i]);
            end
            local dAdded = Instance_.DescendantAdded:Connect(function(descendant)
                pInstanceCount[1] += 1
                otherCheck(descendant);
            end);
            local dRemoving = Instance_.DescendantRemoving:Connect(function(descendant)
                pInstanceCount[1] = math.max(pInstanceCount[1] - 1, 0);
                otherCheck(descendant, -1);
            end);
            otherCheck(Instance_);

            Instance_.Name = sub(gsub(GenerateGUID(Services.HttpService, false), '-', ''), 1, random(25, 30));
            Instance_.Archivable = false
        end
    end

    SpoofInstance = function(Instance_, Instance2)
        if (not SpoofedInstances[Instance_]) then
            SpoofedInstances[Instance_] = Instance2 and Instance2 or Clone(Instance_);
        end
    end

    UnSpoofInstance = function(Instance_)
        if (SpoofedInstances[Instance_]) then
            SpoofedInstances[Instance_] = nil
        end
    end
    
    local ChangedSpoofedProperties = {}
    SpoofProperty = function(Instance_, Property, NoClone)
        if (SpoofedProperties[Instance_]) then
            local SpoofedPropertiesForInstance = SpoofedProperties[Instance_]
            local Properties = map(SpoofedPropertiesForInstance, function(i, v)
                return v.Property
            end)
            if (not Tfind(Properties, Property)) then
                SpoofedProperties[Instance_][#SpoofedPropertiesForInstance + 1] = {
                    SpoofedProperty = SpoofedPropertiesForInstance[1].SpoofedProperty,
                    Property = Property,
                };
            end
        else
            local Cloned;
            if (not NoClone and IsA(Instance_, "Instance") and not Services[tostring(Instance_)] and Instance_.Archivable) then
                local Success, Ret = pcall(Clone, Instance_);
                if (Success) then
                    Cloned = Ret
                end
            end
            SpoofedProperties[Instance_] = {{
                SpoofedProperty = Cloned and Cloned or {[Property]=Instance_[Property]},
                Property = Property,
            }}
            ChangedSpoofedProperties[Instance_] = {}
        end
    end

    local GetAllParents = function(Instance_, NIV)
        if (typeof(Instance_) == "Instance") then
            local Parents = {}
            local Current = NIV or Instance_
            if (NIV) then
                Parents[#Parents + 1] = Current
            end
            repeat
                local Parent = Current.Parent
                Parents[#Parents + 1] = Parent
                Current = Parent
            until not Current
            return Parents
        end
        return {}
    end

    local Methods = {
        "FindFirstChild",
        "FindFirstChildWhichIsA",
        "FindFirstChildOfClass",
        "IsA"
    }

    local lockedInstances = {};
    setmetatable(lockedInstances, { __mode = "k" });
    local isProtected = function(instance)
        if (lockedInstances[instance]) then
            return true;
        end

        local good2 = pcall(tostring, instance);
        if (not good2) then
            lockedInstances[instance] = true
            return true;
        end

        for i2 = 1, #ProtectedInstances do
            local pInstance = ProtectedInstances[i2]
            if (pInstance == instance) then
                return true;
            end
        end
        return false;
    end

    MetaMethodHooks.Namecall = function(...)
        local __Namecall = OldMetaMethods.__namecall;
        local Args = {...}
        local self = Args[1]
        local Method = getnamecallmethod() or "";

        if (Method ~= "") then
            local Success, result = pcall(OldMetaMethods.__index, self, Method);
            if (not Success or Success and type(result) ~= "function") then
                return __Namecall(...);
            end
        end

        if (Hooks.AntiKick and lower(Method) == "kick") then
            local Player, Message = self, Args[2]
            if (Hooks.AntiKick and Player == LocalPlayer) then
                local Notify = Utils.Notify
                local Context;
                if (setthreadidentity) then
                    Context = getthreadidentity();
                    setthreadidentity(3);
                end
                if (Notify and Context) then
                    Notify(nil, "Attempt to kick", format("attempt to kick %s", (Message and type(Message) == 'number' or type(Message) == 'string') and ": " .. Message or ""));
                    setthreadidentity(Context);
                end
                return
            end
        end

        if (Hooks.AntiTeleport and Method == "Teleport" or Method == "TeleportToPlaceInstance") then
            local Player, PlaceId = self, Args[2]
            if (Hooks.AntiTeleport and Player == LocalPlayer) then
                local Notify = Utils.Notify
                local Context;
                if (setthreadidentity) then
                    Context = getthreadidentity();
                    setthreadidentity(3);
                end
                if (Notify and Context) then
                    Notify(nil, "Attempt to teleport", format("attempt to teleport to place %s", PlaceId and PlaceId or ""));
                    setthreadidentity(Context);
                end
                return
            end
        end

        if (checkcaller()) then
            return __Namecall(...);
        end

        if (Tfind(Methods, Method)) then
            local ReturnedInstance = __Namecall(...);
            if (Tfind(ProtectedInstances, ReturnedInstance)) then
                return Method == "IsA" and false or nil
            end
        end
        if (Method == "children" or Method == "GetChildren" or Method ==  "getChildren" or Method == "GetDescendants" or Method == "getDescendants") then
            return filter(__Namecall(...), function(i, instance)
                return not isProtected(instance);
            end);
        end

        if (self == Services.UserInputService and (Method == "GetFocusedTextBox" or Method == "getFocusedTextBox")) then
            local focused = __Namecall(...);
            if (focused) then
                for i = 1, #ProtectedInstances do
                    local ProtectedInstance = ProtectedInstances[i]
                    local iden = getthreadidentity();
                    setthreadidentity(7);
                    local pInstance = Tfind(ProtectedInstances, focused) or focused.IsDescendantOf(focused, ProtectedInstance);
                    setthreadidentity(iden);
                    if (pInstance) then
                        return nil;
                    end
                end
            end
            return focused;
        end

        if (Hooks.NoJumpCooldown and (Method == "GetState" or Method == "GetStateEnabled")) then
            local State = __Namecall(...);
            if (Method == "GetState" and (State == Enum.HumanoidStateType.Jumping or State == "Jumping")) then
                return Enum.HumanoidStateType.RunningNoPhysics
            end
            if (Method == "GetStateEnabled" and (self == Enum.HumanoidStateType.Jumping or self == "Jumping")) then
                return false
            end
        end

        return __Namecall(...);
    end

    local AllowedIndexes = {
        "RootPart",
        "Parent"
    }
    local AllowedNewIndexes = {
        "Jump"
    }
    MetaMethodHooks.Index = function(...)
        local __Index = OldMetaMethods.__index;
        local called = __Index(...);

        if (checkcaller()) then
            return __Index(...);
        end
        local Instance_, Index = ...

        local SanitisedIndex = Index
        if (typeof(Instance_) == 'Instance' and type(Index) == 'string') then
            SanitisedIndex = gsub(sub(Index, 0, 100), "%z.*", "");
        end
        local SpoofedInstance = SpoofedInstances[Instance_]
        local SpoofedPropertiesForInstance = SpoofedProperties[Instance_]

        if (SpoofedInstance) then
            if (Tfind(AllowedIndexes, SanitisedIndex)) then
                return __Index(Instance_, Index);
            end
            return __Index(SpoofedInstance, Index);
        end

        if (SpoofedPropertiesForInstance) then
            for i, SpoofedProperty in next, SpoofedPropertiesForInstance do
                local SanitisedIndex = gsub(SanitisedIndex, "^%l", upper);
                if (SanitisedIndex == SpoofedProperty.Property) then
                    local ClientChangedData = ChangedSpoofedProperties[Instance_][SanitisedIndex]
                    local IndexedSpoofed = __Index(SpoofedProperty.SpoofedProperty, Index);
                    local Indexed = __Index(Instance_, Index);
                    if (ClientChangedData.Caller and ClientChangedData.Value ~= Indexed) then
                        OldMetaMethods.__newindex(SpoofedProperty.SpoofedProperty, Index, Indexed);
                        OldMetaMethods.__newindex(Instance_, Index, ClientChangedData.Value);
                        return Indexed
                    end
                    return IndexedSpoofed
                end
            end
        end

        if (Hooks.NoJumpCooldown and SanitisedIndex == "Jump") then
            if (IsA(Instance_, "Humanoid")) then
                return false
            end
        end

        if (Instance_ == Stats and (SanitisedIndex == "InstanceCount" or SanitisedIndex == "instanceCount")) then
            return called - pInstanceCount[1];
        end

        if (Instance_ == Stats and (SanitisedIndex == "PrimitivesCount" or SanitisedIndex == "primitivesCount")) then
            return called - pInstanceCount[2];
        end

        return called;
    end

    MetaMethodHooks.NewIndex = function(...)
        local __NewIndex = OldMetaMethods.__newindex;
        local __Index = OldMetaMethods.__index;
        local Instance_, Index, Value = ...

        local SpoofedInstance = SpoofedInstances[Instance_]
        local SpoofedPropertiesForInstance = SpoofedProperties[Instance_]

        if (checkcaller()) then
            if (Index == "Parent" and Value) then
                local ProtectedInstance
                for i = 1, #ProtectedInstances do
                    local ProtectedInstance_ = ProtectedInstances[i]
                    if (Instance_ == ProtectedInstance_ or Instance_.IsDescendantOf(Value, ProtectedInstance_)) then
                        ProtectedInstance = true
                    end
                end
                if (ProtectedInstance) then
                    local Parents = GetAllParents(Instance_, Value);
                    local child1 = getconnections(Parents[1].ChildAdded, true);
                    local descendantconnections = {}
                    for i, v in next, child1 do
                        v.Disable(v);
                    end
                    for i = 1, #Parents do
                        local Parent = Parents[i]
                        for i2, v in next, getconnections(Parent.DescendantAdded, true) do
                            v.Disable(v);
                            descendantconnections[#descendantconnections + 1] = v
                        end
                    end
                    local good, Ret = pcall(__NewIndex, ...);
                    for i, v in pairs(descendantconnections) do
                        v:Enable();
                    end
                    for i, v in next, child1 do
                        v.Enable(v);
                    end
                    if (not good) then
                        return __NewIndex(...);
                    end
                    return Ret;
                end
            end
            if (SpoofedInstance or SpoofedPropertiesForInstance) then
                if (SpoofedPropertiesForInstance) then
                    ChangedSpoofedProperties[Instance_][Index] = {
                        Caller = true,
                        BeforeValue = Instance_[Index],
                        Value = Value
                    }
                end
                local Connections = tbl_concat(
                    getconnections(game.ItemChanged, true)
                )
                
                if (not next(Connections)) then
                    return __NewIndex(Instance_, Index, Value);
                end
                for i, v in next, Connections do
                    v.Disable(v);
                end
                local Ret = __NewIndex(Instance_, Index, Value);
                for i, v in next, Connections do
                    v.Enable(v);
                end
                return Ret
            end
            return __NewIndex(...);
        end

        local SanitisedIndex = Index
        if (typeof(Instance_) == 'Instance' and type(Index) == 'string') then
            local len = select(2, gsub(Index, "%z", ""));
            if (len > 255) then
                return __Index(...);
            end

            SanitisedIndex = gsub(sub(Index, 0, 100), "%z.*", "");
        end

        if (SpoofedInstance) then
            if (Tfind(AllowedNewIndexes, SanitisedIndex)) then
                return __NewIndex(...);
            end
            return __NewIndex(SpoofedInstance, Index, __Index(SpoofedInstance, Index));
        end

        if (SpoofedPropertiesForInstance) then
            for i, SpoofedProperty in next, SpoofedPropertiesForInstance do
                if (SpoofedProperty.Property == SanitisedIndex and not Tfind(AllowedIndexes, SanitisedIndex)) then
                    ChangedSpoofedProperties[Instance_][SanitisedIndex] = {
                        Caller = false,
                        BeforeValue = Instance_[Index],
                        Value = Value
                    }
                    return __NewIndex(SpoofedProperty.SpoofedProperty, Index, Value);
                end
            end
        end

        return __NewIndex(...);
    end

    local hookmetamethod = hookmetamethod or function(metatable, metamethod, func)
        setreadonly(metatable, false);
        Old = hookfunction(metatable[metamethod], func, true);
        setreadonly(metatable, true);
        return Old
    end

    OldMetaMethods.__index = hookmetamethod(game, "__index", MetaMethodHooks.Index);
    OldMetaMethods.__newindex = hookmetamethod(game, "__newindex", MetaMethodHooks.NewIndex);
    OldMetaMethods.__namecall = hookmetamethod(game, "__namecall", MetaMethodHooks.Namecall);

    Hooks.Destroy = hookfunction(game.Destroy, function(...)
        local instance = ...
        local protected = table.find(ProtectedInstances, instance);
        if (checkcaller() and protected) then
            otherCheck(instance, -1);
            local Parents = GetAllParents(instance);
            for i, v in next, getconnections(Parents[1].ChildRemoved, true) do
                v.Disable(v);
            end
            for i = 1, #Parents do
                local Parent = Parents[i]
                for i2, v in next, getconnections(Parent.DescendantRemoving, true) do
                    v.Disable(v);
                end
            end
            local destroy = Hooks.Destroy(...);
            for i = 1, #Parents do
                local Parent = Parents[i]
                for i2, v in next, getconnections(Parent.DescendantRemoving, true) do
                    v.Enable(v);
                end
            end
            for i, v in next, getconnections(Parents[1].ChildRemoved, true) do
                v.Enable(v);
            end
            table.remove(ProtectedInstances, protected);
            return destroy;
        end
        return Hooks.Destroy(...);
    end);
end

Hooks.OldGetChildren = hookfunction(game.GetChildren, newcclosure(function(...)
    if (not checkcaller()) then
        local Children = Hooks.OldGetChildren(...);
        return filter(Children, function(i, v)
            return not Tfind(ProtectedInstances, v);
        end)
    end
    return Hooks.OldGetChildren(...);
end));

Hooks.OldGetDescendants = hookfunction(game.GetDescendants, newcclosure(function(...)
    if (not checkcaller()) then
        local Descendants = Hooks.OldGetDescendants(...);
        return filter(Descendants, function(i, v)
            local Protected = false
            for i2 = 1, #ProtectedInstances do
                local ProtectedInstance = ProtectedInstances[i2]
                Protected = v and ProtectedInstance == v or v.IsDescendantOf(v, ProtectedInstance)
                if (Protected) then
                    break;
                end
            end
            return not Protected
        end)
    end
    return Hooks.OldGetDescendants(...);
end));

Hooks.FindFirstChild = hookfunction(game.FindFirstChild, newcclosure(function(...)
    if (not checkcaller()) then
        local ReturnedInstance = Hooks.FindFirstChild(...);
        if (ReturnedInstance and Tfind(ProtectedInstances, ReturnedInstance)) then
            return nil
        end
    end
    return Hooks.FindFirstChild(...);
end));
Hooks.FindFirstChildOfClass = hookfunction(game.FindFirstChildOfClass, newcclosure(function(...)
    if (not checkcaller()) then
        local ReturnedInstance = Hooks.FindFirstChildOfClass(...);
        if (ReturnedInstance and Tfind(ProtectedInstances, ReturnedInstance)) then
            return nil
        end
    end
    return Hooks.FindFirstChildOfClass(...);
end));
Hooks.FindFirstChildWhichIsA = hookfunction(game.FindFirstChildWhichIsA, newcclosure(function(...)
    if (not checkcaller()) then
        local ReturnedInstance = Hooks.FindFirstChildWhichIsA(...);
        if (ReturnedInstance and Tfind(ProtectedInstances, ReturnedInstance)) then
            return nil
        end
    end
    return Hooks.FindFirstChildWhichIsA(...);
end));
Hooks.IsA = hookfunction(game.IsA, newcclosure(function(...)
    if (not checkcaller()) then
        local Args = {...}
        local IsACheck = Args[1]
        if (IsACheck) then
            local ProtectedInstance = Tfind(ProtectedInstances, IsACheck);
            if (ProtectedInstance and Args[2]) then
                return false
            end
        end
    end
    return Hooks.IsA(...);
end));

Hooks.OldGetFocusedTextBox = hookfunction(Services.UserInputService.GetFocusedTextBox, newcclosure(function(...)
    if (not checkcaller() and ... == Services.UserInputService) then
        local FocusedTextBox = Hooks.OldGetFocusedTextBox(...);
        if(FocusedTextBox) then
            local Protected = false
            for i = 1, #ProtectedInstances do
                local ProtectedInstance = ProtectedInstances[i]
                Protected = Tfind(ProtectedInstances, FocusedTextBox) or FocusedTextBox.IsDescendantOf(FocusedTextBox, ProtectedInstance);
            end
            if (Protected) then
                return nil
            end
        end
        return FocusedTextBox;
    end
    return Hooks.OldGetFocusedTextBox(...);
end));

Hooks.OldKick = hookfunction(LocalPlayer.Kick, newcclosure(function(...)
    local Player, Message = ...
    if (Hooks.AntiKick and Player == LocalPlayer) then
        local Notify = Utils.Notify
        local Context;
        if (setthreadidentity) then
            Context = getthreadidentity();
            setthreadidentity(3);
        end
        if (Notify and Context) then
            Notify(nil, "Attempt to kick", format("attempt to kick %s", (Message and type(Message) == 'number' or type(Message) == 'string') and ": " .. Message or ""));
            setthreadidentity(Context)
        end
        return
    end
    return Hooks.OldKick(...);
end))

Hooks.OldTeleportToPlaceInstance = hookfunction(Services.TeleportService.TeleportToPlaceInstance, newcclosure(function(...)
    local Player, PlaceId = ...
    if (Hooks.AntiTeleport and Player == LocalPlayer) then
        local Notify = Utils.Notify
        local Context;
        if (setthreadidentity) then
            Context = getthreadidentity();
            setthreadidentity(3);
        end
        if (Notify and Context) then
            Notify(nil, "Attempt to teleport", format("attempt to teleport to place %s", PlaceId and PlaceId or ""));
            setthreadidentity(Context)
        end
        return
    end
    return Hooks.OldTeleportToPlaceInstance(...);
end))
Hooks.OldTeleport = hookfunction(Services.TeleportService.Teleport, newcclosure(function(...)
    local Player, PlaceId = ...
    if (Hooks.AntiTeleport and Player == LocalPlayer) then
        local Notify = Utils.Notify
        local Context;
        if (setthreadidentity) then
            Context = getthreadidentity();
            setthreadidentity(3);
        end
        if (Notify and Context) then
            Notify(nil, "Attempt to teleport", format("attempt to teleport to place \"%s\"", PlaceId and PlaceId or ""));
            setthreadidentity(Context);
        end
        return
    end
    return Hooks.OldTeleport(...);
end))

Hooks.GetState = hookfunction(GetState, function(...)
    local Humanoid, State = ..., Hooks.GetState(...);
    local Parent, Character = Humanoid.Parent, LocalPlayer.Character
    if (Hooks.NoJumpCooldown and (State == Enum.HumanoidStateType.Jumping or State == "Jumping") and Parent and Character and Parent == Character) then
        return Enum.HumanoidStateType.RunningNoPhysics
    end
    return State
end)

Hooks.GetStateEnabled = hookfunction(__H.GetStateEnabled, function(...)
    local Humanoid, State = ...
    local Ret = Hooks.GetStateEnabled(...);
    local Parent, Character = Humanoid.Parent, LocalPlayer.Character
    if (Hooks.NoJumpCooldown and (State == Enum.HumanoidStateType.Jumping or State == "Jumping") and Parent and Character and Parent == Character) then
        return false
    end
    return Ret
end)

local GetRoot = function(Plr, Char)
    local LCharacter = GetCharacter();
    local Character = Char or GetCharacter(Plr);
    return Plr and Character and (FindFirstChild(Character, "HumanoidRootPart") or FindFirstChild(Character, "Torso") or FindFirstChild(Character, "UpperTorso")) or LCharacter and (FindFirstChild(LCharacter, "HumanoidRootPart") or FindFirstChild(LCharacter, "Torso") or FindFirstChild(LCharacter, "UpperTorso"));
end

local GetHumanoid = function(Plr, Char)
    local LCharacter = GetCharacter();
    local Character = Char or GetCharacter(Plr);
    return Plr and Character and FindFirstChildWhichIsA(Character, "Humanoid") or LCharacter and FindFirstChildWhichIsA(LCharacter, "Humanoid");
end

local GetMagnitude = function(Plr, Char)
    local LRoot = GetRoot();
    local Root = GetRoot(Plr, Char);
    return Plr and Root and (Root.Position - LRoot.Position).magnitude or math.huge
end

local Settings = {
    Prefix = "!",
    CommandBarPrefix = "Semicolon",
    ChatPrediction = false,
    Macros = {},
    Aliases = {},
}
local PluginSettings = {
    PluginsEnabled = true,
    PluginDebug = false,
    DisabledPlugins = {
        ["PluginName"] = true
    },
    SafePlugins = false
}

local WriteConfig = function(Destroy)
    local JSON = JSONEncode(Services.HttpService, Settings);
    local PluginJSON = JSONEncode(Services.HttpService, PluginSettings);
    if (isfolder("Rogue-admin") and Destroy) then
        delfolder("Rogue-admin");
        writefile("Rogue-admin/config.json", JSON);
        writefile("Rogue/admin/pluings/plugin-conf.json", PluginJSON);
    else
        makefolder("Rogue-admin");
        makefolder("Rogue-admin/plugins");
        makefolder("Rogue-admin/chatlogs");
        writefile("Rogue-admin/config.json", JSON);
        writefile("Rogue-admin/plugins/plugin-conf.json", PluginJSON);
    end
end

local GetConfig = function()
    if (isfolder("Rogue-admin") and isfile("Rogue-admin/config.json")) then
        return JSONDecode(Services.HttpService, readfile("Rogue-admin/config.json"));
    else
        WriteConfig();
        return JSONDecode(Services.HttpService, readfile("Rogue-admin/config.json"));
    end
end

local GetPluginConfig = function()
    if (isfolder("Rogue-admin") and isfolder("Rogue-admin/plugins") and isfile("Rogue-admin/plugins/plugin-conf.json")) then
        local JSON = JSONDecode(Services.HttpService, readfile("Rogue-admin/plugins/plugin-conf.json"));
        return JSON
    else
        WriteConfig();
        return JSONDecode(Services.HttpService, readfile("Rogue-admin/plugins/plugin-conf.json"));
    end
end

local SetPluginConfig = function(conf)
    if (isfolder("Rogue-admin") and isfolder("Rogue-admin/plugins") and isfile("Rogue-admin/plugins/plugin-conf.json")) then
        WriteConfig();
    end
    local NewConfig = GetPluginConfig();
    for i, v in next, conf do
        NewConfig[i] = v
    end
    writefile("Rogue-admin/plugins/plugin-conf.json", JSONEncode(Services.HttpService, NewConfig));
end

local SetConfig = function(conf)
    if (not isfolder("Rogue-admin") and isfile("Rogue-admin/config.json")) then
        WriteConfig();
    end
    local NewConfig = GetConfig();
    for i, v in next, conf do
        NewConfig[i] = v
    end
    writefile("Rogue-admin/config.json", JSONEncode(Services.HttpService, NewConfig));
end

local CurrentConfig = GetConfig();
local Prefix = isfolder and CurrentConfig.Prefix or "!"
local Macros = CurrentConfig.Macros or {}
local AdminUsers = AdminUsers or {}
local Exceptions = Exceptions or {}
local Connections = {
    Players = {}
}
_L.CLI = false
_L.ChatLogsEnabled = true
_L.GlobalChatLogsEnabled = false
_L.HttpLogsEnabled = true

local GetPlayer;
GetPlayer = function(str, noerror)
    local CurrentPlayers = filter(GetPlayers(Players), function(i, v)
        return not Tfind(Exceptions, v);
    end)
    if (not str) then
        return {}
    end
    str = lower(trim(str));
    if (Sfind(str, ",")) then
        return flatMap(split(str, ","), function(i, v)
            return GetPlayer(v, noerror);
        end)
    end

    local Magnitudes = map(CurrentPlayers, function(i, v)
        return {v,(GetRoot(v).CFrame.p - GetRoot().CFrame.p).Magnitude}
    end)

    local PlayerArgs = {
        ["all"] = function()
            return filter(CurrentPlayers, function(i, v) -- removed all arg (but not really) due to commands getting messed up and people getting confused
                return v ~= LocalPlayer
            end)
        end,
        ["others"] = function()
            return filter(CurrentPlayers, function(i, v)
                return v ~= LocalPlayer
            end)
        end,
        ["me"] = function()
            return {LocalPlayer}
        end
    }

    if (PlayerArgs[str]) then
        return PlayerArgs[str]();
    end

    local Players = filter(CurrentPlayers, function(i, v)
        return (sub(lower(v.Name), 1, #str) == str) or (sub(lower(v.DisplayName), 1, #str) == str);
    end)
    if (not next(Players) and not noerror) then
        GUI:Notification{
    Title = "Fail",
    Text = "Couldn't find player %s", str,
    Duration = 3,
    Callback = function() end
};

    end
    return Players
end

local AddConnection = function(Connection, CEnv, TblOnly)
    if (CEnv) then
        CEnv[#CEnv + 1] = Connection
        if (TblOnly) then
            return Connection
        end
    end
    Connections[#Connections + 1] = Connection
    return Connection
end

local LastCommand = {}

--IMPORT [ui]
Guis = {}
ParentGui = function(Gui, Parent)
    Gui.Name = sub(gsub(GenerateGUID(Services.HttpService, false), '-', ''), 1, random(25, 30))
    ProtectInstance(Gui);
    if (syn and syn.protect_gui) then syn.protect_gui(Gui); end -- for preload
    Gui.Parent = Parent or Services.CoreGui
    Guis[#Guis + 1] = Gui
    return Gui
end
UI = Clone(Services.InsertService:LoadLocalAsset("rbxassetid://7882275026"));
UI.Enabled = true

local CommandBarPrefix;

local ConfigUI = UI.Config
local ConfigElements = ConfigUI.GuiElements
local CommandBar = UI.CommandBar
local Commands = UI.Commands
local ChatLogs = UI.ChatLogs
local Console = UI.Console
local GlobalChatLogs = Clone(UI.ChatLogs);
local HttpLogs = Clone(UI.ChatLogs);
local Notification = UI.Notification
local Command = UI.Command
local ChatLogMessage = UI.Message
local GlobalChatLogMessage = Clone(UI.Message);
local NotificationBar = UI.NotificationBar

CommandBarOpen = false
CommandBarTransparencyClone = Clone(CommandBar);
ChatLogsTransparencyClone = Clone(ChatLogs);
ConsoleTransparencyClone = Clone(Console);
GlobalChatLogsTransparencyClone = Clone(GlobalChatLogs);
HttpLogsTransparencyClone = Clone(HttpLogs);
CommandsTransparencyClone = nil
ConfigUIClone = Clone(ConfigUI);
PredictionText = ""
do
    local UIParent = CommandBar.Parent
    GlobalChatLogs.Parent = UIParent
    GlobalChatLogMessage.Parent = UIParent
    GlobalChatLogs.Name = "GlobalChatLogs"
    GlobalChatLogMessage.Name = "GlobalChatLogMessage"

    HttpLogs.Parent = UIParent
    HttpLogs.Name = "HttpLogs"
    HttpLogs.Size = UDim2.new(0, 421, 0, 260);
    HttpLogs.Search.PlaceholderText = "Search"
end
-- position CommandBar
CommandBar.Position = UDim2.new(0.5, -100, 1, 5);

local UITheme, Values;
do
    local BaseBGColor = Color3.fromRGB(68, 124, 170);
    local BaseTransparency = 0
    local BaseTextColor = Color3.fromRGB(220, 224, 234);
    local BaseValues = { BackgroundColor = BaseBGColor, Transparency = BaseTransparency, TextColor = BaseTextColor }
    Values = { Background = clone(BaseValues), CommandBar = clone(BaseValues), CommandList = clone(BaseValues), Notification = clone(BaseValues), ChatLogs = clone(BaseValues), Config = clone(BaseValues) }
    local Objects = keys(Values);
    local GetBaseMT = function(Object)
        return setmetatable({}, {
            __newindex = function(self, Index, Value)
                local type = typeof(Value);
                if (Index == "BackgroundColor") then
                    if (Value == "Reset") then
                        Value = BaseBGColor
                        type = "Color3"
                    end
                    assert(type == 'Color3', format("invalid argument #3 (Color3 expected, got %s)", type));
                    if (Object == "Background") then
                        CommandBar.BackgroundColor3 = Value
                        Notification.BackgroundColor3 = Value
                        Command.BackgroundColor3 = Value
                        ChatLogs.BackgroundColor3 = Value
                        ChatLogs.Frame.BackgroundColor3 = Value
                        Console.BackgroundColor3 = Value
                        Console.Frame.BackgroundColor3 = Value
                        HttpLogs.BackgroundColor3 = Value
                        HttpLogs.Frame.BackgroundColor3 = Value
                        UI.ToolTip.BackgroundColor3 = Value
                        ConfigUI.BackgroundColor3 = Value
                        ConfigUI.Container.BackgroundColor3 = Value
                        Commands.BackgroundColor3 = Value
                        Commands.Frame.BackgroundColor3 = Value
                        local Children = GetChildren(UI.NotificationBar);
                        for i = 1, #Children do
                            local Child = Children[i]
                            if (IsA(Child, "GuiObject")) then
                                Child.BackgroundColor3 = Value
                            end
                        end
                        local Children = GetChildren(Commands.Frame.List);
                        for i = 1, #Children do
                            local Child = Children[i]
                            if (IsA(Child, "GuiObject")) then
                                Child.BackgroundColor3 = Value
                            end
                        end
                        for i, v in next, Values do
                            Values[i].BackgroundColor = Value
                        end
                    elseif (Object == "CommandBar") then
                        CommandBar.BackgroundColor3 = Value
                    elseif (Object == "Notification") then
                        Notification.BackgroundColor3 = Value
                        local Children = GetChildren(UI.NotificationBar);
                        for i = 1, #Children do
                            local Child = Children[i]
                            if (IsA(Child, "GuiObject")) then
                                Child.BackgroundColor3 = Value
                            end
                        end
                    elseif (Object == "CommandList") then
                        Commands.BackgroundColor3 = Value
                        Commands.Frame.BackgroundColor3 = Value
                    elseif (Object == "Command") then
                        Command.BackgroundColor3 = Value
                    elseif (Object == "ChatLogs") then
                        ChatLogs.BackgroundColor3 = Value
                        ChatLogs.Frame.BackgroundColor3 = Value
                        HttpLogs.BackgroundColor3 = Value
                        HttpLogs.Frame.BackgroundColor3 = Value
                    elseif (Object == "Console") then
                        Console.BackgroundColor3 = Value
                        Console.Frame.BackgroundColor3 = Value
                    elseif (Object == "Config") then
                        ConfigUI.BackgroundColor3 = Value
                        ConfigUI.Container.BackgroundColor3 = Value
                    end
                    Values[Object][Index] = Value
                elseif (Index == "TextColor") then
                    if (Value == "Reset") then
                        Value = BaseTextColor
                        type = "Color3"
                    end
                    assert(type == 'Color3', format("invalid argument #3 (Color3 expected, got %s)", type));
                    if (Object == "Notification") then
                        Notification.Title.TextColor3 = Value
                        Notification.Message.TextColor3 = Value
                        Notification.Close.TextColor3 = Value
                    elseif (Object == "CommandBar") then
                        CommandBar.Input.TextColor3 = Value
                        CommandBar.Arrow.TextColor3 = Value
                    elseif (Object == "CommandList") then
                        Command.CommandText.TextColor3 = Value
                        local Descendants = GetDescendants(Commands);
                        for i = 1, #Descendants do
                            local Descendant = Descendants[i]
                            local IsText = IsA(Descendant, "TextBox") or IsA(Descendant, "TextLabel") or IsA(Descendant, "TextButton");
                            if (IsText) then
                                Descendant.TextColor3 = Value
                            end
                        end
                    elseif (Object == "ChatLogs") then
                        UI.Message.TextColor3 = Value
                    elseif (Object == "Config") then
                        local Descendants = GetDescendants(ConfigUI);
                        for i = 1, #Descendants do
                            local Descendant = Descendants[i]
                            local IsText = IsA(Descendant, "TextBox") or IsA(Descendant, "TextLabel") or IsA(Descendant, "TextButton");
                            if (IsText) then
                                Descendant.TextColor3 = Value
                            end
                        end
                    elseif (Object == "Background") then
                        Notification.Title.TextColor3 = Value
                        Notification.Message.TextColor3 = Value
                        Notification.Close.TextColor3 = Value
                        CommandBar.Input.TextColor3 = Value
                        CommandBar.Arrow.TextColor3 = Value
                        Command.CommandText.TextColor3 = Value
                        UI.Message.TextColor3 = Value
                        local Descendants = GetDescendants(ConfigUI);
                        for i = 1, #Descendants do
                            local Descendant = Descendants[i]
                            local IsText = IsA(Descendant, "TextBox") or IsA(Descendant, "TextLabel") or IsA(Descendant, "TextButton");
                            if (IsText) then
                                Descendant.TextColor3 = Value
                            end
                        end
                        local Descendants = GetDescendants(Commands);
                        for i = 1, #Descendants do
                            local Descendant = Descendants[i]
                            local IsText = IsA(Descendant, "TextBox") or IsA(Descendant, "TextLabel") or IsA(Descendant, "TextButton");
                            if (IsText) then
                                Descendant.TextColor3 = Value
                            end
                        end
                        for i, v in next, Values do
                            Values[i].TextColor = Value
                        end
                    end
                    Values[Object][Index] = Value
                elseif (Index == "Transparency") then
                    if (Value == "Reset") then
                        Value = BaseTransparency
                        type = "number"
                    end
                    assert(type == 'number', format("invalid argument #3 (Color3 expected, got %s)", type));
                    if (Object == "Background") then
                        CommandBar.Transparency = Value
                        Notification.Transparency = Value
                        Command.Transparency = Value + .5
                        ChatLogs.Transparency = Value
                        ChatLogs.Frame.Transparency = Value
                        HttpLogs.Transparency = Value
                        HttpLogs.Frame.Transparency = Value
                        UI.ToolTip.Transparency = Value
                        ConfigUI.Transparency = Value
                        ConfigUI.Container.Transparency = Value + .5
                        Commands.Transparency = Value
                        Commands.Frame.Transparency = Value + .5
                        Values[Object][Index] = Value
                    elseif (Object == "Notification") then
                        Notification.Transparency = Value
                        local Children = GetChildren(UI.NotificationBar);
                        for i = 1, #Children do
                            local Child = Children[i]
                            if (IsA(Child, "GuiObject")) then
                                Child.Transparency = Value
                            end
                        end
                    end
                    Values[Object][Index] = Value
                end
            end,
            __index = function(self, Index)
                return Values[Object][Index]
            end
        })
    end
    UITheme = setmetatable({}, {
        __index = function(self, Index)
            if (Tfind(Objects, Index)) then
                local BaseMt = GetBaseMT(Index);
                self[Index] = BaseMt
                return BaseMt
            end
        end
    })
end

local IsSupportedExploit = isfile and isfolder and writefile and readfile

local GetThemeConfig
local WriteThemeConfig = function(Conf)
    if (IsSupportedExploit and isfolder("Rogue-admin")) then
        local ToHSV = Color3.new().ToHSV
        local ValuesToEncode = deepsearchset(Values, function(i, v)
            return typeof(v) == 'Color3'
        end, function(i, v)
            local H, S, V = ToHSV(v);
            return {H, S, V, "Color3"}
        end)
        local Data = JSONEncode(Services.HttpService, ValuesToEncode);
        writefile("Rogue-admin/Theme.json", Data);
    end
end

GetThemeConfig = function()
    if (IsSupportedExploit and isfolder("Rogue-admin")) then
        if (isfile("Rogue-admin/Theme.json")) then
            local Success, Data = pcall(JSONDecode, Services.HttpService, readfile("Rogue-admin/Theme.json"));
            if (not Success or type(Data) ~= 'table') then
                WriteThemeConfig();
                return Values
            end
            local DecodedData = deepsearchset(Data, function(i, v)
                return type(v) == 'table' and #v == 4 and v[4] == "Color3"
            end, function(i,v)
                return Color3.fromHSV(v[1], v[2], v[3]);
            end)
            return DecodedData            
        else
            WriteThemeConfig();
            return Values
        end
    else
        return Values
    end
end

local LoadTheme;
do
    local Config = GetConfig();
    CommandBarPrefix = isfolder and (Config.CommandBarPrefix and Enum.KeyCode[Config.CommandBarPrefix] or Enum.KeyCode.Semicolon) or Enum.KeyCode.Semicolon

    local Theme = GetThemeConfig();
    LoadTheme = function(Theme)
        UITheme.Background.BackgroundColor = Theme.Background.BackgroundColor
        UITheme.Background.Transparency = Theme.Background.Transparency

        UITheme.ChatLogs.BackgroundColor = Theme.ChatLogs.BackgroundColor
        UITheme.CommandBar.BackgroundColor = Theme.CommandBar.BackgroundColor
        UITheme.Config.BackgroundColor = Theme.Config.BackgroundColor
        UITheme.Notification.BackgroundColor = Theme.Notification.BackgroundColor
        UITheme.CommandList.BackgroundColor = Theme.Notification.BackgroundColor
        
        UITheme.ChatLogs.TextColor = Theme.ChatLogs.TextColor
        UITheme.CommandBar.TextColor = Theme.CommandBar.TextColor
        UITheme.Config.TextColor = Theme.Config.TextColor
        UITheme.Notification.TextColor = Theme.Notification.TextColor
        UITheme.CommandList.TextColor = Theme.Notification.TextColor

        UITheme.ChatLogs.Transparency = Theme.ChatLogs.Transparency
        UITheme.CommandBar.Transparency = Theme.CommandBar.Transparency
        UITheme.Config.Transparency = Theme.Config.Transparency
        UITheme.Notification.Transparency = Theme.Notification.Transparency
        UITheme.CommandList.Transparency = Theme.Notification.Transparency
    end
    LoadTheme(Theme);
end
--END IMPORT [ui]



--IMPORT [utils]
Utils.Tween = function(Object, Style, Direction, Time, Goal)
    local TweenService = Services.TweenService
    local TInfo = TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction])
    local Tween = TweenService.Create(TweenService, Object, TInfo, Goal)

    Tween.Play(Tween)

    return Tween
end

Utils.MultColor3 = function(Color, Delta)
    local clamp = math.clamp
    return Color3.new(clamp(Color.R * Delta, 0, 1), clamp(Color.G * Delta, 0, 1), clamp(Color.B * Delta, 0, 1));
end

Utils.Click = function(Object, Goal) -- Utils.Click(Object, "BackgroundColor3")
    local Hover = {
        [Goal] = Utils.MultColor3(Object[Goal], 0.9)
    }

    local Press = {
        [Goal] = Utils.MultColor3(Object[Goal], 1.2)
    }

    local Origin = {
        [Goal] = Object[Goal]
    }

    AddConnection(CConnect(Object.MouseEnter, function()
        Utils.Tween(Object, "Sine", "Out", .5, Hover);
    end));

    AddConnection(CConnect(Object.MouseLeave, function()
        Utils.Tween(Object, "Sine", "Out", .5, Origin);
    end));

    AddConnection(CConnect(Object.MouseButton1Down, function()
        Utils.Tween(Object, "Sine", "Out", .3, Press);
    end));

    AddConnection(CConnect(Object.MouseButton1Up, function()
        Utils.Tween(Object, "Sine", "Out", .4, Hover);
    end));
end

Utils.Blink = function(Object, Goal, Color1, Color2) -- Utils.Click(Object, "BackgroundColor3", NormalColor, OtherColor)
    local Normal = {
        [Goal] = Color1
    }

    local Blink = {
        [Goal] = Color2
    }

    local Tween = Utils.Tween(Object, "Sine", "Out", .5, Blink)
    CWait(Tween.Completed);

    Tween = Utils.Tween(Object, "Sine", "Out", .5, Normal)
    CWait(Tween.Completed);
end

Utils.Hover = function(Object, Goal)
    local Hover = {
        [Goal] = Utils.MultColor3(Object[Goal], 0.9)
    }

    local Origin = {
        [Goal] = Object[Goal]
    }

    AddConnection(CConnect(Object.MouseEnter, function()
        Utils.Tween(Object, "Sine", "Out", .5, Hover);
    end));

    AddConnection(CConnect(Object.MouseLeave, function()
        Utils.Tween(Object, "Sine", "Out", .5, Origin);
    end));
end

Utils.Draggable = function(Ui, DragUi)
    local DragSpeed = 0
    local StartPos
    local DragToggle, DragInput, DragStart, DragPos

    DragUi = Dragui or Ui
    local TweenService = Services.TweenService

    local function UpdateInput(Input)
        local Delta = Input.Position - DragStart
        local Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + Delta.X, StartPos.Y.Scale, StartPos.Y.Offset + Delta.Y)

        Utils.Tween(Ui, "Linear", "Out", .25, {
            Position = Position
        });
        local Tween = TweenService.Create(TweenService, Ui, TweenInfo.new(0.25), {Position = Position});
        Tween.Play(Tween);
    end

    AddConnection(CConnect(Ui.InputBegan, function(Input)
        if ((Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch) and Services.UserInputService.GetFocusedTextBox(Services.UserInputService) == nil) then
            DragToggle = true
            DragStart = Input.Position
            StartPos = Ui.Position

            AddConnection(CConnect(Input.Changed, function()
                if (Input.UserInputState == Enum.UserInputState.End) then
                    DragToggle = false
                end
            end));
        end
    end));

    AddConnection(CConnect(Ui.InputChanged, function(Input)
        if (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
            DragInput = Input
        end
    end));

    AddConnection(CConnect(Services.UserInputService.InputChanged, function(Input)
        if (Input == DragInput and DragToggle) then
            UpdateInput(Input)
        end
    end));
end

Utils.SmoothScroll = function(content, SmoothingFactor) -- by Elttob
    -- get the 'content' scrolling frame, aka the scrolling frame with all the content inside
    -- if smoothing is enabled, disable scrolling
    content.ScrollingEnabled = false

    -- create the 'input' scrolling frame, aka the scrolling frame which receives user input
    -- if smoothing is enabled, enable scrolling
    local input = Clone(content)

    input.ClearAllChildren(input);
    input.BackgroundTransparency = 1
    input.ScrollBarImageTransparency = 1
    input.ZIndex = content.ZIndex + 1
    input.Name = "_smoothinputframe"
    input.ScrollingEnabled = true
    input.Parent = content.Parent

    -- keep input frame in sync with content frame
    local function syncProperty(prop)
        AddConnection(CConnect(GetPropertyChangedSignal(content, prop), function()
            if prop == "ZIndex" then
                -- keep the input frame on top!
                input[prop] = content[prop] + 1
            else
                input[prop] = content[prop]
            end
        end));
    end

    syncProperty "CanvasSize"
    syncProperty "Position"
    syncProperty "Rotation"
    syncProperty "ScrollingDirection"
    syncProperty "ScrollBarThickness"
    syncProperty "BorderSizePixel"
    syncProperty "ElasticBehavior"
    syncProperty "SizeConstraint"
    syncProperty "ZIndex"
    syncProperty "BorderColor3"
    syncProperty "Size"
    syncProperty "AnchorPoint"
    syncProperty "Visible"

    -- create a render stepped connection to interpolate the content frame position to the input frame position
    local smoothConnection = AddConnection(CConnect(RenderStepped, function()
        local a = content.CanvasPosition
        local b = input.CanvasPosition
        local c = SmoothingFactor
        local d = (b - a) * c + a

        content.CanvasPosition = d
    end));

    AddConnection(CConnect(content.AncestryChanged, function()
        if content.Parent == nil then
            Destroy(input);
            Disconnect(smoothConnection);
        end
    end));
end

Utils.TweenAllTransToObject = function(Object, Time, BeforeObject) -- max transparency is max object transparency, swutched args bc easier command
    local Descendants = GetDescendants(Object);
    local OldDescentants = GetDescendants(BeforeObject);
    local Tween -- to use to wait

    Tween = Utils.Tween(Object, "Sine", "Out", Time, {
        BackgroundTransparency = BeforeObject.BackgroundTransparency
    })

    for i = 1, #Descendants do
        local v = Descendants[i]
        local IsText = IsA(v, "TextBox") or IsA(v, "TextLabel") or IsA(v, "TextButton")
        local IsImage = IsA(v, "ImageLabel") or IsA(v, "ImageButton")
        local IsScrollingFrame = IsA(v, "ScrollingFrame")

        if (IsA(v, "GuiObject")) then
            if (IsText) then
                Utils.Tween(v, "Sine", "Out", Time, {
                    TextTransparency = OldDescentants[i].TextTransparency,
                    TextStrokeTransparency = OldDescentants[i].TextStrokeTransparency,
                    BackgroundTransparency = OldDescentants[i].BackgroundTransparency
                })
            elseif (IsImage) then
                Utils.Tween(v, "Sine", "Out", Time, {
                    ImageTransparency = OldDescentants[i].ImageTransparency,
                    BackgroundTransparency = OldDescentants[i].BackgroundTransparency
                })
            elseif (IsScrollingFrame) then
                Utils.Tween(v, "Sine", "Out", Time, {
                    ScrollBarImageTransparency = OldDescentants[i].ScrollBarImageTransparency,
                    BackgroundTransparency = OldDescentants[i].BackgroundTransparency
                })
            else
                Utils.Tween(v, "Sine", "Out", Time, {
                    BackgroundTransparency = OldDescentants[i].BackgroundTransparency
                })
            end
        end
    end

    return Tween
end

Utils.SetAllTrans = function(Object)
    Object.BackgroundTransparency = 1

    local Descendants = GetDescendants(Object);
    for i = 1, #Descendants do
        local v = Descendants[i]
        local IsText = IsA(v, "TextBox") or IsA(v, "TextLabel") or IsA(v, "TextButton")
        local IsImage = IsA(v, "ImageLabel") or IsA(v, "ImageButton")
        local IsScrollingFrame = IsA(v, "ScrollingFrame")

        if (IsA(v, "GuiObject")) then
            v.BackgroundTransparency = 1

            if (IsText) then
                v.TextTransparency = 1
            elseif (IsImage) then
                v.ImageTransparency = 1
            elseif (IsScrollingFrame) then
                v.ScrollBarImageTransparency = 1
            end
        end
    end
end

Utils.TweenAllTrans = function(Object, Time)
    local Tween -- to use to wait

    Tween = Utils.Tween(Object, "Sine", "Out", Time, {
        BackgroundTransparency = 1
    })

    local Descendants = GetDescendants(Object);
    for i = 1, #Descendants do
        local v = Descendants[i]
        local IsText = IsA(v, "TextBox") or IsA(v, "TextLabel") or IsA(v, "TextButton")
        local IsImage = IsA(v, "ImageLabel") or IsA(v, "ImageButton")
        local IsScrollingFrame = IsA(v, "ScrollingFrame")

        if (IsA(v, "GuiObject")) then
            if (IsText) then
                Utils.Tween(v, "Sine", "Out", Time, {
                    TextTransparency = 1,
                    BackgroundTransparency = 1
                })
            elseif (IsImage) then
                Utils.Tween(v, "Sine", "Out", Time, {
                    ImageTransparency = 1,
                    BackgroundTransparency = 1
                })
            elseif (IsScrollingFrame) then
                Utils.Tween(v, "Sine", "Out", Time, {
                    ScrollBarImageTransparency = 1,
                    BackgroundTransparency = 1
                })
            else
                Utils.Tween(v, "Sine", "Out", Time, {
                    BackgroundTransparency = 1
                })
            end
        end
    end

    return Tween
end

Utils.TextSize = function(Object)
    local TextService = Services.TextService
    return TextService.GetTextSize(TextService, Object.Text, Object.TextSize, Object.Font, Vector2.new(Object.AbsoluteSize.X, 1000)).Y
end

Utils.Notify = function(Caller, Title, Message, Time)
    if (not Caller or Caller == LocalPlayer) then
        local Notification = UI.Notification
        local NotificationBar = UI.NotificationBar

        local Clone = Clone(Notification)

        local function TweenDestroy()
            if (Utils and Clone) then
                local Tween = Utils.TweenAllTrans(Clone, .25)

                CWait(Tween.Completed)
                Destroy(Clone);
            end
        end

        Clone.Message.Text = Message
        Clone.Title.Text = Title or "Notification"
        Utils.SetAllTrans(Clone)
        Utils.Click(Clone.Close, "TextColor3")
        Clone.Visible = true
	    Clone.Size = UDim2.fromOffset(Clone.Size.X.Offset, Utils.TextSize(Clone.Message) + Clone.Size.Y.Offset - Clone.Message.TextSize);
        Clone.Parent = NotificationBar

        coroutine.wrap(function()
            local Tween = Utils.TweenAllTransToObject(Clone, .5, Notification)

            CWait(Tween.Completed);
            wait(Time or 5);

            if (Clone) then
                TweenDestroy();
            end
        end)()

        AddConnection(CConnect(Clone.Close.MouseButton1Click, TweenDestroy));
        if (Title ~= "Warning" and Title ~= "Error") then
            Utils.Print(format("%s - %s", Title, Message), Caller, true);
        end

        return Clone
    else
        local ChatRemote = Services.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
        ChatRemote.FireServer(ChatRemote, format("/w %s [FA] %s: %s", Caller.Name, Title, Message), "All");
    end
end

Utils.MatchSearch = function(String1, String2)
    return String1 == sub(String2, 1, #String1);
end

Utils.StringFind = function(Table, String)
    for _, v in ipairs(Table) do
        if (Utils.MatchSearch(String, v)) then
            return v
        end
    end
end

Utils.GetPlayerArgs = function(Arg)
    Arg = lower(Arg);
    local SpecialCases = {"all", "others", "random", "me", "nearest", "farthest", "npcs", "allies", "enemies"}
    if (Utils.StringFind(SpecialCases, Arg)) then
        return Utils.StringFind(SpecialCases, Arg);
    end

    local CurrentPlayers = GetPlayers(Players);
    for i, v in next, CurrentPlayers do
        local Name, DisplayName = v.Name, v.DisplayName
        if (Name ~= DisplayName and Utils.MatchSearch(Arg, lower(DisplayName))) then
            return lower(DisplayName);
        end
        if (Utils.MatchSearch(Arg, lower(Name))) then
            return lower(Name);
        end
    end
end

Utils.ToolTip = function(Object, Message)
    local CloneToolTip
    local TextService = Services.TextService

    AddConnection(CConnect(Object.MouseEnter, function()
        if (Object.BackgroundTransparency < 1 and not CloneToolTip) then
            local TextSize = TextService.GetTextSize(TextService, Message, 12, Enum.Font.Gotham, Vector2.new(200, math.huge)).Y > 24

            CloneToolTip = Clone(UI.ToolTip)
            CloneToolTip.Text = Message
            CloneToolTip.TextScaled = TextSize
            CloneToolTip.Visible = true
            CloneToolTip.Parent = UI
        end
    end))

    AddConnection(CConnect(Object.MouseLeave, function()
        if (CloneToolTip) then
            Destroy(CloneToolTip);
            CloneToolTip = nil
        end
    end))

    if (LocalPlayer) then
        AddConnection(CConnect(Mouse.Move, function()
            if (CloneToolTip) then
                CloneToolTip.Position = UDim2.fromOffset(Mouse.X + 10, Mouse.Y + 10)
            end
        end))
    else
        delay(3, function()
            LocalPlayer = Players.LocalPlayer
            AddConnection(CConnect(Mouse.Move, function()
                if (CloneToolTip) then
                    CloneToolTip.Position = UDim2.fromOffset(Mouse.X + 10, Mouse.Y + 10)
                end
            end))
        end)
    end
end

Utils.ClearAllObjects = function(Object)
    local Children = GetChildren(Object);
    for i = 1, #Children do
        local Child = Children[i]
        if (IsA(Child, "GuiObject")) then
            Destroy(Child);
        end
    end
end

Utils.Rainbow = function(TextObject)
    local Text = TextObject.Text
    local Frequency = 1 -- determines how quickly it repeats
    local TotalCharacters = 0
    local Strings = {}

    TextObject.RichText = true

    for Character in gmatch(Text, ".") do
        if match(Character, "%s") then
            Strings[#Strings + 1] = Character
        else
            TotalCharacters = TotalCharacters + 1
            Strings[#Strings + 1] = {'<font color="rgb(%i, %i, %i)">' .. Character .. '</font>'}
        end
    end

    local Connection = AddConnection(CConnect(Heartbeat, function()
        local String = ""
        local Counter = TotalCharacters

        for _, CharacterTable in ipairs(Strings) do
            local Concat = ""

            if (type(CharacterTable) == "table") then
                Counter = Counter - 1
                local Color = Color3.fromHSV(-atan(math.tan((tick() + Counter/math.pi)/Frequency))/math.pi + 0.5, 1, 1)

                CharacterTable = format(CharacterTable[1], floor(Color.R * 255), floor(Color.G * 255), floor(Color.B * 255))
            end

            String = String .. CharacterTable
        end

        TextObject.Text = String .. " "
    end));
    delay(150, function()
        Disconnect(Connection);
    end)

end

Utils.Vector3toVector2 = function(Vector)
    local Tuple = WorldToViewportPoint(Camera, Vector);
    return Vector2New(Tuple.X, Tuple.Y);
end

Utils.AddTag = function(Tag)
    if (not Tag) then
        return
    end
    local PlrCharacter = GetCharacter(Tag.Player)
    if (not PlrCharacter) then
        return
    end
    local Billboard = InstanceNew("BillboardGui");
    Billboard.Parent = UI
    Billboard.Name = GenerateGUID(Services.HttpService);
    Billboard.AlwaysOnTop = true
    Billboard.Adornee = FindFirstChild(PlrCharacter, "Head") or nil
    Billboard.Enabled = FindFirstChild(PlrCharacter, "Head") and true or false
    Billboard.Size = UDim2.new(0, 200, 0, 50)
    Billboard.StudsOffset = Vector3New(0, 4, 0);

    local TextLabel = InstanceNew("TextLabel", Billboard);
    TextLabel.Name = GenerateGUID(Services.HttpService);
    TextLabel.TextStrokeTransparency = 0.6
    TextLabel.BackgroundTransparency = 1
    TextLabel.TextColor3 = Color3.new(0, 255, 0);
    TextLabel.Size = UDim2.new(0, 200, 0, 50);
    TextLabel.TextScaled = false
    TextLabel.TextSize = 15
    TextLabel.Text = format("%s (%s)", Tag.Name, Tag.Tag);

    if (Tag.Rainbow) then
        Utils.Rainbow(TextLabel)
    end
    if (Tag.Colour) then
        local TColour = Tag.Colour
        TextLabel.TextColor3 = Color3.fromRGB(TColour[1], TColour[2], TColour[3]);
    end

    local Added = AddConnection(CConnect(Tag.Player.CharacterAdded, function()
        Billboard.Adornee = WaitForChild(Tag.Player.Character, "Head");
    end));

    AddConnection(CConnect(Players.PlayerRemoving, function(plr)
        if (plr == Tag.Player) then
            Disconnect(Added);
            Destroy(Billboard);
        end
    end))
end

Utils.TextFont = function(Text, RGB)
    RGB = concat(RGB, ",")
    local New = {}
    gsub(Text, ".", function(x)
        New[#New + 1] = x
    end)
    return concat(map(New, function(i, letter)
        return format('<font color="rgb(%s)">%s</font>', RGB, letter)
    end)) .. " "
end

Utils.Thing = function(Object)
    local Container = InstanceNew("Frame");
    local Hitbox = InstanceNew("ImageButton");
    local UDim2fromOffset = UDim2.fromOffset

    Container.Name = "Container"
    Container.Parent = Object.Parent
    Container.BackgroundTransparency = 1.000
    Container.BorderSizePixel = 0
    Container.Position = Object.Position
    Container.ClipsDescendants = true
    Container.Size = UDim2fromOffset(Object.AbsoluteSize.X, Object.AbsoluteSize.Y);
    Container.ZIndex = Object
    
    Object.AutomaticSize = Enum.AutomaticSize.X
    Object.Size = UDim2.fromScale(1, 1)
    Object.Position = UDim2.fromScale(0, 0)
    Object.Parent = Container
    Object.TextTruncate = Enum.TextTruncate.None
    Object.ZIndex = Object.ZIndex + 2
    
    Hitbox.Name = "Hitbox"
    Hitbox.Parent = Container.Parent
    Hitbox.BackgroundTransparency = 1.000
    Hitbox.Size = Container.Size
    Hitbox.Position = Container.Position
    Hitbox.ZIndex = Object.ZIndex + 2
    
    local MouseOut = true
    
    AddConnection(CConnect(Hitbox.MouseEnter, function()
        if Object.AbsoluteSize.X > Container.AbsoluteSize.X then
            MouseOut = false
            repeat
                local Tween1 = Utils.Tween(Object, "Quad", "Out", .5, {
                    Position = UDim2fromOffset(Container.AbsoluteSize.X - Object.AbsoluteSize.X, 0);
                })
                CWait(Tween1.Completed);
                wait(.5);
                local Tween2 = Utils.Tween(Object, "Quad", "Out", .5, {
                    Position = UDim2fromOffset(0, 0);
                })
                CWait(Tween2.Completed);
                wait(.5);
            until MouseOut
        end
    end))

    AddConnection(CConnect(Hitbox.MouseLeave, function()
        MouseOut = true
        Utils.Tween(Object, "Quad", "Out", .25, {
            Position = UDim2fromOffset(0, 0);
        });
    end))
    
    return Object
end

function Utils.Intro(Object)
	local Frame = InstanceNew("Frame");
	local UICorner = InstanceNew("UICorner");
	local CornerRadius = FindFirstChild(Object, "UICorner") and Object.UICorner.CornerRadius or UDim.new(0, 0)
    local UDim2fromOffset  = UDim2.fromOffset

	Frame.Name = "IntroFrame"
	Frame.ZIndex = 1000
	Frame.Size = UDim2fromOffset(Object.AbsoluteSize.X, Object.AbsoluteSize.Y)
	Frame.AnchorPoint = Vector2.new(.5, .5)
	Frame.Position = UDim2.new(Object.Position.X.Scale, Object.Position.X.Offset + (Object.AbsoluteSize.X / 2), Object.Position.Y.Scale, Object.Position.Y.Offset + (Object.AbsoluteSize.Y / 2))
	Frame.BackgroundColor3 = Object.BackgroundColor3
	Frame.BorderSizePixel = 0

	UICorner.CornerRadius = CornerRadius
	UICorner.Parent = Frame

	Frame.Parent = Object.Parent

	if (Object.Visible) then
		Frame.BackgroundTransparency = 1

		local Tween = Utils.Tween(Frame, "Quad", "Out", .25, {
			BackgroundTransparency = 0
		});

		CWait(Tween.Completed);
		Object.Visible = false

		local Tween = Utils.Tween(Frame, "Quad", "Out", .25, {
			Size = UDim2fromOffset(0, 0);
		});

		Utils.Tween(UICorner, "Quad", "Out", .25, {
			CornerRadius = UDim.new(1, 0)
		});

		CWait(Tween.Completed);
		Destroy(Frame);
	else
		Frame.Visible = true
		Frame.Size = UDim2fromOffset(0, 0)
		UICorner.CornerRadius = UDim.new(1, 0)

		local Tween = Utils.Tween(Frame, "Quad", "Out", .25, {
			Size = UDim2fromOffset(Object.AbsoluteSize.X, Object.AbsoluteSize.Y)
		});

		Utils.Tween(UICorner, "Quad", "Out", .25, {
			CornerRadius = CornerRadius
		});

		CWait(Tween.Completed);
		Object.Visible = true

		local Tween = Utils.Tween(Frame, "Quad", "Out", .25, {
			BackgroundTransparency = 1
		})

		CWait(Tween.Completed);
		Destroy(Frame);
	end
end

Utils.MakeGradient = function(ColorTable)
	local Table = {}
    local ColorSequenceKeypointNew = ColorSequenceKeypoint.new
	for Time, Color in next, ColorTable do
		Table[#Table + 1] = ColorSequenceKeypointNew(Time - 1, Color);
	end
	return ColorSequence.new(Table)
end

Utils.Debounce = function(Func)
	local Debounce = false

	return function(...)
		if (not Debounce) then
			Debounce = true
			Func(...);
			Debounce = false
		end
	end
end

Utils.ToggleFunction = function(Container, Enabled, Callback) -- fpr color picker
    local Switch = Container.Switch
    local Hitbox = Container.Hitbox
    local Color3fromRGB = Color3.fromRGB
    local UDim2fromOffset = UDim2.fromOffset

    Container.BackgroundColor3 = Color3fromRGB(255, 79, 87);

    if not Enabled then
        Switch.Position = UDim2fromOffset(2, 2)
        Container.BackgroundColor3 = Color3fromRGB(25, 25, 25);
    end

    AddConnection(CConnect(Hitbox.MouseButton1Click, function()
        Enabled = not Enabled
        
        Utils.Tween(Switch, "Quad", "Out", .25, {
            Position = Enabled and UDim2.new(1, -18, 0, 2) or UDim2fromOffset(2, 2)
        });
        Utils.Tween(Container, "Quad", "Out", .25, {
            BackgroundColor3 = Enabled and Color3fromRGB(255, 79, 87) or Color3fromRGB(25, 25, 25);
        });
        
        Callback(Enabled);
    end));
end

do
    local AmountPrint, AmountWarn, AmountError = 0, 0, 0;

    Utils.Warn = function(Text, Plr)
        local TimeOutputted = os.date("%X");
        local Clone = Clone(UI.MessageOut);
    
        Clone.Name = "W" .. tostring(AmountWarn + 1);
        Clone.Text = format("%s -- %s", TimeOutputted, Text);
        Clone.TextColor3 = Color3.fromRGB(255, 218, 68);
        Clone.Visible = true
        Clone.TextTransparency = 1
        Clone.Parent = Console.Frame.List
    
        Utils.Tween(Clone, "Sine", "Out", .25, {
            TextTransparency = 0
        })
    
        Console.Frame.List.CanvasSize = UDim2.fromOffset(0, Console.Frame.List.UIListLayout.AbsoluteContentSize.Y);
        AmountWarn = AmountWarn + 1
        Utils.Notify(Plr, "Warning", Text);
    end
    
    Utils.Error = function(Text, Caller, FromNotif)
        local TimeOutputted = os.date("%X");
        local Clone = Clone(UI.MessageOut);
    
        Clone.Name = "E" .. tostring(AmountError + 1);
        Clone.Text = format("%s -- %s", TimeOutputted, Text);
        Clone.TextColor3 = Color3.fromRGB(215, 90, 74);
        Clone.Visible = true
        Clone.TextTransparency = 1
        Clone.Parent = Console.Frame.List
    
        Utils.Tween(Clone, "Sine", "Out", .25, {
            TextTransparency = 0
        })
    
        Console.Frame.List.CanvasSize = UDim2.fromOffset(0, Console.Frame.List.UIListLayout.AbsoluteContentSize.Y);
        AmountError = AmountError + 1
    end
    
    Utils.Print = function(Text, Caller, FromNotif)
        local TimeOutputted = os.date("%X");
        local Clone = Clone(UI.MessageOut);
    
        Clone.Name = "P" .. tostring(AmountPrint + 1);
        Clone.Text = format("%s -- %s", TimeOutputted, Text);
        Clone.Visible = true
        Clone.TextTransparency = 1
        Clone.Parent = Console.Frame.List
    
        Utils.Tween(Clone, "Sine", "Out", .25, {
            TextTransparency = 0
        })
    
        Console.Frame.List.CanvasSize = UDim2.fromOffset(0, Console.Frame.List.UIListLayout.AbsoluteContentSize.Y);
        AmountPrint = AmountPrint + 1
        if (len(Text) <= 35 and not FromNotif) then
            Utils.Notify(Caller, "Output", Text);
        end
    end
end
--END IMPORT [utils]



-- commands table
local CommandsTable = {}
local RespawnTimes = {}

local HasTool = function(plr)
    plr = plr or LocalPlayer
    local CharChildren, BackpackChildren = GetChildren(GetCharacter(plr)), GetChildren(plr.Backpack);
    local ToolFound = false
    local tbl = tbl_concat(CharChildren, BackpackChildren);
    for i = 1, #tbl do
        local v = tbl[i]
        if (IsA(v, "Tool")) then
            ToolFound = true
            break;
        end
    end
    return ToolFound
end

local isR6 = function(plr)
    plr = plr or LocalPlayer
    local Humanoid = GetHumanoid(plr);
    if (Humanoid) then
        return Humanoid.RigType == Enum.HumanoidRigType.R6
    end
    return false
end

local isSat = function(plr)
    plr = plr or LocalPlayer
    local Humanoid = GetHumanoid(plr)
    if (Humanoid) then
        return Humanoid.Sit
    end
end

local DisableAnimate = function()
    local Animate = GetCharacter().Animate
    Animate = IsA(Animate, "LocalScript") and Animate or nil
    if (Animate) then
        SpoofProperty(Animate, "Disabled");
        Animate.Disabled = true
    end
end

local GetCorrectToolWithHandle = function()
    local Tools = filter(tbl_concat(GetChildren(LocalPlayer.Backpack), GetChildren(LocalPlayer.Character)), function(i, Tool)
        local Correct = IsA(Tool, "Tool");
        if (Correct and (Tool.RequiresHandle or FindFirstChild(Tool, "Handle"))) then
            local Descendants = GetDescendants(Tool);
            for i = 1, #Descendants do
                local Descendant = Descendants[i]
                if (IsA(Descendant, "Sound") or IsA(Descendant, "Camera") or IsA(Descendant, "LocalScript")) then
                    Destroy(Descendant);
                end
            end
            return true
        end
        return false
    end)

    return Tools[1]
end

local CommandRequirements = {
    [1] = {
        Func = HasTool,
        Message = "You need a tool for this command"
    },
    [2] = {
        Func = isR6,
        Message = "You need to be R6 for this command"
    },
    [3] = {
        Func = function()
            return GetCharacter() ~= nil
        end,
        Message = "You need to be spawned for this command"
    }
}

local AddCommand = function(name, aliases, description, options, func, isplugin)
    local Cmd = {
        Name = name,
        Aliases = aliases,
        Description = description,
        Options = options,
        Function = function()
            for i, v in next, options do
                if (type(v) == 'function' and v() == false) then
                    Utils.Warn("You are missing something that is needed for this command", LocalPlayer);
                    return nil
                elseif (type(v) == 'number' and CommandRequirements[v].Func() == false) then
                    Utils.Warn(CommandRequirements[v].Message, LocalPlayer);
                    return nil
                end
            end
            return func
        end,
        ArgsNeeded = tonumber(filter(options, function(i,v)
            return type(v) == "string"
        end)[1]) or 0,
        Args = filter(options, function(i, v)
            return type(v) == "table"
        end)[1] or {},
        CmdEnv = {},
        IsPlugin = isplugin == true
    }

    CommandsTable[name] = Cmd
    if (type(aliases) == 'table') then
        for i, v in next, aliases do
            CommandsTable[v] = Cmd
        end
    end
    return Success
end

local RemoveCommand = function(Name)
    local Command = LoadCommand(Name);
    if (Command) then
        CommandsTable[Name] = nil
        local CommandsList = Commands.Frame.List
        local CommandLabel = FindFirstChild(CommandsList, Name);
        if (CommandLabel) then
            Destroy(CommandLabel);
        end
        return true
    end
    return false
end

local LoadCommand = function(Name)
    return rawget(CommandsTable, Name);
end

local PluginConf;
local ExecuteCommand = function(Name, Args, Caller)
    local Command = LoadCommand(Name);
    if (Command) then
        if (Command.ArgsNeeded > #Args) then
            return Utils.Warn(format("Insuficient Args (you need %d)", Command.ArgsNeeded), LocalPlayer);
        end

        local Context;
        local sett, gett = syn and syn_context_set or setidentity, syn and syn_context_get or getidentity
        if (Command.IsPlugin and sett and gett and PluginConf.SafePlugins) then
            Context = gett();
            sett(2);
        end
        local Success, Ret = xpcall(function()
            local Func = Command.Function();
            if (Func) then
                local Executed = Func(Caller, Args, Command.CmdEnv);
                if (Executed) then
                    Utils.Notify(Caller, "Command", Executed);
                end
                if (Command.Name ~= "lastcommand") then
                    if (#LastCommand == 3) then
                        LastCommand = shift(LastCommand);
                    end
                    LastCommand[#LastCommand + 1] = {Command.Name, Args, Caller, Command.CmdEnv}
                end
            end
            Success = true
        end, function(Err)
            if (Debug) then
                Utils.Error(format("[FA CMD Error]: Command = '%s' Traceback = '%s'", Name, debug.traceback(Err)), Caller);
                Utils.Notify(Caller, "Error", format("error in the '%s' command, more info shown in console", Name));
            end
        end);
        if (Command.IsPlugin and sett and PluginConf.SafePlugins and Context) then
            sett(Context);
        end
    else
        GUI:Notification{
            Title = "Warning",
            Text = "Couldn't find the command " .. Name, Caller,
            Duration = 3,
            Callback = function() end
        };
    end
end

local ReplaceHumanoid = function(Hum, R)
    local Humanoid = Hum or GetHumanoid();
    local NewHumanoid = Clone(Humanoid);
    if (R) then
        NewHumanoid.Name = "1"
    end
    NewHumanoid.Parent = Humanoid.Parent
    NewHumanoid.Name = Humanoid.Name
    Services.Workspace.Camera.CameraSubject = NewHumanoid
    Destroy(Humanoid);
    SpoofInstance(NewHumanoid);
    return NewHumanoid
end

local ReplaceCharacter = function()
    local Char = LocalPlayer.Character
    local Model = InstanceNew("Model");
    LocalPlayer.Character = Model
    LocalPlayer.Character = Char
    Destroy(Model);
    return Char
end

local CFrameTool = function(tool, pos)
    local RightArm = FindFirstChild(GetCharacter(), "RightLowerArm") or FindFirstChild(GetCharacter(), "Right Arm");
    local Arm = RightArm.CFrame * CFrameNew(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0);
    local Frame = Inverse(toObjectSpace(Arm, pos));

    tool.Grip = Frame
end

local Sanitize = function(value)
    if typeof(value) == 'CFrame' then
        local components = {components(value)}
        for i,v in pairs(components) do
            components[i] = floor(v * 10000 + .5) / 10000
        end
        return 'CFrame.new('..concat(components, ', ')..')'
    end
end

local AddPlayerConnection = function(Player, Connection, CEnv)
    if (CEnv) then
        CEnv[#CEnv + 1] = Connection
    else
        Connections.Players[Player.Name].Connections[#Connections.Players[Player.Name].Connections + 1] = Connection
    end
    return Connection
end


local DisableAllCmdConnections = function(Cmd)
    local Command = LoadCommand(Cmd)
    if (Command and Command.CmdEnv) then
        for i, v in next, flat(Command.CmdEnv) do
            if (type(v) == 'userdata' and v.Disconnect) then
                Disconnect(v);
            end
        end
    end
    return Command
end

local Keys = {}

do
    local UserInputService = Services.UserInputService
    local IsKeyDown = UserInputService.IsKeyDown
    local WindowFocused = true
    AddConnection(CConnect(UserInputService.WindowFocusReleased, function()
        WindowFocused = false
    end));
    AddConnection(CConnect(UserInputService.WindowFocused, function()
        WindowFocused = true
    end));
    local GetFocusedTextBox = UserInputService.GetFocusedTextBox
    AddConnection(CConnect(UserInputService.InputBegan, function(Input, GameProcessed)
        Keys["GameProcessed"] = GameProcessed and WindowFocused and not (not GetFocusedTextBox(UserInputService));
        Keys["LastEntered"] = Input.KeyCode
        if (GameProcessed) then return end
        local KeyCode = split(tostring(Input.KeyCode), ".")[3]
        Keys[KeyCode] = true
        for i = 1, #Macros do
            local Macro = Macros[i]
            if (Tfind(Macro.Keys, Input.KeyCode)) then
                if (#Macro.Keys == 2) then
                    if (IsKeyDown(UserInputService, Macro.Keys[1]) and IsKeyDown(UserInputService, Macro.Keys[2]) --[[and Macro.Keys[1] == Input.KeyCode]]) then
                        ExecuteCommand(Macro.Command, Macro.Args);
                    end
                else
                    ExecuteCommand(Macro.Command, Macro.Args);
                end
            end
        end

        if (Input.KeyCode == Enum.KeyCode.F8) then
            if (Console.Visible) then
                local Tween = Utils.TweenAllTrans(Console, .25)
                CWait(Tween.Completed);
                Console.Visible = false
            else
                local MessageClone = Clone(Console.Frame.List);
    
                Utils.ClearAllObjects(Console.Frame.List)
                Console.Visible = true
            
                local Tween = Utils.TweenAllTransToObject(Console, .25, ConsoleTransparencyClone)
            
                Destroy(Console.Frame.List)
                MessageClone.Parent = Console.Frame
            
                for i, v in next, GetChildren(Console.Frame.List) do
                    if (not IsA(v, "UIListLayout")) then
                        Utils.Tween(v, "Sine", "Out", .25, {
                            TextTransparency = 0
                        })
                    end
                end
            
                local ConsoleListLayout = Console.Frame.List.UIListLayout
            
                CConnect(GetPropertyChangedSignal(ConsoleListLayout, "AbsoluteContentSize"), function()
                    local CanvasPosition = Console.Frame.List.CanvasPosition
                    local CanvasSize = Console.Frame.List.CanvasSize
                    local AbsoluteSize = Console.Frame.List.AbsoluteSize
            
                    if (CanvasSize.Y.Offset - AbsoluteSize.Y - CanvasPosition.Y < 20) then
                       wait();
                       Console.Frame.List.CanvasPosition = Vector2.new(0, CanvasSize.Y.Offset + 1000);
                    end
                end)
            
                Utils.Tween(Console.Frame.List, "Sine", "Out", .25, {
                    ScrollBarImageTransparency = 0
                })
            end
        end
    end));
    AddConnection(CConnect(UserInputService.InputEnded, function(Input, GameProcessed)
        if (GameProcessed) then return end
        local KeyCode = split(tostring(Input.KeyCode), ".")[3]
        if (Keys[KeyCode] or Keys[Input.KeyCode]) then
            Keys[KeyCode] = false
        end
    end));
end

AddCommand("noclip", {}, "noclips your character", {3}, function(Caller, Args, CEnv)
    local Char = GetCharacter()
    local Noclipping = AddConnection(CConnect(Stepped, function()
        for i, v in next, GetChildren(Char) do
            if (IsA(v, "BasePart") and v.CanCollide) then
                SpoofProperty(v, "CanCollide");
                v.CanCollide = false
            end
        end
    end), CEnv);
    local Torso = isR6() and Char.Torso or Char.UpperTorso
    local Noclipping2 = AddConnection(CConnect(Torso.Touched, function(Part)
        if (Part and Part.CanCollide and not FindFirstChildWhichIsA(Part.Parent, "Humanoid")) then
            local OldTransparency = Part.Transparency
            Part.CanCollide = false
            Part.Transparency = Part.Transparency <= 0.5 and 0.6 or Part.Transparency
            wait(2);
            Part.CanCollide = true
            Part.Transparency = OldTransparency
        end
    end), CEnv);
    Utils.Notify(Caller, "Command", "noclip enabled");
    CWait(GetHumanoid().Died);
    DisableAllCmdConnections("noclip");
                    GUI:Notification{
                Title = "Alert",
                Text = "Noclip disabled.",
                Duration = 3,
                Callback = function() end
            }
end)

AddCommand("clip", {"unnoclip"}, "disables noclip", {}, function(Caller, Args)
    if (not next(LoadCommand("noclip").CmdEnv)) then
                        GUI:Notification{
                Title = "Alert",
                Text = "You aren't in noclip.",
                Duration = 3,
                Callback = function() end
            }
    else
        DisableAllCmdConnections("noclip");
                        GUI:Notification{
                Title = "Alert",
                Text = "Noclipped disabled.",
                Duration = 3,
                Callback = function() end
            }
    end
end)


local CommandsLoaded = false
AddCommand("commands", {"cmds"}, "shows you all the commands listed in Goign Rogue admin", {}, function()
    if (not CommandsLoaded) then
        local CommandsList = Commands.Frame.List
        Utils.SmoothScroll(CommandsList, .14);
        for _, v in next, CommandsTable do
            if (not FindFirstChild(CommandsList, v.Name)) then
                local Clone = Clone(Command)
                Utils.Hover(Clone, "BackgroundColor3");
                Utils.ToolTip(Clone, v.Name .. "\n" .. v.Description);
                Clone.CommandText.Text = v.Name .. (#v.Aliases > 0 and " (" ..concat(v.Aliases, ", ") .. ")" or "");
                Clone.Name = v.Name
                Clone.Visible = true
                Clone.Parent = CommandsList
            end
        end
        Commands.Frame.List.CanvasSize = UDim2.fromOffset(0, Commands.Frame.List.UIListLayout.AbsoluteContentSize.Y);
        CommandsTransparencyClone = Clone(Commands);
        Utils.SetAllTrans(Commands)
        CommandsLoaded = true
    end
    Commands.Visible = true
    Utils.TweenAllTransToObject(Commands, .25, CommandsTransparencyClone);
                    GUI:Notification{
                Title = "Alert",
                Text = "Commands loaded.",
                Duration = 3,
                Callback = function() end
            }
end)



AddCommand("walkspeed", {"speed"}, "changes your walkspeed to the second argument", {}, function(Caller, Args, CEnv)
    local Humanoid = GetHumanoid();
    CEnv[1] = Humanoid.WalkSpeed
    SpoofProperty(Humanoid, "WalkSpeed");
    Humanoid.WalkSpeed = tonumber(Args[1]) or 16
            GUI:Notification{
                Title = "Alert",
                Text = "Your walkspeed is now " .. Humanoid.WalkSpeed,
                Duration = 3,
                Callback = function() end
            }
end)

AddCommand("jumppower", {}, "changes your jumpower to the second argument", {}, function(Caller, Args, CEnv)
    local Humanoid = GetHumanoid();
    CEnv[1] = Humanoid.JumpPower
    SpoofProperty(Humanoid, "JumpPower");
    SpoofProperty(Humanoid, "UseJumpPower");
    Humanoid.UseJumpPower = true
    Humanoid.JumpPower = tonumber(Args[1]) or 50
    GUI:Notification{
        Title = "Alert",
        Text = "Your jumppower is now " .. Humanoid.JumpPower .. ".",
        Duration = 3,
        Callback = function() end
    }
end)

AddCommand("fly", {}, "fly your character", {3}, function(Caller, Args, CEnv)
    LoadCommand("fly").CmdEnv[1] = tonumber(Args[1]) or GetConfig().FlySpeed or 3
    local Speed = LoadCommand("fly").CmdEnv[1]
    for i, v in next, GetChildren(GetRoot()) do
        if (IsA(v, "BodyPosition") or IsA(v, "BodyGyro")) then
            Destroy(v);
        end
    end
    local BodyPos = InstanceNew("BodyPosition");
    local BodyGyro = InstanceNew("BodyGyro");
    ProtectInstance(BodyPos);
    ProtectInstance(BodyGyro);
    SpoofProperty(GetHumanoid(), "FloorMaterial");
    SpoofProperty(GetHumanoid(), "PlatformStand");
    BodyPos.Parent = GetRoot();
    BodyGyro.Parent = GetRoot();
    BodyGyro.maxTorque = Vector3New(1, 1, 1) * 9e9
    BodyGyro.CFrame = GetRoot().CFrame
    BodyPos.maxForce = Vector3New(1, 1, 1) * math.huge
    GetHumanoid().PlatformStand = true
    CThread(function()
        BodyPos.Position = GetRoot().Position
        while (next(LoadCommand("fly").CmdEnv) and wait()) do
            Speed = LoadCommand("fly").CmdEnv[1]
            local NewPos = (BodyGyro.CFrame - (BodyGyro.CFrame).Position) + BodyPos.Position
            local CoordinateFrame = Camera.CoordinateFrame
            if (Keys["W"]) then
                NewPos = NewPos + CoordinateFrame.lookVector * Speed

                BodyPos.Position = (GetRoot().CFrame * CFrameNew(0, 0, -Speed)).Position;
                BodyGyro.CFrame = CoordinateFrame * CFrame.Angles(-rad(Speed * 15), 0, 0);
            end
            if (Keys["A"]) then
                NewPos = NewPos * CFrameNew(-Speed, 0, 0);
            end
            if (Keys["S"]) then
                NewPos = NewPos - CoordinateFrame.lookVector * Speed

                BodyPos.Position = (GetRoot().CFrame * CFrameNew(0, 0, Speed)).Position;
                BodyGyro.CFrame = CoordinateFrame * CFrame.Angles(-rad(Speed * 15), 0, 0);
            end
            if (Keys["D"]) then
                NewPos = NewPos * CFrameNew(Speed, 0, 0);
            end
            BodyPos.Position = NewPos.Position
            BodyGyro.CFrame = CoordinateFrame
        end
        GetHumanoid().PlatformStand = false
    end)();
end)

AddCommand("flyspeed", {"fs"}, "changes the fly speed", {3, "1"}, function(Caller, Args)
    local Speed = tonumber(Args[1]);
    LoadCommand("fly").CmdEnv[1] = Speed or LoadCommand("fly").CmdEnv[1]
    if (Speed) then
        SetConfig({FlySpeed=Speed});
            GUI:Notification{
        Title = "Alert",
        Text = "Your fly speed is now " .. Speed .. ".",
        Duration = 3,
        Callback = function() end
    }
    else
    GUI:Notification{
        Title = "Alert",
        Text = "Flyspeed must be a number.",
        Duration = 3,
        Callback = function() end
    }
    end
end)

AddCommand("unfly", {}, "unflies your character", {3}, function()
    local FlyCEnv = LoadCommand("fly").CmdEnv
    if (FlyCEnv.Animate) then
        FlyCEnv.Animate.Disabled = false
        FlyCEnv.Animate = nil
    end
    DisableAllCmdConnections("fly");
    table.clear(FlyCEnv);
    LoadCommand("fly").CmdEnv = {}
    local Root = GetRoot();
    local Instances = { ["BodyPosition"] = true, ["BodyGyro"] = true, ["BodyVelocity"] = true }
    for i, v in next, GetChildren(Root) do
        if (Instances[v.ClassName]) then
            Destroy(v);
        end
    end
    UnSpoofInstance(Root);
    GetHumanoid().PlatformStand = false
end)


AddCommand("unfly", {}, "unflies your character", {3}, function()
    local FlyCEnv = LoadCommand("fly").CmdEnv
    if (FlyCEnv.Animate) then
        FlyCEnv.Animate.Disabled = false
        FlyCEnv.Animate = nil
    end
    DisableAllCmdConnections("fly");
    table.clear(FlyCEnv);
    LoadCommand("fly").CmdEnv = {}
    local Root = GetRoot();
    local Instances = { ["BodyPosition"] = true, ["BodyGyro"] = true, ["BodyVelocity"] = true }
    for i, v in next, GetChildren(Root) do
        if (Instances[v.ClassName]) then
            Destroy(v);
        end
    end
    UnSpoofInstance(Root);
    GetHumanoid().PlatformStand = false
end)

AddCommand("float", {}, "floats your character", {}, function(Caller, Args, CEnv)
    if (not CEnv[1]) then
        local Part = InstanceNew("Part");
        Part.CFrame = CFrameNew(0, -10000, 0);
        Part.Size = Vector3New(2, .2, 1.5);
        Part.Material = "Grass"
        Part.Anchored = true
        Part.Transparency = 1
        ProtectInstance(Part);
        Part.Parent = Services.Workspace
        CEnv[2] = Part
        local R6 = isR6();
        local Root = GetRoot();
        AddConnection(CConnect(RenderStepped, function()
            if (CEnv[1] and Root) then
                Part.CFrame = Root.CFrame * CFrameNew(0, -3.1, 0);
            else
                Part.CFrame = CFrameNew(0, -10000, 0);
                Root = GetRoot();
            end
            if (Keys["Q"]) then
                Root.CFrame = Root.CFrame * CFrameNew(0, -1.5, 0);
            elseif (Keys["E"]) then
                Root.CFrame = Root.CFrame * CFrameNew(0, 1.5, 0);
            end
        end), CEnv)
    GUI:Notification{
        Title = "Alert",
        Text = "Now floating.",
        Duration = 3,
        Callback = function() end
    }
    end
end)

AddCommand("unfloat", {"nofloat"}, "stops float", {}, function(Caller, Args, CEnv)
    local Floating = LoadCommand("float").CmdEnv
    if (Floating[1]) then
        Disconnect(Floating[1]);
        Destroy(Floating[2]);
        LoadCommand("float").CmdEnv = {}
    GUI:Notification{
        Title = "Alert",
        Text = "Stopped floating.",
        Duration = 3,
        Callback = function() end
    }
    end
        GUI:Notification{
        Title = "Alert",
        Text = "Floating is not on.",
        Duration = 3,
        Callback = function() end
    }
end)

AddCommand("fov", {}, "sets your fov", {}, function(Caller, Args)
    local Amount = tonumber(Args[1]) or 70
    SpoofProperty(Camera, "FieldOfView");
    Camera.FieldOfView = Amount
end)

AddCommand("view", {}, "views a user", {3,"1"}, function(Caller, Args, CEnv)
    local Target = GetPlayer(Args[1]);
    if (#Target ~= 1) then
            GUI:Notification{
        Title = "Alert",
        Text = "You can only view 1 person.",
        Duration = 3,
        Callback = function() end
    }
    end
    Target = Target[1]
    Camera.CameraSubject = GetCharacter(Target) or GetCharacter();
    AddConnection(CConnect(Target.CharacterAdded, function()
        CWait(Heartbeat);
        Camera.CameraSubject = Target.Character
    end), CEnv);
    AddConnection(CConnect(LocalPlayer.CharacterAdded, function()
        WaitForChild(LocalPlayer.Character, "Humanoid");
        CWait(Camera.CameraSubject.Changed);
        CWait(Heartbeat);
        Camera.CameraSubject = Target.Character
    end), CEnv);
        GUI:Notification{
        Title = "Alert",
        Text = "Viewing" .. Target.Name,
        Duration = 3,
        Callback = function() end
    }
end)

AddCommand("unview", {"rv"}, "unviews a user", {3}, function(Caller, Args)
    DisableAllCmdConnections("view");
    Camera.CameraSubject = GetCharacter();
    GUI:Notification{
        Title = "Alert",
        Text = "Unviewing...",
        Duration = 3,
        Callback = function() end
    }
end)

AddCommand("rejoin", {"rj"}, "rejoins the game you're currently in", {}, function(Caller)
    if (Caller == LocalPlayer) then
        local TeleportService = Services.TeleportService
        if (#GetPlayers(Players) == 1) then
            LocalPlayer:Kick();
            TeleportService.Teleport(TeleportService, game.PlaceId);
        else
            TeleportService.TeleportToPlaceInstance(TeleportService, game.PlaceId, game.JobId)
        end
        GUI:Notification{
        Title = "Alert",
        Text = "Rejoining...",
        Duration = 3,
        Callback = function() end
    }
    end
end)

AddCommand("serverhop", {"shop"}, "switches servers (optional: min, max (default: max))", {{"min", "max"}}, function(Caller, Args)
    if (Caller == LocalPlayer) then
        Utils.Notify(Caller or LocalPlayer, "Command", "Looking for servers...");
        local order = ""
        local Option, Server = lower(Args[1] or "max");
        if Option == "min" then
            order = "Asc"
        elseif Option == "max" then
            order = "Desc"
        end;

        local Servers = {};
        local url = format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=%s&limit=100", game.PlaceId, order);
        local starting = tick();
        repeat
            local good, result = pcall(function()
                return game:HttpGet(url);
            end);
            if (not good) then
                wait(2);
                continue;
            end
            local decoded = Services.HttpService:JSONDecode(result);
            if (#decoded.data ~= 0) then
                Servers = decoded.data
                for i, v in pairs(Servers) do
                    if (v.maxPlayers and v.playing and v.maxPlayers > v.playing and v.id ~= game.JobId) then
                        Server = v
                        break;
                    end
                end
                if (Server) then
                    break;
                end
            end
            url = format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=%s&limit=100&cursor=%s", game.PlaceId, order, decoded.nextPageCursor);
        until tick() - starting >= 600;
        if (not Server or #Servers == 0) then
            return "no servers found";
        end

        local queue_on_teleport = syn and syn.queue_on_teleport or queue_on_teleport
        if (queue_on_teleport and not Args[2]) then
            queue_on_teleport("loadstring(game.HttpGet(game, \"https://raw.githubusercontent.com\"))()");
        end;

        Services.TeleportService:TeleportToPlaceInstance(game.PlaceId, Server.id);    
        return format("joining server (%d/%d players)", Server.playing, Server.maxPlayers);
    end
end);

AddCommand("freecam", {"fc"}, "enables/disables freecam", {}, function(Caller, Args, CEnv)
    if (not CEnv.Activated) then
        -- roblox freecam modifed by fate
        local Spring = {}
        Spring.__index = Spring
        function Spring:Update(dt)
            local t, k, d, x0, v0 = self.t, self.k, self.d, self.x, self.v
            local a0 = k * (t - x0) + v0 * d
            local v1 = v0 + a0 * (dt / 2);
            local a1 = k * (t - (x0 + v0 * (dt / 2))) + v1 * d
            local v2 = v0 + a1 * (dt / 2);
            local a2 = k * (t - (x0 + v1 * (dt / 2))) + v2 * d
            local v3 = v0 + a2 * dt
            local x4 = x0 + (v0 + 2 * (v1 + v2) + v3) * (dt / 6);
            self.x, self.v = x4, v0 + (a0 + 2 * (a1 + a2) + k * (t - (x0 + v2 * dt)) + v3 * d) * (dt / 6);
            return x4
        end
        function Spring.new(stiffness, dampingCoeff, dampingRatio, initialPos)
            local self = setmetatable({}, Spring);

            dampingRatio = dampingRatio or 1
            local m = dampingCoeff * dampingCoeff / (4 * stiffness * dampingRatio * dampingRatio);
            self.k = stiffness / m
            self.d = -dampingCoeff / m
            self.x = initialPos
            self.t = initialPos
            self.v = initialPos * 0

            return self
        end
        local StarterGui = Services.StarterGui
        local UserInputService = Services.UserInputService
        local RunService = Services.RunService

        local WasGuiVisible = {}
        local GetCore, GetCoreGuiEnabled, SetCore, SetCoreGuiEnabled = StarterGui.GetCore, StarterGui.GetCoreGuiEnabled, StarterGui.SetCore, StarterGui.SetCoreGuiEnabled
        local CoreGuiType = Enum.CoreGuiType
        function ToggleGui(on)
            if not on then
                WasGuiVisible["PointsNotificationsActive"] = GetCore(StarterGui, "PointsNotificationsActive");
                WasGuiVisible["BadgesNotificationsActive"] = GetCore(StarterGui, "BadgesNotificationsActive");
                WasGuiVisible["Health"] = GetCoreGuiEnabled(StarterGui, CoreGuiType.Health);
                WasGuiVisible["Backpack"] = GetCoreGuiEnabled(StarterGui, CoreGuiType.Backpack);
                WasGuiVisible["PlayerList"] = GetCoreGuiEnabled(StarterGui, CoreGuiType.PlayerList);
                WasGuiVisible["Chat"] = GetCoreGuiEnabled(StarterGui, CoreGuiType.Chat);
            end

            local function GuiOn(name)
                if on == false then
                    return false
                end
                if WasGuiVisible[name] ~= nil then
                    return WasGuiVisible[name]
                end
                return true
            end

            SetCore(StarterGui, "PointsNotificationsActive", GuiOn("PointsNotificationsActive"));
            SetCore(StarterGui, "BadgesNotificationsActive", GuiOn("BadgesNotificationsActive"));

            SetCoreGuiEnabled(StarterGui, CoreGuiType.Health, GuiOn("Health"));
            SetCoreGuiEnabled(StarterGui, CoreGuiType.Backpack, GuiOn("Backpack"));
            SetCoreGuiEnabled(StarterGui, CoreGuiType.PlayerList, GuiOn("PlayerList"));
            SetCoreGuiEnabled(StarterGui, CoreGuiType.Chat, GuiOn("Chat"));
        end

        local Vector2New = Vector2.new

        local DEF_FOV = 70
        local NM_ZOOM = math.tan(DEF_FOV * math.pi/360);
        local LVEL_GAIN = Vector3New(1, 0.75, 1);
        local RVEL_GAIN = Vector2New(0.85, 1) / 128
        local FVEL_GAIN = -330
        local DEADZONE = 0.125
        local FOCUS_OFFSET = CFrameNew(0, 0, -16);

        local DIRECTION_LEFT = 1
        local DIRECTION_RIGHT = 2
        local DIRECTION_FORWARD = 3
        local DIRECTION_BACKWARD = 4
        local DIRECTION_UP = 5
        local DIRECTION_DOWN = 6

        local KEY_MAPPINGS = {
            [DIRECTION_LEFT] = {Enum.KeyCode.A, Enum.KeyCode.H},
            [DIRECTION_RIGHT] = {Enum.KeyCode.D, Enum.KeyCode.K},
            [DIRECTION_FORWARD] = {Enum.KeyCode.W, Enum.KeyCode.U},
            [DIRECTION_BACKWARD] = {Enum.KeyCode.S, Enum.KeyCode.J},
            [DIRECTION_UP] = {Enum.KeyCode.E, Enum.KeyCode.I},
            [DIRECTION_DOWN] = {Enum.KeyCode.Q, Enum.KeyCode.Y},
        }

        local screenGuis = {}
        local freeCamEnabled = false

        local V3, V2 = Vector3New(), Vector2New();

        local stateRot = V2
        local panDeltaGamepad = V2
        local panDeltaMouse = V2

        local velSpring = Spring.new(7 / 9, 1 / 3, 1, V3);
        local rotSpring = Spring.new(7 / 9, 1 / 3, 1, V2);
        local fovSpring = Spring.new(2, 1 / 3, 1, 0);

        local gp_x  = 0
        local gp_z  = 0
        local gp_l1 = 0
        local gp_r1 = 0
        local rate_fov = 0

        local SpeedModifier = 1

        local function Clamp(x, min, max)
            return x < min and min or x > max and max or x
        end

        local function GetChar()
            local Char = GetCharacter();
            if Char then
                return FindFirstChildOfClass(Char, "Humanoid"), FindFirstChild(Char, "HumanoidRootPart");
            end
        end

        local function InputCurve(x)
            local s = abs(x);
            if s > DEADZONE then
                s = 0.255000975 * (2 ^ (2.299113817 * s) - 1);
                return x > 0 and (s > 1 and 1 or s) or (s > 1 and -1 or -s);
            end
            return 0
        end

        local function ProcessInput(input, processed)
            local userInputType = input.UserInputType
            Processed = processed
            if userInputType == Enum.UserInputType.Gamepad1 then
                local keycode = input.KeyCode
                if keycode == Enum.KeyCode.Thumbstick2 then
                    local pos = input.Position
                    panDeltaGamepad = Vector2.new(InputCurve(pos.y), InputCurve(-pos.x)) * 7
                elseif keycode == Enum.KeyCode.Thumbstick1 then
                    local pos = input.Position
                    gp_x = InputCurve(pos.x)
                    gp_z = InputCurve(-pos.y)
                elseif keycode == Enum.KeyCode.ButtonL2 then
                    gp_l1 = input.Position.z
                elseif keycode == Enum.KeyCode.ButtonR2 then
                    gp_r1 = input.Position.z
                end

                rate_fov = input.Position.Z
            end
        end
        CEnv.Connections = {}
        AddConnection(CConnect(UserInputService.InputChanged, ProcessInput));
        AddConnection(CConnect(UserInputService.InputEnded, ProcessInput));
        AddConnection(CConnect(UserInputService.InputBegan, ProcessInput));
        local IsKeyDown = UserInputService.IsKeyDown
        local function IsDirectionDown(direction)
            for i = 1, #KEY_MAPPINGS[direction] do
                if (IsKeyDown(UserInputService, KEY_MAPPINGS[direction][i]) and not Processed) then
                    return true
                end
            end
            return false
        end

        local UpdateFreecam do
            local dt = 1/60
            AddConnection(CConnect(RenderStepped, function(_dt)
                dt = _dt
            end));

            function UpdateFreecam()
                local camCFrame = Camera.CFrame

                local kx = (IsDirectionDown(DIRECTION_RIGHT) and 1 or 0) - (IsDirectionDown(DIRECTION_LEFT) and 1 or 0);
                local ky = (IsDirectionDown(DIRECTION_UP) and 1 or 0) - (IsDirectionDown(DIRECTION_DOWN) and 1 or 0);
                local kz = (IsDirectionDown(DIRECTION_BACKWARD) and 1 or 0) - (IsDirectionDown(DIRECTION_FORWARD) and 1 or 0);
                local km = (kx * kx) + (ky * ky) + (kz * kz)
                if km > 1e-15 then
                    km = ((IsKeyDown(UserInputService, Enum.KeyCode.LeftShift) or IsKeyDown(UserInputService, Enum.KeyCode.RightShift)) and 1 / 4 or 1) / math.sqrt(km);
                    kx = kx * km
                    ky = ky * km
                    kz = kz * km
                end

                local dx = kx + gp_x
                local dy = ky + gp_r1 - gp_l1
                local dz = kz + gp_z

                velSpring.t = Vector3New(dx, dy, dz) * SpeedModifier
                rotSpring.t = panDeltaMouse + panDeltaGamepad
                fovSpring.t = Clamp(fovSpring.t + dt * rate_fov*FVEL_GAIN, 5, 120);

                local fov  = fovSpring:Update(dt);
                local dPos = velSpring:Update(dt) * LVEL_GAIN
                local dRot = rotSpring:Update(dt) * (RVEL_GAIN * math.tan(fov * math.pi / 360) * NM_ZOOM);

                rate_fov = 0
                panDeltaMouse = V2

                stateRot = stateRot + dRot
                stateRot = Vector2New(Clamp(stateRot.x, -3 / 2, 3 / 2), stateRot.y);

                local c = CFrameNew(camCFrame.p) * CFrame.Angles(0, stateRot.y, 0) * CFrame.Angles(stateRot.x, 0, 0) * CFrameNew(dPos);

                Camera.CFrame = c
                Camera.Focus = c * FOCUS_OFFSET
                Camera.FieldOfView = fov
            end
        end

        local function Panned(input, processed)
            if not processed and input.UserInputType == Enum.UserInputType.MouseMovement then
                local delta = input.Delta
                panDeltaMouse = Vector2New(-delta.y, -delta.x);
            end
        end

        local function EnterFreecam()
            ToggleGui(false);
            UserInputService.MouseIconEnabled = false
            AddConnection(CConnect(UserInputService.InputBegan, function(input, processed)
                if input.UserInputType == Enum.UserInputType.MouseButton2 then
                    UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
                    local conn = CConnect(UserInputService.InputChanged, Panned)
                    repeat
                        input = CWait(UserInputService.InputEnded);
                    until input.UserInputType == Enum.UserInputType.MouseButton2 or not freeCamEnabled
                    panDeltaMouse = V2
                    panDeltaGamepad = V2
                    Disconnect(conn);
                    if freeCamEnabled then
                        UserInputService.MouseBehavior = Enum.MouseBehavior.Default
                    end
                elseif input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
                    SpeedModifier = 0.5
                end
            end), CEnv.Connections);

            AddConnection(CConnect(UserInputService.InputEnded, function(input, processed)
                if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
                    SpeedModifier = 1
                end
            end), CEnv.Connections);

            Camera.CameraType = Enum.CameraType.Scriptable

            local hum, hrp = GetChar()
            if hrp then
                hrp.Anchored = true
            end
            if hum then
                hum.WalkSpeed = 0
                AddConnection(CConnect(hum.Jumping, function(active)
                    if active then
                        hum.Jumping = false
                    end
                end), CEnv.Connections);
            end

            velSpring.t, velSpring.v, velSpring.x = V3, V3, V3
            rotSpring.t, rotSpring.v, rotSpring.x = V2, V2, V2
            fovSpring.t, fovSpring.v, fovSpring.x = Camera.FieldOfView, 0, Camera.FieldOfView

            local camCFrame = Camera.CFrame
            local lookVector = camCFrame.lookVector.unit

            stateRot = Vector2.new(
                math.asin(lookVector.y),
                math.atan2(-lookVector.z, lookVector.x) - math.pi/2
            )
            panDeltaMouse = Vector2New();
            for _, obj in next, GetChildren(PlayerGui) do
                if IsA(obj, "ScreenGui") and obj.Enabled then
                    obj.Enabled = false
                    screenGuis[obj] = true
                end
            end

            AddConnection(CConnect(LocalPlayer.CharacterAdded, function()
                local Hrp = WaitForChild(LocalPlayer.Character, "HumanoidRootPart");
                Hrp.Anchored = true
            end), CEnv.Connections);
            RunService.BindToRenderStep(RunService, "Freecam", Enum.RenderPriority.Camera.Value, UpdateFreecam);
            CEnv.Enabled = true
        end

        local function ExitFreecam()
            CEnv.Enabled = false
            UserInputService.MouseIconEnabled = true
            UserInputService.MouseBehavior = Enum.MouseBehavior.Default

            RunService.UnbindFromRenderStep(RunService, "Freecam")
            local hum, hrp = GetChar()
            if hum then
                hum.WalkSpeed = 16
            end
            if hrp then
                hrp.Anchored = false
            end
            Camera.FieldOfView = DEF_FOV
            Camera.CameraType = Enum.CameraType.Custom
            for i, Connection in next, CEnv.Connections do
                Disconnect(Connection);
            end
            for obj in next, screenGuis do
                obj.Enabled = true
            end
            screenGuis = {}
            ToggleGui(true)
        end

        EnterFreecam()
        CEnv.Activated = true
        CEnv.Enabled = true
        CEnv.EnterFreecam = EnterFreecam
        CEnv.ExitFreecam = ExitFreecam
    GUI:Notification{
        Title = "Alert",
        Text = "Freecam enabled!",
        Duration = 3,
        Callback = function() end
    }
    end
    if (CEnv.Enabled) then
        CEnv.ExitFreecam();
        GUI:Notification{
        Title = "Alert",
        Text = "Freecam disabled.",
        Duration = 3,
        Callback = function() end
    }
    else
        CEnv.EnterFreecam();
            GUI:Notification{
        Title = "Alert",
        Text = "Freecam enabled!",
        Duration = 3,
        Callback = function() end
    }
    end
end)

AddCommand("respawn", {"undetain", "re"}, "Respawns you", {}, function(Caller, Args)
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("Reset"):InvokeServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("SkydivingService"):WaitForChild("RF"):WaitForChild("FallDamage"):InvokeServer(10)
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("RequestDeploy"):InvokeServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("Respawn"):InvokeServer()
                GUI:Notification{
                Title = "Alert",
                Text = "Respawned.",
                Duration = 3,
                Callback = function() end
            }
end)

AddCommand("kill", {"username"}, "Kills personnel", {}, function(Caller, Args)
    local targetUsername = Args[1]

    if targetUsername then
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local backpack = player.Backpack
        local firstTool = backpack:FindFirstChildOfClass("Tool")
        if firstTool then
            firstTool.Parent = character
            firstTool.Parent = character
        end
        local function killPlayer(player)
            local args = {
                [1] = workspace[player.Name].Head,
                [2] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Main,
                [3] = workspace[player.Name].Head.Position,
                [4] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.FireSound,
                [5] = Vector3.new(0, 0, -1)
            }

            game:GetService("ReplicatedStorage").Stratarches.RepRayEvent:FireServer(unpack(args))
        end

        local targetPlayer = nil
        for _, player in ipairs(game.Players:GetPlayers()) do
            if string.find(player.Name:lower(), targetUsername:lower(), 1, true) then
                targetPlayer = player
                break
            end
        end

        if targetPlayer then
            repeat
                killPlayer(targetPlayer)
                wait(1) -- Adjust the delay as needed
            until targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid") and targetPlayer.Character.Humanoid.Health <= 0
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local equippedTool = character:FindFirstChildOfClass("Tool")
            if equippedTool then
                equippedTool.Parent = player.Backpack
                wait()
            end
    GUI:Notification{
        Title = "Alert",
        Text = "Killed " .. targetPlayer.Name .. "!",
        Duration = 3,
        Callback = function() end
    }
        else
            GUI:Notification{
                Title = "Alert",
                Text = "No player matching the provided username found.",
                Duration = 3,
                Callback = function() end
            }
        end
    else
        GUI:Notification{
            Title = "Alert",
            Text = "Please enter a valid username in the text box.",
            Duration = 3,
            Callback = function() end
        }
    end
end)



AddCommand("goto", {"to"}, "teleports yourself to the other character", {3, "1"}, function(Caller, Args)
    local Target = GetPlayer(Args[1]);
    local Delay = tonumber(Args[2]);
    for i, v in next, Target do
        if (Delay) then
            wait(Delay);
        end
        if (Caller ~= LocalPlayer) then
            ExecuteCommand("bring", {Caller.Name, v.Name}, LocalPlayer)
        else
            GetRoot().CFrame = GetRoot(v).CFrame * CFrameNew(-5, 0, 0);
        end
    end
end)

AddCommand("loopgoto", {"loopto"}, "loop teleports yourself to the other character", {3, "1"}, function(Caller, Args, CEnv)
    local Target = GetPlayer(Args[1])[1]
    local Connection = CConnect(Heartbeat, function()
        GetRoot().CFrame = GetRoot(Target).CFrame * CFrameNew(0, 0, 2);
    end)

    CEnv[Target.Name] = Connection
    AddPlayerConnection(LocalPlayer, Connection);
    AddConnection(Connection);
    GUI:Notification{
        Title = "Alert",
        Text = "Now looping to" .. Target.name .. ".",
        Duration = 3,
        Callback = function() end
    }
end)

AddCommand("unloopgoto", {"unloopto"}, "removes loop teleportation to the other character", {}, function(Caller)
    local Looping = LoadCommand("loopgoto").CmdEnv;
    if (not next(Looping)) then
    GUI:Notification{
        Title = "Alert",
        Text = "You aren't loop teleporting to anyone.",
        Duration = 3,
        Callback = function() end
    }
    end
    DisableAllCmdConnections("loopgoto");
    GUI:Notification{
        Title = "Alert",
        Text = "Loopgoto disabled.",
        Duration = 3,
        Callback = function() end
    }
end)

AddCommand("freecamgoto", {"fcgoto"}, "takes your freecam to t hem", {"1"}, function(Caller, Args)
    local Target = GetPlayer(Args[1]);
    local Delay = tonumber(Args[2]);
    for i, v in next, Target do
        if (Delay) then
            wait(Delay);
        end
        Camera.CFrame = GetRoot(v).CFrame * CFrameNew(0, 10, 10);
    end
end)

AddCommand("inviscam", {"inviscamera"}, "makes you see through walls more better", {}, function(Caller, Args, CEnv)
    CEnv.OldCameraMaxZoomDistance = LocalPlayer.CameraMaxZoomDistance
    CEnv.OldDevCameraOcclusionMode = LocalPlayer.DevCameraOcclusionMode
    LocalPlayer.CameraMaxZoomDistance = 600
    LocalPlayer.DevCameraOcclusionMode = "Invisicam"
    GUI:Notification{
        Title = "Alert",
        Text = "Inviscam enabled.",
        Duration = 3,
        Callback = function() end
    }
end)

AddCommand("uninviscam", {"uninviscamera"}, "disables inviscam", {}, function()
    local CmdEnv = LoadCommand("inviscam").CmdEnv
    LocalPlayer.CameraMaxZoomDistance = CmdEnv.OldCameraMaxZoomDistance
    LocalPlayer.DevCameraOcclusionMode = CmdEnv.OldDevCameraOcclusionMode
    GUI:Notification{
        Title = "Alert",
        Text = "Inviscam disabled.",
        Duration = 3,
        Callback = function() end
    }
end)

AddCommand("loop", {"loopcommand"}, "loops a command", {"1"}, function(Caller, Args, CEnv)
    local Command = Args[1]
    local LoadedCommand = LoadCommand(Command);
    if (not LoadedCommand) then
        return format("command %s not found", Command);
    end
    Args = shift(Args);
    CEnv.Looping = true
    CEnv.LoopedCommands = CEnv.LoopedCommands or {}
    CEnv.LoopedCommands[Command] = true
    CThread(function()
        while (CEnv.Looping and CEnv.LoopedCommands[Command]) do
            ExecuteCommand(Command, Args, Caller);
            wait(tonumber(Args[#Args]) or 1);
        end
    end)();
    return format("now looping the %s command", Command);
end)

AddCommand("unloop", {"unloopcommand"}, "unloops a command", {}, function(Caller, Args)
    local Looped = LoadCommand("loop").CmdEnv
    if (Args[1]) then
        if (Looped.LoopedCommands[Args[1]]) then
            Looped.LoopedCommands[Args[1]] = nil
            return format("unlooped command %s", Args[1]);
        end
    GUI:Notification{
        Title = "Alert",
        Text = "Command isn't looped.",
        Duration = 3,
        Callback = function() end
    }
    else
        Looped.Looping = false
    GUI:Notification{
        Title = "Alert",
        Text = "Unlooped all commands that were looped.",
        Duration = 3,
        Callback = function() end
    }
    end
end)

task.spawn(function()
    local chatted = function(plr, raw)
        local message = raw

        if (_L.ChatLogsEnabled) then

            local time = os.date("%X");
            local Text = format("%s - [%s]: %s", time, plr.Name, raw);
            local Clone = Clone(ChatLogMessage);

            Clone.Text = Text
            Clone.Visible = true
            Clone.TextTransparency = 1
            Clone.Parent = ChatLogs.Frame.List

            Utils.Tween(Clone, "Sine", "Out", .25, {
                TextTransparency = 0
            })

            ChatLogs.Frame.List.CanvasSize = UDim2.fromOffset(0, ChatLogs.Frame.List.UIListLayout.AbsoluteContentSize.Y);
        end

        if (startsWith(raw, "/e")) then
            raw = sub(raw, 4);
        elseif (startsWith(raw, "/w")) then
            raw = shift(shift(split(message, " ")));
        elseif (startsWith(raw, Prefix)) then
            raw = sub(raw, #Prefix + 1);
        else
            return
        end

        message = trim(raw);

        if (Tfind(AdminUsers, plr) or plr == LocalPlayer) then
            local CommandArgs = split(message, " ");
            local Command = CommandArgs[1]
            local Args = shift(CommandArgs);

            ExecuteCommand(Command, Args, plr);
        end
    end

    CConnect(LocalPlayer.Chatted, function(raw)
        chatted(LocalPlayer, raw);
    end);

    if (Services.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService) then
        Services.TextChatService.OnIncomingMessage = function(message)
            chatted(Services.Players:FindFirstChild(message.TextSource.Name), message.Text);
        end
        return;
    end

    local DefaultChatSystemChatEvents = Services.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents");
    if (not DefaultChatSystemChatEvents) then return; end
    local OnMessageDoneFiltering = DefaultChatSystemChatEvents:WaitForChild("OnMessageDoneFiltering", 5);
    if (not OnMessageDoneFiltering) then return; end
    if (typeof(OnMessageDoneFiltering) ~= "Instance" or OnMessageDoneFiltering.ClassName ~= "RemoteEvent") then return; end


    CConnect(OnMessageDoneFiltering.OnClientEvent, function(messageData)
        if (type(messageData) ~= "table") then return; end
        local plr = Services.Players:FindFirstChild(messageData.FromSpeaker);
        local raw = messageData.Message
        if (not plr or not raw or plr == LocalPlayer) then return; end

        if (messageData.OriginalChannel == "Team") then
            raw = "/team " .. raw
        else
            local whisper = string.match(messageData.OriginalChannel, "To (.+)");
            if (whisper) then
                raw = string.format("/w %s %s", whisper, raw);
            end
        end

        chatted(plr, raw);
    end);

end);

--IMPORT [uimore]
Notification.Visible = false
Utils.SetAllTrans(CommandBar);
Utils.SetAllTrans(ChatLogs);
Utils.SetAllTrans(GlobalChatLogs);
Utils.SetAllTrans(HttpLogs);
Utils.SetAllTrans(Console);
Commands.Visible = false
ChatLogs.Visible = false
Console.Visible = false
GlobalChatLogs.Visible = false
HttpLogs.Visible = false

Utils.Draggable(Commands);
Utils.Draggable(ChatLogs);
Utils.Draggable(Console);
Utils.Draggable(GlobalChatLogs);
Utils.Draggable(HttpLogs);
Utils.Draggable(ConfigUI);

ParentGui(UI);
Connections.UI = {}

local Times = #LastCommand
AddConnection(CConnect(Services.UserInputService.InputBegan, function(Input, GameProccesed)
    if (Input.KeyCode == CommandBarPrefix and (not GameProccesed)) then
        CommandBarOpen = not CommandBarOpen

        local TransparencyTween = CommandBarOpen and Utils.TweenAllTransToObject or Utils.TweenAllTrans
        local Tween = TransparencyTween(CommandBar, .5, CommandBarTransparencyClone);
        local UserInputService = Services.UserInputService

        if (CommandBarOpen) then
            if (not Draggable) then
                Utils.Tween(CommandBar, "Quint", "Out", .5, {
                    Position = UDim2.new(0.5, WideBar and -200 or -100, 1, -110)
                })
            end

            CommandBar.Input.CaptureFocus(CommandBar.Input);
            CThread(function()
                wait()
                CommandBar.Input.Text = ""
                FocusedTextBox = UserInputService.GetFocusedTextBox(UserInputService);
                local TextBox = CommandBar.Input
                while (FocusedTextBox ~= TextBox) do
                    FocusedTextBox.ReleaseFocus(FocusedTextBox);
                    CommandBar.Input.CaptureFocus(TextBox);
                    FocusedTextBox = UserInputService.GetFocusedTextBox(UserInputService);
                    CWait(Heartbeat);
                end
            end)()
        else
            if (not Draggable) then
                Utils.Tween(CommandBar, "Quint", "Out", .5, {
                    Position = UDim2.new(0.5, WideBar and -200 or -100, 1, 5)
                })
            end
        end
    elseif (not GameProccesed and ChooseNewPrefix) then
        CommandBarPrefix = Input.KeyCode
        Utils.Notify(LocalPlayer, "New Prefix", "Your new prefix is: " .. split(tostring(Input.KeyCode), ".")[3]);
        ChooseNewPrefix = false
        if (writefile) then
            Utils.Notify(LocalPlayer, nil, "use command saveprefix to save your prefix");
        end
    elseif (GameProccesed and CommandBarOpen) then
        if (Input.KeyCode == Enum.KeyCode.Up) then
            Times = Times >= 3 and Times or Times + 1
            CommandBar.Input.Text = LastCommand[Times][1] .. " "
            CommandBar.Input.CursorPosition = #CommandBar.Input.Text + 2
        end
        if (Input.KeyCode == Enum.KeyCode.Down) then
            Times = Times <= 1 and 1 or Times - 1
            CommandBar.Input.Text = LastCommand[Times][1] .. " "
            CommandBar.Input.CursorPosition = #CommandBar.Input.Text + 2
        end
    end
end), Connections.UI, true);

Utils.Click(Commands.Close, "TextColor3")
Utils.Click(ChatLogs.Clear, "BackgroundColor3")
Utils.Click(ChatLogs.Save, "BackgroundColor3")
Utils.Click(ChatLogs.Toggle, "BackgroundColor3")
Utils.Click(ChatLogs.Close, "TextColor3")

Utils.Click(Console.Clear, "BackgroundColor3");
Utils.Click(Console.Save, "BackgroundColor3");
Utils.Click(Console.Close, "TextColor3");

Utils.Click(GlobalChatLogs.Clear, "BackgroundColor3")
Utils.Click(GlobalChatLogs.Save, "BackgroundColor3")
Utils.Click(GlobalChatLogs.Toggle, "BackgroundColor3")
Utils.Click(GlobalChatLogs.Close, "TextColor3")

Utils.Click(HttpLogs.Clear, "BackgroundColor3")
Utils.Click(HttpLogs.Save, "BackgroundColor3")
Utils.Click(HttpLogs.Toggle, "BackgroundColor3")
Utils.Click(HttpLogs.Close, "TextColor3")

AddConnection(CConnect(Commands.Close.MouseButton1Click, function()
    local Tween = Utils.TweenAllTrans(Commands, .25)

    CWait(Tween.Completed);
    Commands.Visible = false
end), Connections.UI, true);

AddConnection(CConnect(GetPropertyChangedSignal(Commands.Search, "Text"), function()
    local Text = Commands.Search.Text
    local Children = GetChildren(Commands.Frame.List);
    for i = 1, #Children do
        local v = Children[i]
        if (IsA(v, "Frame")) then
            local Command = v.CommandText.Text
            v.Visible = Sfind(lower(Command), Text, 1, true)
        end
    end
    Commands.Frame.List.CanvasSize = UDim2.fromOffset(0, Commands.Frame.List.UIListLayout.AbsoluteContentSize.Y)
end), Connections.UI, true);

AddConnection(CConnect(ChatLogs.Close.MouseButton1Click, function()
    local Tween = Utils.TweenAllTrans(ChatLogs, .25)

    CWait(Tween.Completed);
    ChatLogs.Visible = false
end), Connections.UI, true);
AddConnection(CConnect(GlobalChatLogs.Close.MouseButton1Click, function()
    local Tween = Utils.TweenAllTrans(GlobalChatLogs, .25)

    CWait(Tween.Completed);
    GlobalChatLogs.Visible = false
end), Connections.UI, true);
AddConnection(CConnect(HttpLogs.Close.MouseButton1Click, function()
    local Tween = Utils.TweenAllTrans(HttpLogs, .25)

    CWait(Tween.Completed);
    HttpLogs.Visible = false
end), Connections.UI, true);

AddConnection(CConnect(Console.Close.MouseButton1Click, function()
    local Tween = Utils.TweenAllTrans(Console, .25)

    CWait(Tween.Completed);
    Console.Visible = false
end), Connections.UI, true);

ChatLogs.Toggle.Text = _L.ChatLogsEnabled and "Enabled" or "Disabled"
GlobalChatLogs.Toggle.Text = _L.ChatLogsEnabled and "Enabled" or "Disabled"
HttpLogs.Toggle.Text = _L.HttpLogsEnabled and "Enabled" or "Disabled"

AddConnection(CConnect(ChatLogs.Toggle.MouseButton1Click, function()
    _L.ChatLogsEnabled = not _L.ChatLogsEnabled
    ChatLogs.Toggle.Text = _L.ChatLogsEnabled and "Enabled" or "Disabled"
end), Connections.UI, true);
AddConnection(CConnect(GlobalChatLogs.Toggle.MouseButton1Click, function()
    _L.GlobalChatLogsEnabled = not _L.GlobalChatLogsEnabled
    GlobalChatLogs.Toggle.Text = _L.GlobalChatLogsEnabled and "Enabled" or "Disabled"
end), Connections.UI, true);
AddConnection(CConnect(HttpLogs.Toggle.MouseButton1Click, function()
    _L.HttpLogsEnabled = not _L.HttpLogsEnabled
    HttpLogs.Toggle.Text = _L.HttpLogsEnabled and "Enabled" or "Disabled"
end), Connections.UI, true);

AddConnection(CConnect(ChatLogs.Clear.MouseButton1Click, function()
    Utils.ClearAllObjects(ChatLogs.Frame.List)
    ChatLogs.Frame.List.CanvasSize = UDim2.fromOffset(0, 0)
end), Connections.UI, true);
AddConnection(CConnect(GlobalChatLogs.Clear.MouseButton1Click, function()
    Utils.ClearAllObjects(GlobalChatLogs.Frame.List)
    GlobalChatLogs.Frame.List.CanvasSize = UDim2.fromOffset(0, 0)
end), Connections.UI, true);
AddConnection(CConnect(HttpLogs.Clear.MouseButton1Click, function()
    Utils.ClearAllObjects(HttpLogs.Frame.List)
    HttpLogs.Frame.List.CanvasSize = UDim2.fromOffset(0, 0)
end), Connections.UI, true);

AddConnection(CConnect(Console.Clear.MouseButton1Click, function()
    Utils.ClearAllObjects(Console.Frame.List);
    Console.Frame.List.CanvasSize = UDim2.fromOffset(0, 0);
end), Connections.UI, true);

do
    local ShowWarns, ShowErrors, ShowOutput = true, true, true
    AddConnection(CConnect(Console.Warns.MouseButton1Click, function()
        ShowWarns = not ShowWarns
        local Children = GetChildren(Console.Frame.List);
        for i = 1, #Children do
            local v = Children[i]
            if (not IsA(v, "UIListLayout") and sub(v.Name, 1, 1) == "W") then
                v.Visible = ShowWarns
            end
        end
        Console.Frame.List.CanvasSize = UDim2.fromOffset(0, Console.Frame.List.UIListLayout.AbsoluteContentSize.Y);
        Console.Warns.Text = ShowWarns and "Hide Warns" or "Show Warns"
    end), Connections.UI, true);
    AddConnection(CConnect(Console.Errors.MouseButton1Click, function()
        ShowErrors = not ShowErrors
        local Children = GetChildren(Console.Frame.List);
        for i = 1, #Children do
            local v = Children[i]
            if (not IsA(v, "UIListLayout") and sub(v.Name, 1, 1) == "E") then
                v.Visible = ShowErrors
            end
        end
        Console.Frame.List.CanvasSize = UDim2.fromOffset(0, Console.Frame.List.UIListLayout.AbsoluteContentSize.Y);
        Console.Errors.Text = ShowErrors and "Hide Errors" or "Show Errors"
    end), Connections.UI, true);
    AddConnection(CConnect(Console.Output.MouseButton1Click, function()
        ShowOutput = not ShowOutput
        local Children = GetChildren(Console.Frame.List);
        for i = 1, #Children do
            local v = Children[i]
            if (not IsA(v, "UIListLayout") and sub(v.Name, 1, 1) == "P") then
                v.Visible = ShowOutput
            end
        end
        Console.Frame.List.CanvasSize = UDim2.fromOffset(0, Console.Frame.List.UIListLayout.AbsoluteContentSize.Y);
        Console.Output.Text = ShowOutput and "Hide Output" or "Show Output"
    end), Connections.UI, true);
end

AddConnection(CConnect(GetPropertyChangedSignal(ChatLogs.Search, "Text"), function()
    local Text = ChatLogs.Search.Text
    local Children = GetChildren(ChatLogs.Frame.List);
    for i = 1, #Children do
        local v = Children[i]
        if (not IsA(v, "UIListLayout")) then
            local Message = v.Text
            v.Visible = Sfind(lower(Message), Text, 1, true);
        end
    end
    ChatLogs.Frame.List.CanvasSize = UDim2.fromOffset(0, ChatLogs.Frame.List.UIListLayout.AbsoluteContentSize.Y);
end), Connections.UI, true);

AddConnection(CConnect(GetPropertyChangedSignal(GlobalChatLogs.Search, "Text"), function()
    local Text = GlobalChatLogs.Search.Text

    local Children = GetChildren(GlobalChatLogs.Frame.List);
    for i = 1, #Children do
        local v = Children[i]
        if (not IsA(v, "UIListLayout")) then
            local Message = v.Text

            v.Visible = Sfind(lower(Message), Text, 1, true)
        end
    end
end), Connections.UI, true);

AddConnection(CConnect(GetPropertyChangedSignal(HttpLogs.Search, "Text"), function()
    local Text = HttpLogs.Search.Text

    local Children = GetChildren(HttpLogs.Frame.List);
    for i = 1, #Children do
        local v = Children[i]
        if (not IsA(v, "UIListLayout")) then
            local Message = v.Text
            v.Visible = Sfind(lower(Message), Text, 1, true)
        end
    end
end), Connections.UI, true);

AddConnection(CConnect(GetPropertyChangedSignal(Console.Search, "Text"), function()
    local Text = Console.Search.Text
    local Children = GetChildren(Console.Frame.List);
    for i = 1, #Children do
        local v = Children[i]
        if (not IsA(v, "UIListLayout")) then
            local Message = v.Text
            v.Visible = Sfind(lower(Message), Text, 1, true)
        end
    end
    Console.Frame.List.CanvasSize = UDim2.fromOffset(0, Console.Frame.List.UIListLayout.AbsoluteContentSize.Y)
end), Connections.UI, true);


-- auto correct
AddConnection(CConnect(GetPropertyChangedSignal(CommandBar.Input, "Text"), function() -- make it so that every space a players name will appear
    CommandBar.Input.Text = CommandBar.Input.Text
    local Text = CommandBar.Input.Text
    local Prediction = CommandBar.Input.Predict
    local PredictionText = Prediction.Text

    local Args = split(Text, " ")

    Prediction.Text = ""
    if (Text == "") then
        return
    end

    local FoundCommand = false
    local FoundAlias = false
    CommandArgs = CommandArgs or {}
    if (not CommandsTable[Args[1]]) then
        for _, v in next, CommandsTable do
            local CommandName = v.Name
            local Aliases = v.Aliases
            local FoundAlias
    
            if (Utils.MatchSearch(Args[1], CommandName)) then -- better search
                Prediction.Text = CommandName
                CommandArgs = v.Args or {}
                break
            end
    
            for _, v2 in next, Aliases do
                if (Utils.MatchSearch(Args[1], v2)) then
                    FoundAlias = true
                    Prediction.Text = v2
                    CommandArgs = v2.Args or {}
                    break
                end
    
                if (FoundAlias) then
                    break
                end
            end
        end
    end

    for i, v in next, Args do -- make it get more players after i space out
        if (i > 1 and v ~= "") then
            local Predict = ""
            if (#CommandArgs >= 1) then
                for i2, v2 in next, CommandArgs do
                    if (lower(v2) == "player") then
                        Predict = Utils.GetPlayerArgs(v) or Predict;
                    else
                        Predict = Utils.MatchSearch(v, v2) and v2 or Predict
                    end
                end
            else
                Predict = Utils.GetPlayerArgs(v) or Predict;
            end
            Prediction.Text = sub(Text, 1, #Text - #Args[#Args]) .. Predict
            local split = split(v, ",");
            if (next(split)) then
                for i2, v2 in next, split do
                    if (i2 > 1 and v2 ~= "") then
                        local PlayerName = Utils.GetPlayerArgs(v2)
                        Prediction.Text = sub(Text, 1, #Text - #split[#split]) .. (PlayerName or "")
                    end
                end
            end
        end
    end

    if (Sfind(Text, "\t")) then -- remove tab from preditction text also
        CommandBar.Input.Text = PredictionText
        CommandBar.Input.CursorPosition = #CommandBar.Input.Text + 1
    end
end))


do
    local Enabled = false
    local Connection;
    local Predict;
    ToggleChatPrediction = function()
        if (_L.Frame2) then
            return
        end
        if (not Enabled) then
            local RobloxChat = LocalPlayer.PlayerGui and FindFirstChild(LocalPlayer.PlayerGui, "Chat");
            local RobloxChatBarFrame;
            if (RobloxChat) then
                local RobloxChatFrame = FindFirstChild(RobloxChat, "Frame");
                if (RobloxChatFrame) then
                    RobloxChatBarFrame = FindFirstChild(RobloxChatFrame, "ChatBarParentFrame");
                end
            end
            local PredictionClone, ChatBar
            if (RobloxChatBarFrame) then
                local Frame1 = FindFirstChild(RobloxChatBarFrame, 'Frame');
                if Frame1 then
                    local BoxFrame = FindFirstChild(Frame1, 'BoxFrame');
                    if BoxFrame then
                        _L.Frame2 = FindFirstChild(BoxFrame, 'Frame');
                        if _L.Frame2 then
                            local TextLabel = FindFirstChild(_L.Frame2, 'TextLabel');
                            ChatBar = FindFirstChild(_L.Frame2, 'ChatBar');
                            if TextLabel and ChatBar then
                                PredictionClone = InstanceNew('TextLabel');
                                PredictionClone.Font = TextLabel.Font
                                PredictionClone.LineHeight = TextLabel.LineHeight
                                PredictionClone.MaxVisibleGraphemes = TextLabel.MaxVisibleGraphemes
                                PredictionClone.RichText = TextLabel.RichText
                                PredictionClone.Text = ''
                                PredictionClone.TextColor3 = TextLabel.TextColor3
                                PredictionClone.TextScaled = TextLabel.TextScaled
                                PredictionClone.TextSize = TextLabel.TextSize
                                PredictionClone.TextStrokeColor3 = TextLabel.TextStrokeColor3
                                PredictionClone.TextStrokeTransparency = TextLabel.TextStrokeTransparency
                                PredictionClone.TextTransparency = 0.3
                                PredictionClone.TextTruncate = TextLabel.TextTruncate
                                PredictionClone.TextWrapped = TextLabel.TextWrapped
                                PredictionClone.TextXAlignment = TextLabel.TextXAlignment
                                PredictionClone.TextYAlignment = TextLabel.TextYAlignment
                                PredictionClone.Name = "Predict"
                                PredictionClone.Size = UDim2.new(1, 0, 1, 0);
                                PredictionClone.BackgroundTransparency = 1
                            end
                        end
                    end
                end
            end

            ParentGui(PredictionClone, _L.Frame2);
            Predict = PredictionClone

            Connection = AddConnection(CConnect(GetPropertyChangedSignal(ChatBar, "Text"), function() -- todo: add detection for /e
                local Text = ChatBar.Text
                local Prediction = PredictionClone
                local PredictionText = PredictionClone.Text
            
                local Args = split(concat(shift(split(Text, ""))), " ");
            
                Prediction.Text = ""
                if (not startsWith(Text, Prefix)) then
                    return
                end
            
                local FoundCommand = false
                local FoundAlias = false
                CommandArgs = CommandArgs or {}
                if (not rawget(CommandsTable, Args[1])) then
                    for _, v in next, CommandsTable do
                        local CommandName = v.Name
                        local Aliases = v.Aliases
                        local FoundAlias
                
                        if (Utils.MatchSearch(Args[1], CommandName)) then -- better search
                            Prediction.Text = Prefix .. CommandName
                            FoundCommand = true
                            CommandArgs = v.Args or {}
                            break
                        end
                
                        for _, v2 in next, Aliases do
                            if (Utils.MatchSearch(Args[1], v2)) then
                                FoundAlias = true
                                Prediction.Text = v2
                                CommandArgs = v.Args or {}
                                break
                            end
                
                            if (FoundAlias) then
                                break
                            end
                        end
                    end
                end
            
                for i, v in next, Args do -- make it get more players after i space out
                    if (i > 1 and v ~= "") then
                        local Predict = ""
                        if (#CommandArgs >= 1) then
                            for i2, v2 in next, CommandArgs do
                                if (lower(v2) == "player") then
                                    Predict = Utils.GetPlayerArgs(v) or Predict;
                                else
                                    Predict = Utils.MatchSearch(v, v2) and v2 or Predict
                                end
                            end
                        else
                            Predict = Utils.GetPlayerArgs(v) or Predict;
                        end
                        Prediction.Text = sub(Text, 1, #Text - #Args[#Args]) .. Predict
                        local split = split(v, ",");
                        if (next(split)) then
                            for i2, v2 in next, split do
                                if (i2 > 1 and v2 ~= "") then
                                    local PlayerName = Utils.GetPlayerArgs(v2)
                                    Prediction.Text = sub(Text, 1, #Text - #split[#split]) .. (PlayerName or "")
                                end
                            end
                        end
                    end
                end
            
                if (Sfind(Text, "\t")) then -- remove tab from preditction text also
                    ChatBar.Text = PredictionText
                    ChatBar.CursorPosition = #ChatBar.Text + 2
                end
            end))
            Enabled = true
            return ChatBar
        else
            Disconnect(Connection);
            Destroy(Predict);
            Enabled = false
        end
        return _L.Frame2
    end

    if (CurrentConfig.ChatPrediction) then
        delay(2, ToggleChatPrediction);
    end
end

local ConfigUILib = {}
do
    local GuiObjects = ConfigElements
    local PageCount = 0
    local SelectedPage
    local UserInputService = Services.UserInputService

    local Colors = {
        ToggleEnabled = Color3.fromRGB(5, 5, 6);
        Background = Color3.fromRGB(68, 124, 170);
        ToggleDisabled = Color3.fromRGB(68, 124, 170);
    }

    local ColorElements = ConfigElements.Elements.ColorElements
    local Overlay = ColorElements.Overlay
    local OverlayMain = Overlay.Main
    local ColorPicker = OverlayMain.ColorPicker
    local Settings = OverlayMain.Settings
    local ClosePicker = OverlayMain.Close
    local ColorCanvas = ColorPicker.ColorCanvas
    local ColorSlider = ColorPicker.ColorSlider
    local ColorGradient = ColorCanvas.ColorGradient
    local DarkGradient = ColorGradient.DarkGradient
    local CanvasBar = ColorGradient.Bar
    local RainbowGradient = ColorSlider.RainbowGradient
    local SliderBar = RainbowGradient.Bar
    local CanvasHitbox = ColorCanvas.Hitbox
    local SliderHitbox = ColorSlider.Hitbox
    local ColorPreview = Settings.ColorPreview
    local ColorOptions = Settings.Options
    local RedTextBox = ColorOptions.Red.TextBox
    local BlueTextBox = ColorOptions.Blue.TextBox
    local GreenTextBox = ColorOptions.Green.TextBox
    local RainbowToggle = ColorOptions.Rainbow

    local function UpdateClone()
        ConfigUIClone = Clone(ConfigUI);
    end

    function ConfigUILib.NewPage(Title)
        local Page = Clone(GuiObjects.Page.Container);
        local TextButton = Clone(GuiObjects.Page.TextButton);

        Page.Visible = true
        TextButton.Visible = true

        Utils.Click(TextButton, "BackgroundColor3")
            
        if PageCount == 0 then
            SelectedPage = Page
        end

        AddConnection(CConnect(TextButton.MouseButton1Click, function()
            if SelectedPage.Name ~= TextButton.Name then          
                SelectedPage = Page
                ConfigUI.Container.UIPageLayout:JumpTo(SelectedPage)
            end
        end))
        
        Page.Name = Title
        TextButton.Name = Title
        TextButton.Text = Title
        
        Page.Parent = ConfigUI.Container
        TextButton.Parent = ConfigUI.Selection
        
        PageCount = PageCount + 1


        UpdateClone()

        local function GetKeyName(KeyCode)
            local _, Stringed = pcall(UserInputService.GetStringForKeyCode, UserInputService, KeyCode);
            local IsEnum = Stringed == ""
            return (not IsEnum and _) and Stringed or split(tostring(KeyCode), ".")[3], (IsEnum and not _);
        end

        local PageLibrary = {}

        function PageLibrary.CreateMacroSection(MacrosToAdd, Callback)
            local Macro = Clone(GuiObjects.Elements.Macro);
            local MacroPage = Macro.MacroPage
            local Selection = Page.Selection
            
            Selection.ClearAllChildren(Selection);
            for i,v in next, GetChildren(MacroPage) do
                v.Parent = Selection
            end
            Selection.Container.Visible = true
            local CommandsList = Selection.Container.Commands.Frame.List
            local CurrentMacros = Selection.Container.CurrentMacros
            local AddMacro = Selection.AddMacro
            local BindA, CommandA, ArgsA = AddMacro.Bind, AddMacro.Command, AddMacro["z Args"]
            local Add = AddMacro.AddMacro
            local Keybind = {};
            local Enabled = false
            local Connection
            
            local OnClick = function()
                Enabled = not Enabled
                if Enabled then
                    BindA.Text = "..."
                    local OldShiftLock = LocalPlayer.DevEnableMouseLock
                    LocalPlayer.DevEnableMouseLock = false
                    Keybind = {}
                    Connection = AddConnection(CConnect(UserInputService.InputBegan, function(Input, Processed)
                        if not Processed and Input.UserInputType == Enum.UserInputType.Keyboard then
                            local Input2, Proccessed2;
                            CThread(function()
                                Input2, Proccessed2 = CWait(UserInputService.InputBegan);
                            end)()
                            CWait(UserInputService.InputEnded);
                            if (Input2 and not Processed) then
                                local KeyName, IsEnum = GetKeyName(Input.KeyCode);
                                local KeyName2, IsEnum2 = GetKeyName(Input2.KeyCode); 
                                BindA.Text = format("%s + %s", IsEnum2 and KeyName2 or KeyName, IsEnum2 and KeyName2 or KeyName2);
                                Keybind[1] = Input.KeyCode
                                Keybind[2] = Input2.KeyCode
                            else
                                local KeyName = GetKeyName(Input.KeyCode);
                                BindA.Text = KeyName
                                Keybind[1] = Input.KeyCode
                                Keybind[2] = nil
                            end
                            LocalPlayer.DevEnableMouseLock = OldShiftLock
                        else
                            BindA.Text = "Bind"
                        end
                        Enabled = false
                        Disconnect(Connection);
                    end));
                else
                    BindA.Text = "Bind"
                    Disconnect(Connection);
                end
            end

            AddConnection(CConnect(BindA.MouseButton1Click, OnClick));
            AddConnection(CConnect(Add.MouseButton1Click, function()
                if (BindA.Text == "Bind") then
                    Utils.Notify(nil, nil, "You must assign a keybind");
                    return
                end
                if (not CommandsTable[CommandA.Text]) then
                    Utils.Notify(nil, nil, "You must add a command");
                    return
                end
                Callback(Keybind, CommandA.Text, ArgsA.Text);
            end));

            local Focused = false
            local MacroSection = {
                CommandsList = CommandsList,
                AddCmd = function(Name) 
                    local Command = Clone(Macro.Command);
                    Command.Name = Name
                    Command.Text = Name
                    Command.Parent = CommandsList
                    Command.Visible = true
                    AddConnection(CConnect(Command.MouseButton1Click, function()
                        CommandA.Text = Name
                        ArgsA.CaptureFocus(ArgsA);
                        Focused = true
                        CWait(ArgsA.FocusLost);
                        CWait(UserInputService.InputBegan);
                        Focused = false
                        wait(.2);
                        if (not Focused) then
                            OnClick();
                        end
                    end))
                end,
                AddMacro = function(MacroName, Bind)
                    local NewMacro = Clone(Macro.EditMacro);
                    NewMacro.Bind.Text = Bind
                    NewMacro.Macro.Text = MacroName
                    NewMacro.Parent = CurrentMacros
                    NewMacro.Visible = true

                    Utils.Thing(NewMacro.Bind);
                    Utils.Thing(NewMacro.Macro);

                    FindFirstChild(NewMacro, "Remove").Name = "Delete"
                    AddConnection(CConnect(NewMacro.Delete.MouseButton1Click, function()
                        CWait(Utils.TweenAllTrans(NewMacro, .25).Completed);
                        Destroy(NewMacro);
                        for i = 1, #Macros do
                            if (Macros[i].Command == split(MacroName, " ")[1]) then
                                Macros[i] = nil
                            end
                        end
                        local TempMacros = clone(Macros);
                        for i, v in next, TempMacros do
                            for i2, v2 in next, v.Keys do
                                TempMacros[i]["Keys"][i2] = split(tostring(v2), ".")[3]
                            end
                        end
                        SetConfig({Macros=TempMacros});
                    end))
                end
            }

            for i, v in next, MacrosToAdd do
                local Suc, Err = pcall(concat, v.Args, " ");
                if (not Suc) then
                    SetConfig({Macros={}});
                    Utils.Notify(LocalPlayer, "Error", "Macros were reset due to corrupted data")
                    break;
                end
                local KeyName, IsEnum = GetKeyName(v.Keys[1]);
                local Formatted;
                if (v.Keys[2]) then
                    local KeyName2, IsEnum2 = GetKeyName(v.Keys[2]); 
                    Formatted = format("%s + %s", IsEnum2 and KeyName2 or KeyName, IsEnum2 and KeyName2 or KeyName2);
                else
                    Formatted = KeyName
                end
                MacroSection.AddMacro(v.Command .. " " .. concat(v.Args, " "), Formatted);
            end

            return MacroSection
        end

        function PageLibrary.NewSection(Title)
            local Section = Clone(GuiObjects.Section.Container);
            local SectionOptions = Section.Options
            local SectionUIListLayout = SectionOptions.UIListLayout

            Section.Visible = true

            Utils.SmoothScroll(Section.Options, .14)
            Section.Title.Text = Title
            Section.Parent = Page.Selection
            
            
            SectionOptions.CanvasSize = UDim2.fromOffset(0,0) --// change
            AddConnection(CConnect(GetPropertyChangedSignal(SectionUIListLayout, "AbsoluteContentSize"), function()
                SectionOptions.CanvasSize = UDim2.fromOffset(0, SectionUIListLayout.AbsoluteContentSize.Y + 5);
            end));
            
            UpdateClone();

            local ElementLibrary = {}


            function ElementLibrary.Toggle(Title, Enabled, Callback)
                local Toggle = Clone(GuiObjects.Elements.Toggle);
                local Container = Toggle.Container

                local Switch = Container.Switch
                local Hitbox = Container.Hitbox
                
                if not Enabled then
                    Switch.Position = UDim2.fromOffset(2, 2)
                    Container.BackgroundColor3 = Colors.ToggleDisabled
                end
                local NoCallback = false

                local OnClick = function()
                    Enabled = not Enabled
                    
                    Utils.Tween(Switch, "Quad", "Out", .25, {
                        Position = Enabled and UDim2.new(1, -18, 0, 2) or UDim2.fromOffset(2, 2)
                    })
                    Utils.Tween(Container, "Quad", "Out", .25, {
                        BackgroundColor3 = Enabled and Colors.ToggleEnabled or Colors.ToggleDisabled
                    })
                    
                    if (not NoCallback) then
                        Callback(Enabled);
                    end
                end

                AddConnection(CConnect(Hitbox.MouseButton1Click, OnClick));
                
                Toggle.Visible = true
                Toggle.Title.Text = Title
                Toggle.Parent = Section.Options
                Utils.Thing(Toggle.Title);

                UpdateClone()

                return function()
                    NoCallback = true
                    OnClick();
                    NoCallback = false
                end
            end

            function ElementLibrary.ScrollingFrame(Title, Callback, Elements, Toggles)
                local ScrollingFrame = Clone(GuiObjects.Elements.ScrollingFrame);
                local Frame = ScrollingFrame.Frame
                local Toggle = ScrollingFrame.Toggle

                for ElementTitle, Enabled in next, Elements do
                    local NewToggle = Clone(Toggle);
                    NewToggle.Visible = true
                    NewToggle.Title.Text = ElementTitle
                    NewToggle.Plugins.Text = Enabled and (Toggles and Toggles[1] or "Enabled") or (Toggles and Toggles[2] or "Disabled");


                    Utils.Click(NewToggle.Plugins, "BackgroundColor3")

                    AddConnection(CConnect(NewToggle.Plugins.MouseButton1Click, function()
                        Enabled = not Enabled
                        NewToggle.Plugins.Text = Enabled and (Toggles and Toggles[1] or "Enabled") or (Toggles and Toggles[2] or "Disabled");

                        Callback(ElementTitle, Enabled);
                    end));

                    NewToggle.Parent = Frame.Container
                end

                Frame.Visible = true
                Frame.Title.Text = Title
                Frame.Parent = Section.Options

                for _, NewToggle in next, GetChildren(Frame.Container) do
                    if (IsA(NewToggle, "GuiObject")) then
                        Utils.Thing(NewToggle.Title);
                    end
                end

                UpdateClone()
            end

            function ElementLibrary.Keybind(Title, Bind, Callback)
                local Keybind = Clone(GuiObjects.Elements.Keybind);
                local Enabled = false
                local Connection

                Keybind.Container.Text = Bind
                Keybind.Title.Text = Title

                local Container = Keybind.Container
                AddConnection(CConnect(Container.MouseButton1Click, function()
                    Enabled = not Enabled

                    if Enabled then
                        Container.Text = "..."
                        local OldShiftLock = LocalPlayer.DevEnableMouseLock
                        -- disable shift lock so it doesn't interfere with keybind
                        LocalPlayer.DevEnableMouseLock = false
                        Connection = AddConnection(CConnect(UserInputService.InputBegan, function(Input, Processed)
                            if not Processed and Input.UserInputType == Enum.UserInputType.Keyboard then
                                local Input2, Proccessed2;
                                CThread(function()
                                    Input2, Proccessed2 = CWait(UserInputService.InputBegan);
                                end)()
                                CWait(UserInputService.InputEnded);
                                if (Input2 and not Processed) then
                                    local KeyName, IsEnum = GetKeyName(Input.KeyCode);
                                    local KeyName2, IsEnum2 = GetKeyName(Input2.KeyCode); 
                                    -- Order by if it's an enum first, example 'Shift + K' and not 'K + Shift'
                                    Container.Text = format("%s + %s", IsEnum2 and KeyName2 or KeyName, IsEnum2 and KeyName2 or KeyName2);
                                    Callback(Input.KeyCode, Input2.KeyCode);
                                else
                                    local KeyName = GetKeyName(Input.KeyCode);
                                    Container.Text = KeyName
                                    Callback(Input.KeyCode);
                                end
                                LocalPlayer.DevEnableMouseLock = OldShiftLock
                            else
                                Container.Text = "press"
                            end
                            Enabled = false
                            Disconnect(Connection);
                        end));
                    else
                        Container.Text = "press"
                        Disconnect(Connection);
                    end
                end));

                Utils.Click(Container, "BackgroundColor3");
                Keybind.Visible = true
                Keybind.Parent = Section.Options
                UpdateClone();
            end
            
            function ElementLibrary.TextboxKeybind(Title, Bind, Callback)
                local Keybind = Clone(GuiObjects.Elements.TextboxKeybind);
                
                Keybind.Container.Text = Bind
                Keybind.Title.Text = Title
                
                local Container = Keybind.Container
                AddConnection(CConnect(GetPropertyChangedSignal(Container, "Text"), function(Key)
                    if (#Container.Text >= 1) then
                        Container.Text = sub(Container.Text, 1, 1);
                        Callback(Container.Text);
                        Container.ReleaseFocus(Container);
                    end
                end))
                
                Keybind.Visible = true
                Keybind.Parent = Section.Options
                UpdateClone();
            end

            function ElementLibrary.ColorPicker(Title, DefaultColor, Callback)
                local SelectColor = Clone(ColorElements.SelectColor);
                local CurrentColor = DefaultColor
                local Button = SelectColor.Button
                local ToHSV = DefaultColor.ToHSV
                local Color3New = Color3.new
                local Color3fromHSV = Color3.fromHSV
                local UDim2New = UDim2.new
                local clamp = math.clamp

                local H, S, V = ToHSV(DefaultColor);
                local Opened = false
                local Rainbow = false
                
                local function UpdateText()
                    RedTextBox.PlaceholderText = tostring(math.floor(CurrentColor.R * 255))
                    GreenTextBox.PlaceholderText = tostring(math.floor(CurrentColor.G * 255))
                    BlueTextBox.PlaceholderText = tostring(math.floor(CurrentColor.B * 255))
                end
                
                local function UpdateColor()
                    H, S, V = ToHSV(CurrentColor);
                    
                    SliderBar.Position = UDim2New(0, 0, H, 2);
                    CanvasBar.Position = UDim2New(S, 2, 1 - V, 2);
                    ColorGradient.UIGradient.Color = Utils.MakeGradient({
                        [1] = Color3New(1, 1, 1);
                        [2] = Color3fromHSV(H, 1, 1);
                    })
                    
                    ColorPreview.BackgroundColor3 = CurrentColor
                    UpdateText();
                end
            
                local function UpdateHue(Hue)
                    SliderBar.Position = UDim2New(0, 0, Hue, 2);
                    ColorGradient.UIGradient.Color = Utils.MakeGradient({
                        [1] = Color3New(1, 1, 1);
                        [2] = Color3fromHSV(Hue, 1, 1);
                    });
                    
                    ColorPreview.BackgroundColor3 = CurrentColor
                    UpdateText();
                end
                
                local function ColorSliderInit()
                    local Moving = false
                    
                    local function Update()
                        if Opened and not Rainbow then
                            local LowerBound = SliderHitbox.AbsoluteSize.Y
                            local Position = clamp(Mouse.Y - SliderHitbox.AbsolutePosition.Y, 0, LowerBound);
                            local Value = Position / LowerBound
                            
                            H = Value
                            CurrentColor = Color3fromHSV(H, S, V);
                            ColorPreview.BackgroundColor3 = CurrentColor
                            ColorGradient.UIGradient.Color = Utils.MakeGradient({
                                [1] = Color3New(1, 1, 1);
                                [2] = Color3fromHSV(H, 1, 1);
                            });
                            
                            UpdateText();
                            
                            local Position = UDim2.new(0, 0, Value, 2)
                            local Tween = Utils.Tween(SliderBar, "Linear", "Out", .05, {
                                Position = Position
                            });
                            
                            Callback(CurrentColor);
                            CWait(Tween.Completed);
                        end
                    end
                
                    AddConnection(CConnect(SliderHitbox.MouseButton1Down, function()
                        Moving = true
                        Update()
                    end))
                    
                    AddConnection(CConnect(UserInputService.InputEnded, function(Input)
                        if Input.UserInputType == Enum.UserInputType.MouseButton1 and Moving then
                            Moving = false
                        end
                    end))
                    
                    AddConnection(CConnect(Mouse.Move, Utils.Debounce(function()
                        if Moving then
                            Update()
                        end
                    end)))
                end
                local function ColorCanvasInit()
                    local Moving = false
                    
                    local function Update()
                        if Opened then
                            local LowerBound = CanvasHitbox.AbsoluteSize.Y
                            local YPosition = clamp(Mouse.Y - CanvasHitbox.AbsolutePosition.Y, 0, LowerBound)
                            local YValue = YPosition / LowerBound
                            local RightBound = CanvasHitbox.AbsoluteSize.X
                            local XPosition = clamp(Mouse.X - CanvasHitbox.AbsolutePosition.X, 0, RightBound)
                            local XValue = XPosition / RightBound
                            
                            S = XValue
                            V = 1 - YValue
                            
                            CurrentColor = Color3fromHSV(H, S, V);
                            ColorPreview.BackgroundColor3 = CurrentColor
                            UpdateText()
                            
                            local Position = UDim2New(XValue, 2, YValue, 2);
                            local Tween = Utils.Tween(CanvasBar, "Linear", "Out", .05, {
                                Position = Position
                            });
                            Callback(CurrentColor);
                            CWait(Tween.Completed);
                        end
                    end
                
                    AddConnection(CConnect(CanvasHitbox.MouseButton1Down, function()
                        Moving = true
                        Update()
                    end))
                    
                    AddConnection(CConnect(UserInputService.InputEnded, function(Input)
                        if Input.UserInputType == Enum.UserInputType.MouseButton1 and Moving then
                            Moving = false
                        end
                    end))
                    
                    AddConnection(CConnect(Mouse.Move, Utils.Debounce(function()
                        if Moving then
                            Update()
                        end
                    end)))
                end
                
                ColorSliderInit()
                ColorCanvasInit()
                
                AddConnection(CConnect(Button.MouseButton1Click, function()
                    if not Opened then
                        Opened = true
                        UpdateColor()
                        RainbowToggle.Container.Switch.Position = Rainbow and UDim2New(1, -18, 0, 2) or UDim2.fromOffset(2, 2)
                        RainbowToggle.Container.BackgroundColor3 = Color3.fromRGB(25, 25, 25);
                        Overlay.Visible = true
                        OverlayMain.Visible = false
                        Utils.Intro(OverlayMain)
                    end
                end))
                
                AddConnection(CConnect(ClosePicker.MouseButton1Click, Utils.Debounce(function()
                    Button.BackgroundColor3 = CurrentColor
                    Utils.Intro(OverlayMain)
                    Overlay.Visible = false
                    Opened = false
                end)))
                
                AddConnection(CConnect(RedTextBox.FocusLost, function()
                    if Opened then
                        local Number = tonumber(RedTextBox.Text)
                        if Number then
                            Number = clamp(floor(Number), 0, 255)
                            CurrentColor = Color3New(Number / 255, CurrentColor.G, CurrentColor.B)
                            UpdateColor()
                            RedTextBox.PlaceholderText = tostring(Number)
                            Callback(CurrentColor)
                        end
                        RedTextBox.Text = ""
                    end
                end))
                
                AddConnection(CConnect(GreenTextBox.FocusLost, function()
                    if Opened then
                        local Number = tonumber(GreenTextBox.Text)
                        if Number then
                            Number = clamp(floor(Number), 0, 255)
                            CurrentColor = Color3New(CurrentColor.R, Number / 255, CurrentColor.B)
                            UpdateColor()
                            GreenTextBox.PlaceholderText = tostring(Number)
                            Callback(CurrentColor)
                        end
                        GreenTextBox.Text = ""
                    end
                end))
                
                AddConnection(CConnect(BlueTextBox.FocusLost, function()
                    if Opened then
                        local Number = tonumber(BlueTextBox.Text)
                        if Number then
                            Number = clamp(floor(Number), 0, 255)
                            CurrentColor = Color3New(CurrentColor.R, CurrentColor.G, Number / 255)
                            UpdateColor()
                            BlueTextBox.PlaceholderText = tostring(Number)
                            Callback(CurrentColor)
                        end
                        BlueTextBox.Text = ""
                    end
                end))
                
                Utils.ToggleFunction(RainbowToggle.Container, false, function(Callback)
                    if Opened then
                        Rainbow = Callback
                    end
                end)
                
                AddConnection(CConnect(RenderStepped, function()
                    if Rainbow then
                        local Hue = (tick() / 5) % 1
                        CurrentColor = Color3.fromHSV(Hue, S, V)
                        
                        if Opened then
                            UpdateHue(Hue)
                        end
                        
                        Button.BackgroundColor3 = CurrentColor
                        Callback(CurrentColor, true);
                    end
                end))
                                
                Button.BackgroundColor3 = DefaultColor
                SelectColor.Title.Text = Title
                SelectColor.Visible = true
                SelectColor.Parent = Section.Options
                Utils.Thing(SelectColor.Title);
            end

            return ElementLibrary
        end

        return PageLibrary
    end
end

Utils.Click(ConfigUI.Close, "TextColor3")
AddConnection(CConnect(ConfigUI.Close.MouseButton1Click, function()
    ConfigLoaded = false
    CWait(Utils.TweenAllTrans(ConfigUI, .25).Completed);
    ConfigUI.Visible = false
end))
--END IMPORT [uimore]


--IMPORT [plugin]
PluginConf = IsSupportedExploit and GetPluginConfig();
local Plugins;

PluginLibrary = {
    LocalPlayer = LocalPlayer,
    Services = Services,
    GetCharacter = GetCharacter,
    ProtectInstance = ProtectInstance,
    SpoofInstance = SpoofInstance,
    SpoofProperty = SpoofProperty,
    UnSpoofInstance = UnSpoofInstance,
    ReplaceCharacter = ReplaceCharacter,
    ReplaceHumanoid = ReplaceHumanoid,
    GetCorrectToolWithHandle = GetCorrectToolWithHandle,
    DisableAnimate = DisableAnimate,
    GetPlayer = GetPlayer,
    GetHumanoid = GetHumanoid,
    GetRoot = GetRoot,
    GetMagnitude = GetMagnitude,
    GetCommandEnv = function(Name)
        local Command = LoadCommand(Name);
        if (Command.CmdEnv) then
            return Command.CmdEnv
        end
    end,
    isR6 = isR6,
    ExecuteCommand = ExecuteCommand,
    Notify = Utils.Notify,
    HasTool = HasTool,
    isSat = isSat,
    Request = syn and syn.request or request or game.HttpGet,
    CThread = CThread,
    AddConnection = AddConnection,
    filter = filter,
    map = map,
    clone = clone,
    firetouchinterest = firetouchinterest,
    fireproximityprompt = fireproximityprompt,
    decompile = decompile,
    getnilinstances = getnilinstances,
    getinstances = getinstances,
    Drawing = Drawing
}

do
    local IsDebug = IsSupportedExploit and PluginConf.PluginDebug

    Plugins = IsSupportedExploit and map(filter(listfiles("Rogue-admin/plugins"), function(i, v)
        return lower(split(v, ".")[#split(v, ".")]) == "lua"
    end), function(i, v)
        local splitted = split(v, "\\");
        return {splitted[#splitted], loadfile(v)}
    end) or {}

    if (SafePlugins) then
        local Renv = clone(getrenv(), true);
        for i, v in next, Renv do
            PluginLibrary[i] = v
        end
    end
    PluginLibrary.debug = nil
    PluginLibrary.getfenv = nil
    PluginLibrary.loadstring = loadstring

    if (PluginConf.SafePlugins) then
        local Funcs = {}
        for i, v in next, PluginLibrary do
            if (type(v) == 'function') then
                Funcs[#Funcs + 1] = v
            end
        end
        local RogueEnv = getfenv(1);
        PluginLibrary.getfenv = newcclosure(function(...)
            local f = ({...})[1]
            local Env = getfenv(...);
            if (type(f) == 'function' and Tfind(Funcs, f) or Env == RogueEnv and checkcaller()) then
                return PluginLibrary
            end
            return Env
        end)
    end

    if (PluginConf.PluginsEnabled) then
        local LoadPlugin = function(Plugin)
            if (not IsSupportedExploit) then
                return 
            end
        
            if (Plugin and PluginConf.DisabledPlugins[Plugin.Name]) then
                Utils.Notify(LocalPlayer, "Plugin not loaded.", format("Plugin %s was not loaded as it is on the disabled list.", Plugin.Name));
                GUI:Notification{
                    Title = "Alert",
                    Text = "Disabled.",
                    Duration = 3,
                    Callback = function() end
                }
            end
            if (#keys(Plugin) < 3) then
                return Utils.Notify(LocalPlayer, "Plugin Fail", "One of your plugins is missing information.");
            end
            if (IsDebug) then
                Utils.Notify(LocalPlayer, "Plugin loading", format("Plugin %s is being loaded.", Plugin.Name));
            end
            
            local Context;
            local sett, gett = setthreadidentity, getthreadidentity
            if (sett and PluginConf.SafePlugins) then
                Context = gett();
                sett(5);
            end
            local Ran, Return = pcall(Plugin.Init);
            if (sett and Context) then
                sett(Context);
            end
            if (not Ran and Return and IsDebug) then
                return Utils.Notify(LocalPlayer, "Plugin Fail", format("there is an error in plugin Init %s: %s", Plugin.Name, Return));
            end
            
            for i, command in next, Plugin.Commands or {} do -- adding the "or" because some people might have outdated plugins in the dir
                if (#keys(command) < 3) then
                    Utils.Notify(LocalPlayer, "Plugin Command Fail", format("Command %s is missing information", command.Name));
                    continue
                end
                AddCommand(command.Name, command.Aliases or {}, command.Description .. " - " .. Plugin.Author, command.Requirements or {}, command.Func, true);
        
                if (FindFirstChild(Commands.Frame.List, command.Name)) then
                    Destroy(FindFirstChild(Commands.Frame.List, command.Name));
                end
                local Clone = Clone(Command);
                Utils.Hover(Clone, "BackgroundColor3");
                Utils.ToolTip(Clone, format("%s\n%s - %s", command.Name, command.Description, Plugin.Author));
                Clone.CommandText.RichText = true
                Clone.CommandText.Text = format("%s %s %s", command.Name, next(command.Aliases or {}) and format("(%s)", concat(command.Aliases, ", ")) or "", Utils.TextFont("[PLUGIN]", {77, 255, 255}));
                Clone.Name = command.Name
                Clone.Visible = true
                Clone.Parent = Commands.Frame.List
                if (IsDebug) then
                    Utils.Notify(LocalPlayer, "Plugin Command Loaded", format("Command %s loaded successfully", command.Name));
                end
            end
        end
        
        if (IsSupportedExploit) then
            if (not isfolder("Rogue-admin") and not isfolder("Rogue-admin/plugins") and not isfolder("Rogue-admin/plugin-conf.json") or not isfolder("Rogue-admin/chatlogs")) then
                WriteConfig();
            end
        end

        for i, Plugin in next, Plugins do
            local PluginFunc = Plugin[2]
            if (PluginConf.SafePlugins) then
                setfenv(PluginFunc, PluginLibrary);
            else
                local CurrentEnv = getfenv(PluginFunc);
                for i2, v2 in next, PluginLibrary do
                    CurrentEnv[i2] = v2
                end
            end
            local Success, Ret = pcall(PluginFunc);
            if (Success) then
                LoadPlugin(Ret);
            elseif (PluginConf.PluginDebug) then
                Utils.Notify(LocalPlayer, "Fail", "There was an error Loading plugin (console for more information)");
                warn("[FA Plugin Error]: " .. debug.traceback(Ret));             
            end
        end
    end
end
--END IMPORT [plugin]


WideBar = false
Draggable = false

--IMPORT [config]
do
    local UserInputService = Services.UserInputService
    local GetStringForKeyCode = UserInputService.GetStringForKeyCode
    local function GetKeyName(KeyCode)
        local _, Stringed = pcall(GetStringForKeyCode, UserInputService, KeyCode);
        local IsEnum = Stringed == ""
        return (not IsEnum and _) and Stringed or split(tostring(KeyCode), ".")[3], (IsEnum and not _);
    end

    local SortKeys = function(Key1, Key2)
        local KeyName, IsEnum = GetKeyName(Key1);
        if (Key2) then
            local KeyName2, IsEnum2 = GetKeyName(Key2);
            return format("%s + %s", IsEnum2 and KeyName2 or KeyName, IsEnum2 and KeyName2 or KeyName2);
        end
        return KeyName
    end

    LoadConfig = function()
        local Script = ConfigUILib.NewPage("Script");
        local Settings = Script.NewSection("Settings");
    
        local CurrentConf = GetConfig();

        Settings.TextboxKeybind("Chat Prefix", Prefix, function(Key)
            if (not match(Key, "%A") or match(Key, "%d") or #Key > 1) then
                Utils.Notify(nil, "Prefix", "Prefix must be a 1 character symbol.");
                return
            end
            Prefix = Key
            Utils.Notify(nil, "Prefix", "Prefix is now " .. Key);
        end)
    
        Settings.Keybind("CMDBar Prefix", GetKeyName(CommandBarPrefix), function(KeyCode1, KeyCode2)
            CommandBarPrefix = KeyCode1
            Utils.Notify(nil, "Prefix", "CommandBar Prefix is now " .. GetKeyName(KeyCode1));
        end)
    
        local ToggleSave;
        ToggleSave = Settings.Toggle("Save Prefix's", false, function(Callback)
            SetConfig({["Prefix"]=Prefix,["CommandBarPrefix"]=split(tostring(CommandBarPrefix), ".")[3]});
            wait(.5);
            ToggleSave();
            Utils.Notify(nil, "Prefix", "saved prefix's");
        end)
    
        local Misc = Script.NewSection("Misc");

        Misc.Toggle("Chat Prediction", CurrentConf.ChatPrediction or false, function(Callback)
            local ChatBar = ToggleChatPrediction();
            if (Callback) then
                ChatBar.CaptureFocus(ChatBar);
                wait();
                ChatBar.Text = Prefix
            end
            SetConfig({ChatPrediction=Callback});
            Utils.Notify(nil, nil, format("ChatPrediction %s", Callback and "enabled" or "disabled"));
        end)

        Misc.Toggle("Anti Kick", Hooks.AntiKick, function(Callback)
            Hooks.AntiKick = Callback
            Utils.Notify(nil, nil, format("AntiKick %s", Hooks.AntiKick and "enabled" or "disabled"));
        end)

        Misc.Toggle("Anti Teleport", Hooks.AntiTeleport, function(Callback)
            Hooks.AntiTeleport = Callback
            Utils.Notify(nil, nil, format("AntiTeleport %s", Hooks.AntiTeleport and "enabled" or "disabled"));
        end)

        Misc.Toggle("wide cmdbar", WideBar, function(Callback)
            WideBar = Callback
            if (not Draggable) then
                Utils.Tween(CommandBar, "Quint", "Out", .5, {
                    Position = UDim2.new(0.5, WideBar and -200 or -100, 1, 5) -- tween -110
                })
            end
            Utils.Tween(CommandBar, "Quint", "Out", .5, {
                Size = UDim2.new(0, WideBar and 400 or 200, 0, 35) -- tween -110
            })
            SetConfig({WideBar=Callback});
            Utils.Notify(nil, nil, format("widebar %s", WideBar and "enabled" or "disabled"));
        end)

        Misc.Toggle("draggable cmdbar", Draggable, function(Callback)
            Draggable = Callback
            CommandBarOpen = true
            Utils.Tween(CommandBar, "Quint", "Out", .5, {
                Position = UDim2.new(0, Mouse.X, 0, Mouse.Y + 36);
            })
            Utils.Draggable(CommandBar);
            local TransparencyTween = CommandBarOpen and Utils.TweenAllTransToObject or Utils.TweenAllTrans
            local Tween = TransparencyTween(CommandBar, .5, CommandBarTransparencyClone);
            CommandBar.Input.Text = ""
            if (not Callback) then
                Utils.Tween(CommandBar, "Quint", "Out", .5, {
                    Position = UDim2.new(0.5, WideBar and -200 or -100, 1, 5) -- tween 5
                })
            end
            Utils.Notify(nil, nil, format("draggable command bar %s", Draggable and "enabled" or "disabled"));
        end)

        Misc.Toggle("KillCam when killing", CurrentConf.KillCam, function(Callback)
            SetConfig({KillCam=Callback});
            _L.KillCam = Callback
        end)

        local OldFireTouchInterest = firetouchinterest
        Misc.Toggle("cframe touchinterest", firetouchinterest == nil, function(Callback)
            firetouchinterest = Callback and function(part1, part2, toggle)
                if (part1 and part2) then
                    if (toggle == 0) then
                        touched[1] = part1.CFrame
                        part1.CFrame = part2.CFrame
                    else
                        part1.CFrame = touched[1]
                        touched[1] = nil
                    end
                end
            end or OldFireTouchInterest
        end)

        local MacrosPage = ConfigUILib.NewPage("Macros");
        local MacroSection;
        MacroSection = MacrosPage.CreateMacroSection(Macros, function(Bind, Command, Args)
            local AlreadyAdded = false
            for i = 1, #Macros do
                if (Macros[i].Command == Command) then
                    AlreadyAdded = true
                end
            end
            if (CommandsTable[Command] and not AlreadyAdded) then
                MacroSection.AddMacro(Command .. " " .. Args, SortKeys(Bind[1], Bind[2]));
                Args = split(Args, " ");
                if (sub(Command, 1, 2) == "un" or CommandsTable["un" .. Command]) then
                    local Shifted = {Command, unpack(Args)}
                    Macros[#Macros + 1] = {
                        Command = "toggle",
                        Args = Shifted,
                        Keys = Bind
                    }
                else
                    Macros[#Macros + 1] = {
                        Command = Command,
                        Args = Args,
                        Keys = Bind
                    }
                end
                local TempMacros = clone(Macros);
                for i, v in next, TempMacros do
                    for i2, v2 in next, v.Keys do
                        TempMacros[i]["Keys"][i2] = split(tostring(v2), ".")[3]
                    end
                end
                SetConfig({Macros=TempMacros});
            end
        end)
        local UIListLayout = MacroSection.CommandsList.UIListLayout
        for i, v in next, CommandsTable do
            if (not FindFirstChild(MacroSection.CommandsList, v.Name)) then
                MacroSection.AddCmd(v.Name);
            end
        end
        MacroSection.CommandsList.CanvasSize = UDim2.fromOffset(0, UIListLayout.AbsoluteContentSize.Y);
        local Search = FindFirstChild(MacroSection.CommandsList.Parent.Parent, "Search");

        AddConnection(CConnect(GetPropertyChangedSignal(Search, "Text"), function()
            local Text = Search.Text
            for _, v in next, GetChildren(MacroSection.CommandsList) do
                if (IsA(v, "TextButton")) then
                    local Command = v.Text
                    v.Visible = Sfind(lower(Command), Text, 1, true)
                end
            end
            MacroSection.CommandsList.CanvasSize = UDim2.fromOffset(0, UIListLayout.AbsoluteContentSize.Y);
        end), Connections.UI, true);
        
        local PluginsPage = ConfigUILib.NewPage("Plugins");
        
        local CurrentPlugins = PluginsPage.NewSection("Current Plugins");
        local PluginSettings = PluginsPage.NewSection("Plugin Settings");
    
        local CurrentPluginConf = GetPluginConfig();
    
        CurrentPlugins.ScrollingFrame("plugins", function(Option, Enabled)
            CurrentPluginConf = GetPluginConfig();
            for i = 1, #Plugins do
                local Plugin = Plugins[i]
                if (Plugin[1] == Option) then
                    local DisabledPlugins = CurrentPluginConf.DisabledPlugins
                    local PluginName = Plugin[2]().Name
                    if (Enabled) then
                        DisabledPlugins[PluginName] = nil
                        SetPluginConfig({DisabledPlugins=DisabledPlugins});
                        Utils.Notify(nil, "Plugin Enabled", format("plugin %s successfully enabled", PluginName));
                    else
                        DisabledPlugins[PluginName] = true
                        SetPluginConfig({DisabledPlugins=DisabledPlugins});
                        Utils.Notify(nil, "Plugin Disabled", format("plugin %s successfully disabled", PluginName));
                    end
                end
            end
        end, map(Plugins, function(Key, Plugin)
            return not PluginConf.DisabledPlugins[Plugin[2]().Name], Plugin[1]
        end));
    
        PluginSettings.Toggle("Plugins Enabled", CurrentPluginConf.PluginsEnabled, function(Callback)
            SetPluginConfig({PluginsEnabled = Callback});
        end)

        PluginSettings.Toggle("Plugins Debug", CurrentPluginConf.PluginDebug, function(Callback)
            SetPluginConfig({PluginDebug = Callback});
        end)

        PluginSettings.Toggle("Safe Plugins", CurrentPluginConf.SafePlugins, function(Callback)
            SetPluginConfig({SafePlugins = Callback});
        end)

        local Themes = ConfigUILib.NewPage("Themes");

        local Color = Themes.NewSection("Colors");
        local Options = Themes.NewSection("Options");

        local RainbowEnabled = false
        Color.ColorPicker("All Background", UITheme.Background.BackgroundColor, function(Callback, IsRainbow)
            UITheme.Background.BackgroundColor = Callback
            RainbowEnabled = IsRainbow
        end)
        Color.ColorPicker("CommandBar", UITheme.CommandBar.BackgroundColor, function(Callback)
            if (not RainbowEnabled) then
                UITheme.CommandBar.BackgroundColor = Callback
            end
        end)
        Color.ColorPicker("Notification", UITheme.Notification.BackgroundColor, function(Callback)
            if (not RainbowEnabled) then
                UITheme.Notification.BackgroundColor = Callback
            end
        end)
        Color.ColorPicker("ChatLogs", UITheme.ChatLogs.BackgroundColor, function(Callback)
            if (not RainbowEnabled) then
                UITheme.ChatLogs.BackgroundColor = Callback
            end
        end)
        Color.ColorPicker("CommandList", UITheme.CommandList.BackgroundColor, function(Callback)
            if (not RainbowEnabled) then
                UITheme.CommandList.BackgroundColor = Callback
            end
        end)
        Color.ColorPicker("Config", UITheme.Config.BackgroundColor, function(Callback)
            if (not RainbowEnabled) then
                UITheme.Config.BackgroundColor = Callback
            end
        end)

        Color.ColorPicker("All Text", UITheme.Background.TextColor, function(Callback)
            UITheme.Background.TextColor = Callback
        end)

        local ToggleSave;
        ToggleSave = Options.Toggle("Save Theme", false, function(Callback)
            WriteThemeConfig();
            wait(.5);
            ToggleSave();
            Utils.Notify(nil, "Theme", "saved theme");
        end)

        local ToggleLoad;
        ToggleLoad = Options.Toggle("Load Theme", false, function(Callback)
            LoadTheme(GetThemeConfig());
            wait(.5);
            ToggleLoad();
            Utils.Notify(nil, "Theme", "Loaded theme");
        end)

        local ToggleReset;
        ToggleReset = Options.Toggle("Reset Theme", false, function(Callback)
            UITheme.Background.BackgroundColor = "Reset"
            UITheme.Notification.TextColor = "Reset"
            UITheme.CommandBar.TextColor = "Reset"
            UITheme.CommandList.TextColor = "Reset"
            UITheme.ChatLogs.TextColor = "Reset"
            UITheme.Config.TextColor = "Reset"
            UITheme.Notification.Transparency = "Reset"
            UITheme.CommandBar.Transparency = "Reset"
            UITheme.CommandList.Transparency = "Reset"
            UITheme.ChatLogs.Transparency = "Reset"
            UITheme.Config.Transparency = "Reset"
            wait(.5);
            ToggleReset();
            Utils.Notify(nil, "Theme", "reset theme");
        end)

    end

    delay(1, function()
        for i = 1, #Macros do
            local Macro = Macros[i]
            for i2 = 1, #Macro.Keys do
                Macros[i].Keys[i2] = Enum.KeyCode[Macros[i].Keys[i2]]
            end
        end
        if (CurrentConfig.WideBar) then
            WideBar = true
            Utils.Tween(CommandBar, "Quint", "Out", .5, {
                Size = UDim2.new(0, WideBar and 400 or 200, 0, 35) -- tween -110
            })
        end
        KillCam = CurrentConfig.KillCam
        local Aliases = CurrentConfig.Aliases
        if (Aliases) then
            for i, v in next, Aliases do
                if (CommandsTable[i]) then
                    for i2 = 1, #v do
                        local Alias = v[i2]
                        local Add = CommandsTable[i]
                        Add.Name = Alias
                        CommandsTable[Alias] = Add
                    end
                end
            end
        end
    end)
end
--END IMPORT [config]


AddConnection(CConnect(CommandBar.Input.FocusLost, function()
    local Text = trim(CommandBar.Input.Text);
    local CommandArgs = split(Text, " ");

    CommandBarOpen = false

    if (not Draggable) then
        Utils.TweenAllTrans(CommandBar, .5)
        Utils.Tween(CommandBar, "Quint", "Out", .5, {
            Position = UDim2.new(0.5, WideBar and -200 or -100, 1, 5); -- tween 5
        })
    end

    local Command = CommandArgs[1]
    local Args = shift(CommandArgs);

    if (Command ~= "") then
        ExecuteCommand(Command, Args, LocalPlayer);
    end
end), Connections.UI, true);

local PlayerAdded = function(plr)
    RespawnTimes[plr.Name] = tick();
    AddConnection(CConnect(plr.CharacterAdded, function()
        RespawnTimes[plr.Name] = tick();
    end));
end

forEach(GetPlayers(Players), function(i,v)
    PlayerAdded(v);
end);

AddConnection(CConnect(Players.PlayerAdded, function(plr)
    PlayerAdded(plr);
end))

AddConnection(CConnect(Players.PlayerRemoving, function(plr)
    if (Connections.Players[plr.Name]) then
        if (Connections.Players[plr.Name].ChatCon) then
            Disconnect(Connections.Players[plr.Name].ChatCon);
        end
        Connections.Players[plr.Name] = nil
    end
    if (RespawnTimes[plr.Name]) then
        RespawnTimes[plr.Name] = nil
    end
end))

getgenv().F_A = {
    Utils = Utils,
    PluginLibrary = PluginLibrary,
    GetConfig = GetConfig
}

local Tab = GUI:Tab{
	Name = "Miscellaneous",
	Icon = "rbxassetid://14161961667"
}



local MPCUndetainToggle = false -- Default toggle state
local loopEnabled = false -- Variable to control the loop

local function MPCUndetainScript()
    local player = game:GetService("Players").LocalPlayer

    while loopEnabled do
        if player.PlayerGui:FindFirstChild("DetainWarning") then
            prev = LP.Character:WaitForChild('HumanoidRootPart').CFrame
            game:GetService("ReplicatedStorage").Packages.Knit.Services.SkydivingService.RF.FallDamage:InvokeServer(1)
        end

        -- Check if Death.Visible is true
        while player.PlayerGui.InteractableMenus.Death.Visible do
            -- Your code here

            -- Call RequestDeploy to respawn
            game:GetService("ReplicatedStorage").Packages.Knit.Services.PlayerHandler.RF.RequestDeploy:InvokeServer()
            -- Script generated by SimpleSpy - credits to exx#9394
            game:GetService("ReplicatedStorage").Packages.Knit.Services.PlayerHandler.RF.Respawn:InvokeServer()
            player.Character.Torso.Anchored = false
            player.Character.Head.Anchored = false
            player.Character.HumanoidRootPart.Anchored = false
            -- Wait for a short duration before checking Death.Visible again
            wait()
        end

        wait(0.01) -- Faster iteration, adjust the delay as needed
    end
end

local toggle = Tab:Toggle{
    Name = "MPC undetain",
    Description = "Removes MPC detainment. Must be detained to work.",
    Callback = function(state)
        MPCUndetainToggle = state
        if MPCUndetainToggle then
            if not loopEnabled then
                loopEnabled = true -- Start the loop if it's not already running
                MPCUndetainScript()
            end
        else
            loopEnabled = false -- Stop the loop
        end
    end
}

toggle:SetState(MPCUndetainToggle)

local toggle = Tab:Toggle{
    Name = "Infinite Stamina",
    StartingState = false,
    Description = "Give you unlimited running/stamina speed.",
    Callback = function(state)
        local loopEnabled = true -- Variable to control the loop

        while loopEnabled do
            if state then
                local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()

                local scriptPath = game:GetService("ReplicatedStorage").Client.Controller.ClientController.Sprint
                local closureName = "Unnamed function"
                local upvalueIndex = 1
                local closureConstants = {
                    [1] = "rig",
                    [2] = "Humanoid",
                    [3] = "FindFirstChild",
                    [4] = "actions",
                    [5] = "Disconnect",
                    [6] = "Deplete"
                }

                local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
                local value = 100
                local elementIndex = "stamina"

                debug.getupvalue(closure, upvalueIndex)[elementIndex] = value

                wait(0.3) -- Delay before the next iteration
            else
                break -- Break the loop if the toggle is set to false
            end
        end
    end
}

local loopActive = false

Tab:Toggle{
    Name = "Bad God Mode",
    StartingState = false,
    Description = "This god mode isn't really good but it works.",
    Callback = function(state) 
        loopActive = state

        while loopActive do
            local success = pcall(function()
                if game.Players.LocalPlayer.PlayerGui:WaitForChild("InteractableMenus"):WaitForChild("Death").Visible then
                    local LP = game:GetService('Players').LocalPlayer
                    local prev = LP.Character:WaitForChild('HumanoidRootPart').CFrame
                    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("RequestDeploy"):InvokeServer()
                    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("Respawn"):InvokeServer()
                    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RadioService"):WaitForChild("RF"):WaitForChild("CanUseRadio"):InvokeServer()
                    LP.Character:WaitForChild('HumanoidRootPart').CFrame = prev
                end
            end)
            wait(0.1) -- Adjust the delay as per your preference
        end
    end
}


Tab:button({
    Name = "Remove Anti",
    Description = "Allows you to bypass out of bounds zones and anti-barriers for raiders.",
    Callback = function()
    
        Tab:prompt{
            Title = "Warning",
            Text = "Enabling 'Remove Anti' will remove barriers, and you will have to rejoin to get them back.",
            Buttons = {
                ENABLE = function()
                    local raiderRestricted = workspace.Regions:FindFirstChild("RaiderRestricted")
                    local pavilions = workspace.Regions:FindFirstChild("Pavilions")
                    local prison = workspace.Regions:FindFirstChild("Prison")
                    
                    if raiderRestricted and pavilions and prison then
                        raiderRestricted:Destroy()
                        pavilions:Destroy()
                        prison:Destroy()
                    else
                        wait()
                    end
                end,
                EXIT = function()
                    wait()
                end
            }
        }
    end,
})

Tab:button({
    Name = "Allow Reset",
    Description = "Allowing reset even when detained.",
    Callback = function()
    
        Tab:prompt{
            Title = "Warning",
            Text = "Enabling 'Allow Reset' will allow you to reset, and you will have to rejoin to unenable it.",
            Buttons = {
                ENABLE = function()
                    while wait() do
                        game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
                    end
                    while wait() do
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.PrisonService.RF.DetainReleaseCheck:InvokeServer()
                    end
                end,
                EXIT = function()
                    wait()
                end
            }
        }
    end,
})

AddCommand("chatlogs", {"clogs"}, "enables chatlogs", {}, function()
    local MessageClone = Clone(ChatLogs.Frame.List);

    Utils.ClearAllObjects(ChatLogs.Frame.List)
    ChatLogs.Visible = true

    local Tween = Utils.TweenAllTransToObject(ChatLogs, .25, ChatLogsTransparencyClone)

    Destroy(ChatLogs.Frame.List)
    MessageClone.Parent = ChatLogs.Frame

    for i, v in next, GetChildren(ChatLogs.Frame.List) do
        if (not IsA(v, "UIListLayout")) then
            Utils.Tween(v, "Sine", "Out", .25, {
                TextTransparency = 0
            })
        end
    end

    local ChatLogsListLayout = ChatLogs.Frame.List.UIListLayout

    CConnect(GetPropertyChangedSignal(ChatLogsListLayout, "AbsoluteContentSize"), function()
        local CanvasPosition = ChatLogs.Frame.List.CanvasPosition
        local CanvasSize = ChatLogs.Frame.List.CanvasSize
        local AbsoluteSize = ChatLogs.Frame.List.AbsoluteSize

        if (CanvasSize.Y.Offset - AbsoluteSize.Y - CanvasPosition.Y < 20) then
           wait() -- chatlogs updates absolutecontentsize before sizing frame
           ChatLogs.Frame.List.CanvasPosition = Vector2.new(0, CanvasSize.Y.Offset + 1000) --ChatLogsListLayout.AbsoluteContentSize.Y + 100)
        end
    end)

    Utils.Tween(ChatLogs.Frame.List, "Sine", "Out", .25, {
        ScrollBarImageTransparency = 0
    })
end)

Tab:Button{
	Name = "Refresh Character",
	Description = "Refreshes you character and brings you back to the place you were at.",
	Callback = function() 
    local LP = game:GetService('Players').LocalPlayer
    local prev = LP.Character:WaitForChild('HumanoidRootPart').CFrame
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("Reset"):InvokeServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("RequestDeploy"):InvokeServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("Respawn"):InvokeServer()
    LP.Character:WaitForChild('HumanoidRootPart').CFrame = prev
end}

Tab:Button{
	Name = "Fix Character / Fast respawn",
	Description = "Respawns your character which fixes bugs. (You might need to execute x3)",
	Callback = function() 
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("Reset"):InvokeServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("RequestDeploy"):InvokeServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerHandler"):WaitForChild("RF"):WaitForChild("Respawn"):InvokeServer()
end}


local Tab = GUI:Tab{
	Name = "TP-places",
	Icon = "rbxassetid://14161869209"
}

Tab:Button{
	Name = "ASOC pavs/helipads/parachutes",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502.314758, 11.1710091, 828.320496, 0.999988198, -4.81881443e-06, 0.00486741215, -1.28890351e-05, 0.999993384, 0.00364383636, -0.00486739771, -0.00364385615, 0.999981582)
end}

Tab:Button{
	Name = "MPC HQ",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.9417114, 9.73274612, 600.078186, -0.00775325531, -5.18449683e-09, 0.999969959, 2.86729041e-08, 1, 5.40696776e-09, -0.999969959, 2.87139628e-08, -0.00775325531)
end}

Tab:Button{
	Name = "MPC Jail",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.9367905, -5.68009472, 582.540588, -0.999667168, -4.01923606e-10, -0.0257991701, -9.49855472e-11, 1, -1.18984325e-08, 0.0257991701, -1.18920216e-08, -0.999667168)
end}

Tab:Button{
	Name = "MPC helipads",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.2854691, 44.2849922, 544.887329, -0.999979973, 8.76001138e-08, 0.0063287681, 8.75278161e-08, 1, -1.17001431e-08, -0.0063287681, -1.1145965e-08, -0.999979973)
end}

Tab:Button{
	Name = "Main Pavs",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6.65618134, 10.7407579, 1350.91467, 0.999997377, -6.17675866e-08, 0.00229073549, 6.1614351e-08, 1, 6.69644464e-08, -0.00229073549, -6.68231337e-08, 0.999997377)
end}

Tab:Button{
	Name = "BCT spawn",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(988.299927, 11.8485556, 934.527527, 0.999945402, 4.30277645e-08, -0.0104473019, -4.31641389e-08, 1, -1.28279103e-08, 0.0104473019, 1.3278159e-08, 0.999945402)
end}

Tab:Button{
	Name = "BCT middle",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1083.1134, 12.2083025, 689.882996, -0.999296308, -5.34490973e-05, -0.0375103839, -4.1442334e-07, 0.999998987, -0.00141386897, 0.0375104211, -0.00141285849, -0.999295294)
end}

Tab:Button{
	Name = "BCT gates",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.339111, 11.0584269, 969.930359, 0.999859989, 6.13850375e-08, -0.0167334024, -6.15545517e-08, 1, -9.61499325e-09, 0.0167334024, 1.06436637e-08, 0.999859989)
end}

Tab:Button{
	Name = "BCT back entrence",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(843.585205, 10.3485556, 709.132996, 0.0233228076, -6.05396906e-08, -0.999727964, 1.46258134e-08, 1, -6.02149584e-08, 0.999727964, -1.32174529e-08, 0.0233228076)
end}

Tab:Button{
	Name = "BCT obstacle course",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1421.87317, 8.97494888, 873.78479, 0.999670088, 5.95610601e-08, -0.0256855972, -5.97199517e-08, 1, -5.41883916e-09, 0.0256855972, 6.950994e-09, 0.999670088)
end}

Tab:Button{
	Name = "BCT classroom 1",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1213.36328, 12.0569696, 1053.1792, -0.01886978, -2.428194e-08, 0.999821961, -4.97723356e-08, 1, 2.33469031e-08, -0.999821961, -4.93229244e-08, -0.01886978)
end}

Tab:Button{
	Name = "BCT classroom 2",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1443.5238, 11.9319658, 339.510925, 0.752191424, -4.12809387e-09, -0.658944607, 9.99932492e-09, 1, 5.14961762e-09, 0.658944607, -1.04625002e-08, 0.752191424)
end}

Tab:Button{
	Name = "TRADOC spawn/pavs",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1370.94263, 11.8253345, 923.979492, -0.999791086, 7.08361476e-05, -0.0204392616, -1.61742446e-05, 0.99999094, 0.00425661588, 0.0204393771, 0.00425605709, -0.999782026)
end}

Tab:Button{
	Name = "Parachute area",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-371.571716, 11.4136524, 1257.21594, -0.999861836, 1.23129196e-08, -0.0166229904, 1.13961782e-08, 1, 5.52437172e-08, 0.0166229904, 5.50466446e-08, -0.999861836)
end}

Tab:Button{
	Name = "Civilian parachute area",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(624.714233, 36.2230988, -776.079468, 0.868700683, -0.00357898255, -0.495324433, -1.04035398e-05, 0.999973774, -0.00724359136, 0.495337367, 0.00629766658, 0.868677914)
end}

Tab:Button{
	Name = "Eagle-1, C-17",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-727.325439, 10053.4375, 2551.65161, 1.37240555e-22, 1.96370351e-12, -1, 5.09596618e-12, 1, 1.96370351e-12, 1, -5.09596618e-12, 1.27233596e-22)
end}

Tab:Button{
	Name = "Eagle-2, C-17",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1218.95276, 2181.74048, 2687.65991, 0.62458998, -0.0012935485, 0.780951798, -1.56878752e-06, 0.999998629, 0.00165763672, -0.780952871, -0.00103657809, 0.624589145)
end}

Tab:Button{
	Name = "Civilian plane",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-671.884277, 3331.55176, -1295.37415, 0.711412668, -3.79786513e-08, -0.702774525, 1.91926519e-09, 1, -5.20981622e-08, 0.702774525, 3.5714482e-08, 0.711412668)
end}

Tab:Button{
	Name = "Main lockers",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-79.4713516, 11.8364649, 937.480957, 0.016474437, 0.00772784511, 0.999834418, -1.39475969e-05, 0.999970138, -0.0077286642, -0.99986428, 0.000113380396, 0.0164740514)
end}

Tab:Button{
	Name = "MIC spawn",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(590.387085, -13.2860994, 758.748291, 0.0130349547, -1.00658234e-07, 0.999915063, 1.63013887e-08, 1, 1.0045428e-07, -0.999915063, 1.49905865e-08, 0.0130349547)
end}

Tab:Button{
	Name = "BCT Graduation/Inspection arena",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(944.054504, 9.64926529, 1150.47632, -0.999684632, 8.47997441e-08, 0.0251116548, 8.29876896e-08, 1, -7.32021661e-08, -0.0251116548, -7.10951227e-08, -0.999684632)
end}

Tab:Button{
	Name = "Inspection Arena",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.2768707, 3.97309732, 1563.76892, -0.99989301, -2.33780924e-08, 0.0146266464, -2.29739658e-08, 1, 2.77974372e-08, -0.0146266464, 2.7458432e-08, -0.99989301)
end}

Tab:Button{
	Name = "HQ offices",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(566.007996, 9.80166626, 675.131958, -0.745923996, -1.14779326e-07, 0.666031063, -5.92766156e-08, 1, 1.05946221e-07, -0.666031063, 3.95477606e-08, -0.745923996)
end}

Tab:Button{
	Name = "HQ helipad",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(613.711548, 33.08741, 512.916138, -0.999864519, 7.24428375e-08, -0.0164586939, 7.14111508e-08, 1, 6.32709529e-08, 0.0164586939, 6.20870537e-08, -0.999864519)
end}

Tab:Button{
	Name = "Combat Arena",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(959.810669, 37.1636963, 1583.86548, 0.0611626282, 0.00419920497, -0.998118937, -1.58698767e-05, 0.999991179, 0.00420610886, 0.998127759, -0.000241416725, 0.0611621514)
end}

Tab:Button{
	Name = "Obstacle course 1",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(339.775726, 8.9776516, 1602.72485, -0.0115794567, 6.29152765e-08, -0.999932945, 6.84197516e-08, 1, 6.21271781e-08, 0.999932945, -6.76957654e-08, -0.0115794567)
end}

Tab:Button{
	Name = "Obstacle course 2",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(205.194489, 6.9181633, 2113.85645, -0.0174634513, -0.00746318977, -0.999819636, -1.20515087e-05, 0.999972165, -0.00746411784, 0.999847472, -0.000118296361, -0.0174630564)
end}

Tab:Button{
	Name = "Top of tower",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.5629501, 86.732605, 2283.823, 0.999928355, -3.19849933e-05, 0.0119636878, -1.38731939e-05, 0.999992669, 0.00383119867, -0.0119637232, -0.00383108994, 0.999921024)
end}

Tab:Button{
	Name = "Gas station",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100.288239, 9.55741215, 989.492249, 0.999849319, -2.01223731e-08, -0.0173591096, 2.01457784e-08, 1, 1.17339594e-09, 0.0173591096, -1.52293189e-09, 0.999849319)
end}

Tab:Button{
	Name = "Civilian spawn",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(259.106445, 9.53177071, -15.8817606, -0.999200523, 1.37413778e-08, 0.03997913, 8.84676155e-09, 1, -1.2260621e-07, -0.03997913, -1.22154503e-07, -0.999200523)
end}

Tab:Button{
	Name = "Raiders spawn",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.246089, 20.9324799, -491.017151, -0.893917918, -2.69051732e-08, 0.448230743, -2.60664272e-08, 1, 8.04034084e-09, -0.448230743, -4.49636905e-09, -0.893917918)
end}

Tab:Button{
	Name = "Civilian gate",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(257.801727, 9.91553211, 389.690826, 0.999987543, 2.52958241e-08, 0.00498700375, -2.54312535e-08, 1, 2.70930105e-08, -0.00498700375, -2.72194995e-08, 0.999987543)
end}

Tab:Button{
	Name = "Raiders roof  1",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(213.052414, 76.2043839, 1450.51355, 0.999924183, 4.59646726e-05, -0.0123136044, -6.3619209e-06, 0.999994814, 0.00321683846, 0.0123136882, -0.00321651623, 0.999918997)
end}

Tab:Button{
	Name = "Raiders roof  2",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(213.052414, 76.2043839, 1450.51355, 0.999924183, 4.59646726e-05, -0.0123136044, -6.3619209e-06, 0.999994814, 0.00321683846, 0.0123136882, -0.00321651623, 0.999918997)
end}

Tab:Button{
	Name = "Classroom 1",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-48.0594864, 31.5873032, 912.532471, 0.999863863, -0.000112432761, -0.0165009648, -1.37737488e-05, 0.999970734, -0.00764817325, 0.0165013429, 0.00764735881, 0.999834597)
end}

Tab:Button{
	Name = "Classroom 2",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.2224731, 11.4481373, 898.298767, 0.999739528, -8.89821094e-05, -0.0228216425, -3.01393766e-06, 0.999991894, -0.00403091032, 0.0228218138, 0.00402992871, 0.999731421)
end}

Tab:Button{
	Name = "Classroom 3",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-84.3731613, 24.9674625, 1047.09753, 0.874340236, -5.97644734e-09, 0.485313475, -7.91967469e-09, 1, 2.65826898e-08, -0.485313475, -2.70858393e-08, 0.874340236)
end}

Tab:Button{
	Name = "Undergrown tunnel civlian",
	Description = nil,
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Teleporting...",
	Duration = 2,
	Callback = function() end 
                
            }
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(172.857773, -8.10354042, 214.540146, 0.00442328211, 5.67852831e-09, -0.999990225, 1.05739257e-08, 1, 5.72535575e-09, 0.999990225, -1.05991473e-08, 0.00442328211)
end}



local Tab = GUI:Tab{
	Name = "Utility/Player",
	Icon = "rbxassetid://14161842527"
}

Tab:Slider{
    Name = "Walk Speed Slider",
    Default = 16,
    Min = 1,
    Max = 500,
    Callback = function(value)
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        
        -- Set the player's walk speed based on the slider value
        LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
}

Tab:Slider{
    Name = "Jump Power Slider",
    Default = 50,
    Min = 1,
    Max = 500,
    Callback = function(value)
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        
        -- Set the player's jump power based on the slider value
        LocalPlayer.Character.Humanoid.JumpPower = value
    end
}

Tab:Slider{
    Name = "Field of View Slider",
    Default = 70,
    Min = 1,
    Max = 500,
    Callback = function(value)
        local amount = value
        game:GetService('Workspace').Camera.FieldOfView = amount
    end
}

Tab:Button{
	Name = "Cammra Noclip",
	Description = "Allows your cammra to go through the walls.",
	Callback = function()
for useless, garbage in next,getgc() do
   if getfenv(garbage).script == game.Players.LocalPlayer.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper and typeof(garbage) == "function" then
       for number, value in next, getconstants(garbage) do
           if tonumber(value) == 0.25 then
               setconstant(garbage,number,0)
           elseif tonumber(value) == 0 then
               setconstant(garbage,number,0.25)
           end
       end
   end
end
end}



local toggle = Tab:Toggle{
    Name = "Noclip Toggle",
    Description = "Enable or disable noclip functionality.",
    Callback = function(state)
    _G.noclip = state
     local Loop  game:GetService('RunService').Stepped:connect(function()
            if _G.noclip then
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        if v.CanCollide ~= not _G.noclip then
                            v.CanCollide = not _G.noclip
                        end
                    end
                end
            end
        end)
    end
}



local Tab = GUI:Tab{
	Name = "ESP",
	Icon = "rbxassetid://14161801436"
}


Tab:Toggle{
    Name = "ASOC ESP",
    StartingState = false,
    Description = "It will show the location of all ASOC members.",
    Callback = function(state)
        getgenv().ESPASOC = true
        getgenv().ESPASOC = state

        local ESPASOC_UPDATE_INTERVAL = 2

        local function updateESPASOC()
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                if player.Team and player.Team.Name == "ASOC" then
                    local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPASOC")
                    if not existingBillboardGui then
                        local billboardGui = Instance.new("BillboardGui")
                        billboardGui.Name = "ESPASOC"
                        billboardGui.Size = UDim2.new(0, 100, 0, 100)
                        billboardGui.AlwaysOnTop = true
                        billboardGui.LightInfluence = 0
                        billboardGui.MaxDistance = math.huge
                        billboardGui.Parent = player.Character or player.CharacterAdded:Wait()

                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Parent = billboardGui
                        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
                        nameLabel.Position = UDim2.new(0, 0, 0, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                        nameLabel.TextColor3 = Color3.new(1 , 1 , 1)
                        nameLabel.FontSize = Enum.FontSize.Size18
                        nameLabel.Font = Enum.Font.SourceSansBold
                    else
                        existingBillboardGui.Enabled = true
                        existingBillboardGui.NameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                    end
                end
            end
        end

        if getgenv().ESPASOC == true then
            while true do
                if getgenv().ESPASOC then
                    updateESPASOC()
                end
                wait(ESPASOC_UPDATE_INTERVAL)
            end
        else
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPASOC")
                if existingBillboardGui then
                    existingBillboardGui.Enabled = false
                end
            end
        end

        local holder = game.CoreGui:FindFirstChild("ESPASOCHolder") or Instance.new("Folder")
        if ESPASOC == false then
            holder:Destroy()
        end

        if holder.Name == "Folder" then
            holder.Name = "ESPASOCHolder"
            holder.Parent = game.CoreGui
        end

        if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
            holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
        end

        if getgenv().ESPASOC == true then
            getgenv().ESPASOC = false
            getgenv().ESPASOC = true
        end

        while getgenv().ESPASOC do
            task.wait()
            for _, v in pairs(game.Players:GetChildren()) do
                if v.Team ~= nil and v.Team.Name == "ASOC" then
                    local chr = v.Character
                    if chr ~= nil then
                        local ESPASOC = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
                        ESPASOC.Name = v.Name
                        if uselocalplayer == false and ESPASOC.Name == game.Players.LocalPlayer.Name then
                        else
                            ESPASOC.Parent = holder
                            if filluseteamcolor then
                                ESPASOC.FillColor = v.TeamColor.Color
                            else
                                ESPASOC.FillColor = fillcolor
                            end
                            if outlineuseteamcolor then
                                ESPASOC.OutlineColor = v.TeamColor.Color
                            else
                                ESPASOC.OutlineColor = outlinecolor
                            end
                            ESPASOC.FillTransparency = filltrans
                            ESPASOC.OutlineTransparency = outlinetrans
                            ESPASOC.Adornee = chr
                            ESPASOC.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESPASOC = true == state
    end
}

Tab:Toggle{
    Name = "ASOC HIGHLIGHT ESP",
    StartingState = false,
    Description = "Highlights all ASOC members. Note: This does not work at far distance.",
    Callback = function(state)
        getgenv().ESP = true
        getgenv().ESP = state
        getgenv().uselocalplayer = false
        getgenv().filluseteamcolor = true
        getgenv().outlineuseteamcolor = false
        getgenv().fillcolor = Color3.new(0, 0, 0)
        getgenv().outlinecolor = Color3.new(1, 1, 1)
        getgenv().filltrans = 0.5
        getgenv().outlinetrans = 0

        local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
        if not getgenv().ESP then
            holder:Destroy()
        else
            if holder.Name == "Folder" then
                holder.Name = "ESPHolder"
                holder.Parent = game.CoreGui
            end
            if not getgenv().uselocalplayer and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
                holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
            end
        end

        game.Players.PlayerAdded:Connect(function(player)
            if player.Team ~= nil and player.Team.Name == "ASOC" then
                local chr = player.Character
                if chr ~= nil then
                    local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                    esp.Name = player.Name
                    if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                        esp.Parent = holder
                        if getgenv().filluseteamcolor then
                            esp.FillColor = player.TeamColor.Color
                        else
                            esp.FillColor = getgenv().fillcolor
                        end
                        if getgenv().outlineuseteamcolor then
                            esp.OutlineColor = player.TeamColor.Color
                        else
                            esp.OutlineColor = getgenv().outlinecolor
                        end
                        esp.FillTransparency = getgenv().filltrans
                        esp.OutlineTransparency = getgenv().outlinetrans
                        esp.Adornee = chr
                        esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    end
                end
            end
        end)

        game.Players.PlayerRemoving:Connect(function(player)
            if holder:FindFirstChild(player.Name) then
                holder:FindFirstChild(player.Name):Destroy()
            end
        end)

        while getgenv().ESP do
            task.wait()
            for _, player in pairs(game.Players:GetChildren()) do
                if player.Team ~= nil and player.Team.Name == "ASOC" then
                    local chr = player.Character
                    if chr ~= nil then
                        local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                        esp.Name = player.Name
                        if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                            esp.Parent = holder
                            if getgenv().filluseteamcolor then
                                esp.FillColor = player.TeamColor.Color
                            else
                                esp.FillColor = getgenv().fillcolor
                            end
                            if getgenv().outlineuseteamcolor then
                                esp.OutlineColor = player.TeamColor.Color
                            else
                                esp.OutlineColor = getgenv().outlinecolor
                            end
                            esp.FillTransparency = getgenv().filltrans
                            esp.OutlineTransparency = getgenv().outlinetrans
                            esp.Adornee = chr
                            esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESP = true == state
    end
}

Tab:Toggle{
    Name = "US Personnel ESP",
    StartingState = false,
    Description = "It will show the location of all US Personnel members.",
    Callback = function(state)
        getgenv().ESPUSPersonnel = true
        getgenv().ESPUSPersonnel = state

        local ESPUSPersonnel_UPDATE_INTERVAL = 2

        local function updateESPUSPersonnel()
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                if player.Team and player.Team.Name == "US Personnel" then
                    local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPUSPersonnel")
                    if not existingBillboardGui then
                        local billboardGui = Instance.new("BillboardGui")
                        billboardGui.Name = "ESPUSPersonnel"
                        billboardGui.Size = UDim2.new(0, 100, 0, 100)
                        billboardGui.AlwaysOnTop = true
                        billboardGui.LightInfluence = 0
                        billboardGui.MaxDistance = math.huge
                        billboardGui.Parent = player.Character or player.CharacterAdded:Wait()

                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Parent = billboardGui
                        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
                        nameLabel.Position = UDim2.new(0, 0, 0, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                        nameLabel.TextColor3 = Color3.new(1, 1, 1)
                        nameLabel.FontSize = Enum.FontSize.Size18
                        nameLabel.Font = Enum.Font.SourceSansBold
                    else
                        existingBillboardGui.Enabled = true
                        existingBillboardGui.NameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                    end
                end
            end
        end

        if getgenv().ESPUSPersonnel == true then
            while true do
                if getgenv().ESPUSPersonnel then
                    updateESPUSPersonnel()
                end
                wait(ESPUSPersonnel_UPDATE_INTERVAL)
            end
        else
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPUSPersonnel")
                if existingBillboardGui then
                    existingBillboardGui.Enabled = false
                end
            end
        end

        local holder = game.CoreGui:FindFirstChild("ESPUSPersonnelHolder") or Instance.new("Folder")
        if ESPUSPersonnel == false then
            holder:Destroy()
        end

        if holder.Name == "Folder" then
            holder.Name = "ESPUSPersonnelHolder"
            holder.Parent = game.CoreGui
        end

        if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
            holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
        end

        if getgenv().ESPUSPersonnel == true then
            getgenv().ESPUSPersonnel = false
            getgenv().ESPUSPersonnel = true
        end

        while getgenv().ESPUSPersonnel do
            task.wait()
            for _, v in pairs(game.Players:GetChildren()) do
                if v.Team ~= nil and v.Team.Name == "US Personnel" then
                    local chr = v.Character
                    if chr ~= nil then
                        local ESPUSPersonnel = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
                        ESPUSPersonnel.Name = v.Name
                        if uselocalplayer == false and ESPUSPersonnel.Name == game.Players.LocalPlayer.Name then
                        else
                            ESPUSPersonnel.Parent = holder
                            if filluseteamcolor then
                                ESPUSPersonnel.FillColor = v.TeamColor.Color
                            else
                                ESPUSPersonnel.FillColor = fillcolor
                            end
                            if outlineuseteamcolor then
                                ESPUSPersonnel.OutlineColor = v.TeamColor.Color
                            else
                                ESPUSPersonnel.OutlineColor = outlinecolor
                            end
                            ESPUSPersonnel.FillTransparency = filltrans
                            ESPUSPersonnel.OutlineTransparency = outlinetrans
                            ESPUSPersonnel.Adornee = chr
                            ESPUSPersonnel.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESPUSPersonnel = true == state
    end
}

Tab:Toggle{
    Name = "US Personnel HIGHLIGHT ESP",
    StartingState = false,
    Description = "Highlights all US Personnel members. Note: This does not work at far distance.",
    Callback = function(state)
        getgenv().ESP = true
        getgenv().ESP = state
        getgenv().uselocalplayer = false
        getgenv().filluseteamcolor = true
        getgenv().outlineuseteamcolor = false
        getgenv().fillcolor = Color3.new(0, 0, 0)
        getgenv().outlinecolor = Color3.new(1, 1, 1)
        getgenv().filltrans = 0.5
        getgenv().outlinetrans = 0

        local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
        if not getgenv().ESP then
            holder:Destroy()
        else
            if holder.Name == "Folder" then
                holder.Name = "ESPHolder"
                holder.Parent = game.CoreGui
            end
            if not getgenv().uselocalplayer and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
                holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
            end
        end

        game.Players.PlayerAdded:Connect(function(player)
            if player.Team ~= nil and player.Team.Name == "US Personnel" then
                local chr = player.Character
                if chr ~= nil then
                    local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                    esp.Name = player.Name
                    if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                        esp.Parent = holder
                        if getgenv().filluseteamcolor then
                            esp.FillColor = player.TeamColor.Color
                        else
                            esp.FillColor = getgenv().fillcolor
                        end
                        if getgenv().outlineuseteamcolor then
                            esp.OutlineColor = player.TeamColor.Color
                        else
                            esp.OutlineColor = getgenv().outlinecolor
                        end
                        esp.FillTransparency = getgenv().filltrans
                        esp.OutlineTransparency = getgenv().outlinetrans
                        esp.Adornee = chr
                        esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    end
                end
            end
        end)

        game.Players.PlayerRemoving:Connect(function(player)
            if holder:FindFirstChild(player.Name) then
                holder:FindFirstChild(player.Name):Destroy()
            end
        end)

        while getgenv().ESP do
            task.wait()
            for _, player in pairs(game.Players:GetChildren()) do
                if player.Team ~= nil and player.Team.Name == "US Personnel" then
                    local chr = player.Character
                    if chr ~= nil then
                        local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                        esp.Name = player.Name
                        if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                            esp.Parent = holder
                            if getgenv().filluseteamcolor then
                                esp.FillColor = player.TeamColor.Color
                            else
                                esp.FillColor = getgenv().fillcolor
                            end
                            if getgenv().outlineuseteamcolor then
                                esp.OutlineColor = player.TeamColor.Color
                            else
                                esp.OutlineColor = getgenv().outlinecolor
                            end
                            esp.FillTransparency = getgenv().filltrans
                            esp.OutlineTransparency = getgenv().outlinetrans
                            esp.Adornee = chr
                            esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESP = true == state
    end
}

Tab:Toggle{
    Name = "Forces Command ESP",
    StartingState = false,
    Description = "It will show the location of all Forces Command members.",
    Callback = function(state)
        getgenv().ESPForcesCommand = true
        getgenv().ESPForcesCommand = state

        local ESPForcesCommand_UPDATE_INTERVAL = 2

        local function updateESPForcesCommand()
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                if player.Team and player.Team.Name == "Forces Command" then
                    local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPForcesCommand")
                    if not existingBillboardGui then
                        local billboardGui = Instance.new("BillboardGui")
                        billboardGui.Name = "ESPForcesCommand"
                        billboardGui.Size = UDim2.new(0, 100, 0, 100)
                        billboardGui.AlwaysOnTop = true
                        billboardGui.LightInfluence = 0
                        billboardGui.MaxDistance = math.huge
                        billboardGui.Parent = player.Character or player.CharacterAdded:Wait()

                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Parent = billboardGui
                        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
                        nameLabel.Position = UDim2.new(0, 0, 0, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                        nameLabel.TextColor3 = Color3.new(1, 1, 1)
                        nameLabel.FontSize = Enum.FontSize.Size18
                        nameLabel.Font = Enum.Font.SourceSansBold
                    else
                        existingBillboardGui.Enabled = true
                        existingBillboardGui.NameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                    end
                end
            end
        end

        if getgenv().ESPForcesCommand == true then
            while true do
                if getgenv().ESPForcesCommand then
                    updateESPForcesCommand()
                end
                wait(ESPForcesCommand_UPDATE_INTERVAL)
            end
        else
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPForcesCommand")
                if existingBillboardGui then
                    existingBillboardGui.Enabled = false
                end
            end
        end

        local holder = game.CoreGui:FindFirstChild("ESPForcesCommandHolder") or Instance.new("Folder")
        if ESPForcesCommand == false then
            holder:Destroy()
        end

        if holder.Name == "Folder" then
            holder.Name = "ESPForcesCommandHolder"
            holder.Parent = game.CoreGui
        end

        if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
            holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
        end

        if getgenv().ESPForcesCommand == true then
            getgenv().ESPForcesCommand = false
            getgenv().ESPForcesCommand = true
        end

        while getgenv().ESPForcesCommand do
            task.wait()
            for _, v in pairs(game.Players:GetChildren()) do
                if v.Team ~= nil and v.Team.Name == "Forces Command" then
                    local chr = v.Character
                    if chr ~= nil then
                        local ESPForcesCommand = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
                        ESPForcesCommand.Name = v.Name
                        if uselocalplayer == false and ESPForcesCommand.Name == game.Players.LocalPlayer.Name then
                        else
                            ESPForcesCommand.Parent = holder
                            if filluseteamcolor then
                                ESPForcesCommand.FillColor = v.TeamColor.Color
                            else
                                ESPForcesCommand.FillColor = fillcolor
                            end
                            if outlineuseteamcolor then
                                ESPForcesCommand.OutlineColor = v.TeamColor.Color
                            else
                                ESPForcesCommand.OutlineColor = outlinecolor
                            end
                            ESPForcesCommand.FillTransparency = filltrans
                            ESPForcesCommand.OutlineTransparency = outlinetrans
                            ESPForcesCommand.Adornee = chr
                            ESPForcesCommand.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESPForcesCommand = true == state
    end
}

Tab:Toggle{
    Name = "Forces Command HIGHLIGHT ESP",
    StartingState = false,
    Description = "Highlights all Forces Command members. Note: This does not work at far distance.",
    Callback = function(state)
        getgenv().ESP = true
        getgenv().ESP = state
        getgenv().uselocalplayer = false
        getgenv().filluseteamcolor = true
        getgenv().outlineuseteamcolor = false
        getgenv().fillcolor = Color3.new(0, 0, 0)
        getgenv().outlinecolor = Color3.new(1, 1, 1)
        getgenv().filltrans = 0.5
        getgenv().outlinetrans = 0

        local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
        if not getgenv().ESP then
            holder:Destroy()
        else
            if holder.Name == "Folder" then
                holder.Name = "ESPHolder"
                holder.Parent = game.CoreGui
            end
            if not getgenv().uselocalplayer and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
                holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
            end
        end

        game.Players.PlayerAdded:Connect(function(player)
            if player.Team ~= nil and player.Team.Name == "Forces Command" then
                local chr = player.Character
                if chr ~= nil then
                    local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                    esp.Name = player.Name
                    if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                        esp.Parent = holder
                        if getgenv().filluseteamcolor then
                            esp.FillColor = player.TeamColor.Color
                        else
                            esp.FillColor = getgenv().fillcolor
                        end
                        if getgenv().outlineuseteamcolor then
                            esp.OutlineColor = player.TeamColor.Color
                        else
                            esp.OutlineColor = getgenv().outlinecolor
                        end
                        esp.FillTransparency = getgenv().filltrans
                        esp.OutlineTransparency = getgenv().outlinetrans
                        esp.Adornee = chr
                        esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    end
                end
            end
        end)

        game.Players.PlayerRemoving:Connect(function(player)
            if holder:FindFirstChild(player.Name) then
                holder:FindFirstChild(player.Name):Destroy()
            end
        end)

        while getgenv().ESP do
            task.wait()
            for _, player in pairs(game.Players:GetChildren()) do
                if player.Team ~= nil and player.Team.Name == "Forces Command" then
                    local chr = player.Character
                    if chr ~= nil then
                        local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                        esp.Name = player.Name
                        if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                            esp.Parent = holder
                            if getgenv().filluseteamcolor then
                                esp.FillColor = player.TeamColor.Color
                            else
                                esp.FillColor = getgenv().fillcolor
                            end
                            if getgenv().outlineuseteamcolor then
                                esp.OutlineColor = player.TeamColor.Color
                            else
                                esp.OutlineColor = getgenv().outlinecolor
                            end
                            esp.FillTransparency = getgenv().filltrans
                            esp.OutlineTransparency = getgenv().outlinetrans
                            esp.Adornee = chr
                            esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESP = true == state
    end
}


Tab:Toggle{
    Name = "MPC ESP",
    StartingState = false,
    Description = "It will show the location of all MPC members.",
    Callback = function(state)
        getgenv().ESPMPC = true
        getgenv().ESPMPC = state

        local ESPMPC_UPDATE_INTERVAL = 2

        local function updateESPMPC()
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                if player.Team and player.Team.Name == "MPC" then
                    local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPMPC")
                    if not existingBillboardGui then
                        local billboardGui = Instance.new("BillboardGui")
                        billboardGui.Name = "ESPMPC"
                        billboardGui.Size = UDim2.new(0, 100, 0, 100)
                        billboardGui.AlwaysOnTop = true
                        billboardGui.LightInfluence = 0
                        billboardGui.MaxDistance = math.huge
                        billboardGui.Parent = player.Character or player.CharacterAdded:Wait()

                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Parent = billboardGui
                        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
                        nameLabel.Position = UDim2.new(0, 0, 0, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                        nameLabel.TextColor3 = Color3.new(1, 1, 1)
                        nameLabel.FontSize = Enum.FontSize.Size18
                        nameLabel.Font = Enum.Font.SourceSansBold
                    else
                        existingBillboardGui.Enabled = true
                        existingBillboardGui.NameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                    end
                end
            end
        end

        if getgenv().ESPMPC == true then
            while true do
                if getgenv().ESPMPC then
                    updateESPMPC()
                end
                wait(ESPMPC_UPDATE_INTERVAL)
            end
        else
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPMPC")
                if existingBillboardGui then
                    existingBillboardGui.Enabled = false
                end
            end
        end

        local holder = game.CoreGui:FindFirstChild("ESPMPCHolder") or Instance.new("Folder")
        if ESPMPC == false then
            holder:Destroy()
        end

        if holder.Name == "Folder" then
            holder.Name = "ESPMPCHolder"
            holder.Parent = game.CoreGui
        end

        if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
            holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
        end

        if getgenv().ESPMPC == true then
            getgenv().ESPMPC = false
            getgenv().ESPMPC = true
        end
    end
}

Tab:Toggle{
    Name = "MPC HIGHLIGHT ESP",
    StartingState = false,
    Description = "Highlights all MPC members. Note: This does not work at far distance.",
    Callback = function(state)
        getgenv().ESP = true
        getgenv().ESP = state
        getgenv().uselocalplayer = false
        getgenv().filluseteamcolor = true
        getgenv().outlineuseteamcolor = false
        getgenv().fillcolor = Color3.new(0, 0, 0)
        getgenv().outlinecolor = Color3.new(1, 1, 1)
        getgenv().filltrans = 0.5
        getgenv().outlinetrans = 0

        local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
        if not getgenv().ESP then
            holder:Destroy()
        else
            if holder.Name == "Folder" then
                holder.Name = "ESPHolder"
                holder.Parent = game.CoreGui
            end
            if not getgenv().uselocalplayer and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
                holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
            end
        end

        game.Players.PlayerAdded:Connect(function(player)
            if player.Team ~= nil and player.Team.Name == "MPC" then
                local chr = player.Character
                if chr ~= nil then
                    local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                    esp.Name = player.Name
                    if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                        esp.Parent = holder
                        if getgenv().filluseteamcolor then
                            esp.FillColor = player.TeamColor.Color
                        else
                            esp.FillColor = getgenv().fillcolor
                        end
                        if getgenv().outlineuseteamcolor then
                            esp.OutlineColor = player.TeamColor.Color
                        else
                            esp.OutlineColor = getgenv().outlinecolor
                        end
                        esp.FillTransparency = getgenv().filltrans
                        esp.OutlineTransparency = getgenv().outlinetrans
                        esp.Adornee = chr
                        esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    end
                end
            end
        end)

        game.Players.PlayerRemoving:Connect(function(player)
            if holder:FindFirstChild(player.Name) then
                holder:FindFirstChild(player.Name):Destroy()
            end
        end)

        while getgenv().ESP do
            task.wait()
            for _, player in pairs(game.Players:GetChildren()) do
                if player.Team ~= nil and player.Team.Name == "MPC" then
                    local chr = player.Character
                    if chr ~= nil then
                        local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                        esp.Name = player.Name
                        if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                            esp.Parent = holder
                            if getgenv().filluseteamcolor then
                                esp.FillColor = player.TeamColor.Color
                            else
                                esp.FillColor = getgenv().fillcolor
                            end
                            if getgenv().outlineuseteamcolor then
                                esp.OutlineColor = player.TeamColor.Color
                            else
                                esp.OutlineColor = getgenv().outlinecolor
                            end
                            esp.FillTransparency = getgenv().filltrans
                            esp.OutlineTransparency = getgenv().outlinetrans
                            esp.Adornee = chr
                            esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESP = true == state
    end
}


Tab:Toggle{
    Name = "TRADOC ESP",
    StartingState = false,
    Description = "It will show the location of all TRADOC members.",
    Callback = function(state)
        getgenv().ESPTRADOC = true
        getgenv().ESPTRADOC = state

        local ESPRADOC_UPDATE_INTERVAL = 2

        local function updateESPRADOC()
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                if player.Team and player.Team.Name == "TRADOC" then
                    local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPRADOC")
                    if not existingBillboardGui then
                        local billboardGui = Instance.new("BillboardGui")
                        billboardGui.Name = "ESPRADOC"
                        billboardGui.Size = UDim2.new(0, 100, 0, 100)
                        billboardGui.AlwaysOnTop = true
                        billboardGui.LightInfluence = 0
                        billboardGui.MaxDistance = math.huge
                        billboardGui.Parent = player.Character or player.CharacterAdded:Wait()

                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Parent = billboardGui
                        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
                        nameLabel.Position = UDim2.new(0, 0, 0, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                        nameLabel.TextColor3 = Color3.new(1, 1, 1)
                        nameLabel.FontSize = Enum.FontSize.Size18
                        nameLabel.Font = Enum.Font.SourceSansBold
                    else
                        existingBillboardGui.Enabled = true
                        existingBillboardGui.NameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                    end
                end
            end
        end

        if getgenv().ESPTRADOC == true then
            while true do
                if getgenv().ESPTRADOC then
                    updateESPRADOC()
                end
                wait(ESPRADOC_UPDATE_INTERVAL)
            end
        else
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPRADOC")
                if existingBillboardGui then
                    existingBillboardGui.Enabled = false
                end
            end
        end

        local holder = game.CoreGui:FindFirstChild("ESPRADOCHolder") or Instance.new("Folder")
        if ESPRADOC == false then
            holder:Destroy()
        end

        if holder.Name == "Folder" then
            holder.Name = "ESPRADOCHolder"
            holder.Parent = game.CoreGui
        end

        if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
            holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
        end

        if getgenv().ESPTRADOC == true then
            getgenv().ESPTRADOC = false
            getgenv().ESPTRADOC = true
        end

        while getgenv().ESPTRADOC do
            task.wait()
            for _, v in pairs(game.Players:GetChildren()) do
                if v.Team ~= nil and v.Team.Name == "TRADOC" then
                    local chr = v.Character
                    if chr ~= nil then
                        local ESPRADOC = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
                        ESPRADOC.Name = v.Name
                        if uselocalplayer == false and ESPRADOC.Name == game.Players.LocalPlayer.Name then
                        else
                            ESPRADOC.Parent = holder
                            if filluseteamcolor then
                                ESPRADOC.FillColor = v.TeamColor.Color
                            else
                                ESPRADOC.FillColor = fillcolor
                            end
                            if outlineuseteamcolor then
                                ESPRADOC.OutlineColor = v.TeamColor.Color
                            else
                                ESPRADOC.OutlineColor = outlinecolor
                            end
                            ESPRADOC.FillTransparency = filltrans
                            ESPRADOC.OutlineTransparency = outlinetrans
                            ESPRADOC.Adornee = chr
                            ESPRADOC.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESPTRADOC = true == state
    end
}

Tab:Toggle{
    Name = "TRADOC HIGHLIGHT ESP",
    StartingState = false,
    Description = "Highlights all TRADOC members. Note: This does not work at far distance.",
    Callback = function(state)
        getgenv().ESP = true
        getgenv().ESP = state
        getgenv().uselocalplayer = false
        getgenv().filluseteamcolor = true
        getgenv().outlineuseteamcolor = false
        getgenv().fillcolor = Color3.new(0, 0, 0)
        getgenv().outlinecolor = Color3.new(1, 1, 1)
        getgenv().filltrans = 0.5
        getgenv().outlinetrans = 0

        local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
        if not getgenv().ESP then
            holder:Destroy()
        else
            if holder.Name == "Folder" then
                holder.Name = "ESPHolder"
                holder.Parent = game.CoreGui
            end
            if not getgenv().uselocalplayer and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
                holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
            end
        end

        game.Players.PlayerAdded:Connect(function(player)
            if player.Team ~= nil and player.Team.Name == "TRADOC" then
                local chr = player.Character
                if chr ~= nil then
                    local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                    esp.Name = player.Name
                    if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                        esp.Parent = holder
                        if getgenv().filluseteamcolor then
                            esp.FillColor = player.TeamColor.Color
                        else
                            esp.FillColor = getgenv().fillcolor
                        end
                        if getgenv().outlineuseteamcolor then
                            esp.OutlineColor = player.TeamColor.Color
                        else
                            esp.OutlineColor = getgenv().outlinecolor
                        end
                        esp.FillTransparency = getgenv().filltrans
                        esp.OutlineTransparency = getgenv().outlinetrans
                        esp.Adornee = chr
                        esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    end
                end
            end
        end)

        game.Players.PlayerRemoving:Connect(function(player)
            if holder:FindFirstChild(player.Name) then
                holder:FindFirstChild(player.Name):Destroy()
            end
        end)

        while getgenv().ESP do
            task.wait()
            for _, player in pairs(game.Players:GetChildren()) do
                if player.Team ~= nil and player.Team.Name == "TRADOC" then
                    local chr = player.Character
                    if chr ~= nil then
                        local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                        esp.Name = player.Name
                        if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                            esp.Parent = holder
                            if getgenv().filluseteamcolor then
                                esp.FillColor = player.TeamColor.Color
                            else
                                esp.FillColor = getgenv().fillcolor
                            end
                            if getgenv().outlineuseteamcolor then
                                esp.OutlineColor = player.TeamColor.Color
                            else
                                esp.OutlineColor = getgenv().outlinecolor
                            end
                            esp.FillTransparency = getgenv().filltrans
                            esp.OutlineTransparency = getgenv().outlinetrans
                            esp.Adornee = chr
                            esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESP = true == state
    end
}

Tab:Toggle{
    Name = "MIC ESP",
    StartingState = false,
    Description = "It will show the location of all MIC members.",
    Callback = function(state)
        getgenv().ESPMIC = true
        getgenv().ESPMIC = state

        local ESPMIC_UPDATE_INTERVAL = 2

        local function updateESPMIC()
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                if player.Team and player.Team.Name == "MIC" then
                    local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPMIC")
                    if not existingBillboardGui then
                        local billboardGui = Instance.new("BillboardGui")
                        billboardGui.Name = "ESPMIC"
                        billboardGui.Size = UDim2.new(0, 100, 0, 100)
                        billboardGui.AlwaysOnTop = true
                        billboardGui.LightInfluence = 0
                        billboardGui.MaxDistance = math.huge
                        billboardGui.Parent = player.Character or player.CharacterAdded:Wait()

                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Parent = billboardGui
                        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
                        nameLabel.Position = UDim2.new(0, 0, 0, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                        nameLabel.TextColor3 = Color3.new(1, 1, 1)
                        nameLabel.FontSize = Enum.FontSize.Size18
                        nameLabel.Font = Enum.Font.SourceSansBold
                    else
                        existingBillboardGui.Enabled = true
                        existingBillboardGui.NameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                    end
                end
            end
        end

        if getgenv().ESPMIC == true then
            while true do
                if getgenv().ESPMIC then
                    updateESPMIC()
                end
                wait(ESPMIC_UPDATE_INTERVAL)
            end
        else
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPMIC")
                if existingBillboardGui then
                    existingBillboardGui.Enabled = false
                end
            end
        end

        local holder = game.CoreGui:FindFirstChild("ESPMICHolder") or Instance.new("Folder")
        if ESPMIC == false then
            holder:Destroy()
        end

        if holder.Name == "Folder" then
            holder.Name = "ESPMICHolder"
            holder.Parent = game.CoreGui
        end

        if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
            holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
        end

        if getgenv().ESPMIC == true then
            getgenv().ESPMIC = false
            getgenv().ESPMIC = true
        end

        while getgenv().ESPMIC do
            task.wait()
            for _, v in pairs(game.Players:GetChildren()) do
                if v.Team ~= nil and v.Team.Name == "MIC" then
                    local chr = v.Character
                    if chr ~= nil then
                        local ESPMIC = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
                        ESPMIC.Name = v.Name
                        if uselocalplayer == false and ESPMIC.Name == game.Players.LocalPlayer.Name then
                        else
                            ESPMIC.Parent = holder
                            if filluseteamcolor then
                                ESPMIC.FillColor = v.TeamColor.Color
                            else
                                ESPMIC.FillColor = fillcolor
                            end
                            if outlineuseteamcolor then
                                ESPMIC.OutlineColor = v.TeamColor.Color
                            else
                                ESPMIC.OutlineColor = outlinecolor
                            end
                            ESPMIC.FillTransparency = filltrans
                            ESPMIC.OutlineTransparency = outlinetrans
                            ESPMIC.Adornee = chr
                            ESPMIC.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESPMIC = true == state
    end
}

Tab:Toggle{
    Name = "MIC HIGHLIGHT ESP",
    StartingState = false,
    Description = "Highlights all MIC members. Note: This does not work at far distance.",
    Callback = function(state)
        getgenv().ESP = true
        getgenv().ESP = state
        getgenv().uselocalplayer = false
        getgenv().filluseteamcolor = true
        getgenv().outlineuseteamcolor = false
        getgenv().fillcolor = Color3.new(0, 0, 0)
        getgenv().outlinecolor = Color3.new(1, 1, 1)
        getgenv().filltrans = 0.5
        getgenv().outlinetrans = 0

        local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
        if not getgenv().ESP then
            holder:Destroy()
        else
            if holder.Name == "Folder" then
                holder.Name = "ESPHolder"
                holder.Parent = game.CoreGui
            end
            if not getgenv().uselocalplayer and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
                holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
            end
        end

        game.Players.PlayerAdded:Connect(function(player)
            if player.Team ~= nil and player.Team.Name == "MIC" then
                local chr = player.Character
                if chr ~= nil then
                    local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                    esp.Name = player.Name
                    if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                        esp.Parent = holder
                        if getgenv().filluseteamcolor then
                            esp.FillColor = player.TeamColor.Color
                        else
                            esp.FillColor = getgenv().fillcolor
                        end
                        if getgenv().outlineuseteamcolor then
                            esp.OutlineColor = player.TeamColor.Color
                        else
                            esp.OutlineColor = getgenv().outlinecolor
                        end
                        esp.FillTransparency = getgenv().filltrans
                        esp.OutlineTransparency = getgenv().outlinetrans
                        esp.Adornee = chr
                        esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    end
                end
            end
        end)

        game.Players.PlayerRemoving:Connect(function(player)
            if holder:FindFirstChild(player.Name) then
                holder:FindFirstChild(player.Name):Destroy()
            end
        end)

        while getgenv().ESP do
            task.wait()
            for _, player in pairs(game.Players:GetChildren()) do
                if player.Team ~= nil and player.Team.Name == "MIC" then
                    local chr = player.Character
                    if chr ~= nil then
                        local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                        esp.Name = player.Name
                        if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                            esp.Parent = holder
                            if getgenv().filluseteamcolor then
                                esp.FillColor = player.TeamColor.Color
                            else
                                esp.FillColor = getgenv().fillcolor
                            end
                            if getgenv().outlineuseteamcolor then
                                esp.OutlineColor = player.TeamColor.Color
                            else
                                esp.OutlineColor = getgenv().outlinecolor
                            end
                            esp.FillTransparency = getgenv().filltrans
                            esp.OutlineTransparency = getgenv().outlinetrans
                            esp.Adornee = chr
                            esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESP = true == state
    end
}


Tab:Toggle{
    Name = "Raiders ESP",
    StartingState = false,
    Description = "It will show the location of all Raider members.",
    Callback = function(state)
        getgenv().ESPRaiders = true
        getgenv().ESPRaiders = state

        local ESPRaiders_UPDATE_INTERVAL = 2

        local function updateESPRaiders()
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                if player.Team and player.Team.Name == "Raiders" then
                    local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPRaider")
                    if not existingBillboardGui then
                        local billboardGui = Instance.new("BillboardGui")
                        billboardGui.Name = "ESPRaider"
                        billboardGui.Size = UDim2.new(0, 100, 0, 100)
                        billboardGui.AlwaysOnTop = true
                        billboardGui.LightInfluence = 0
                        billboardGui.MaxDistance = math.huge
                        billboardGui.Parent = player.Character or player.CharacterAdded:Wait()

                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Parent = billboardGui
                        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
                        nameLabel.Position = UDim2.new(0, 0, 0, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                        nameLabel.TextColor3 = Color3.new(1, 1, 1)
                        nameLabel.FontSize = Enum.FontSize.Size18
                        nameLabel.Font = Enum.Font.SourceSansBold
                    else
                        existingBillboardGui.Enabled = true
                        existingBillboardGui.NameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                    end
                end
            end
        end

        if getgenv().ESPRaiders == true then
            while true do
                if getgenv().ESPRaiders then
                    updateESPRaiders()
                end
                wait(ESPRaiders_UPDATE_INTERVAL)
            end
        else
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPRaider")
                if existingBillboardGui then
                    existingBillboardGui.Enabled = false
                end
            end
        end

        local holder = game.CoreGui:FindFirstChild("ESPRaiderHolder") or Instance.new("Folder")
        if ESPRaiders == false then
            holder:Destroy()
        end

        if holder.Name == "Folder" then
            holder.Name = "ESPRaiderHolder"
            holder.Parent = game.CoreGui
        end

        if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
            holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
        end

        if getgenv().ESPRaiders == true then
            getgenv().ESPRaiders = false
            getgenv().ESPRaiders = true
        end

        while getgenv().ESPRaiders do
            task.wait()
            for _, v in pairs(game.Players:GetChildren()) do
                if v.Team ~= nil and v.Team.Name == "Raiders" then
                    local chr = v.Character
                    if chr ~= nil then
                        local ESPRaider = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
                        ESPRaider.Name = v.Name
                        if uselocalplayer == false and ESPRaider.Name == game.Players.LocalPlayer.Name then
                        else
                            ESPRaider.Parent = holder
                            if filluseteamcolor then
                                ESPRaider.FillColor = v.TeamColor.Color
                            else
                                ESPRaider.FillColor = fillcolor
                            end
                            if outlineuseteamcolor then
                                ESPRaider.OutlineColor = v.TeamColor.Color
                            else
                                ESPRaider.OutlineColor = outlinecolor
                            end
                            ESPRaider.FillTransparency = filltrans
                            ESPRaider.OutlineTransparency = outlinetrans
                            ESPRaider.Adornee = chr
                            ESPRaider.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESPRaiders = true == state
    end
}

Tab:Toggle{
    Name = "Raiders HIGHLIGHT ESP",
    StartingState = false,
    Description = "Highlights all Raider members. Note: This does not work at far distance.",
    Callback = function(state)
        getgenv().ESP = true
        getgenv().ESP = state
        getgenv().uselocalplayer = false
        getgenv().filluseteamcolor = true
        getgenv().outlineuseteamcolor = false
        getgenv().fillcolor = Color3.new(0, 0, 0)
        getgenv().outlinecolor = Color3.new(1, 1, 1)
        getgenv().filltrans = 0.5
        getgenv().outlinetrans = 0

        local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
        if not getgenv().ESP then
            holder:Destroy()
        else
            if holder.Name == "Folder" then
                holder.Name = "ESPHolder"
                holder.Parent = game.CoreGui
            end
            if not getgenv().uselocalplayer and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
                holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
            end
        end

        game.Players.PlayerAdded:Connect(function(player)
            if player.Team ~= nil and player.Team.Name == "Raiders" then
                local chr = player.Character
                if chr ~= nil then
                    local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                    esp.Name = player.Name
                    if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                        esp.Parent = holder
                        if getgenv().filluseteamcolor then
                            esp.FillColor = player.TeamColor.Color
                        else
                            esp.FillColor = getgenv().fillcolor
                        end
                        if getgenv().outlineuseteamcolor then
                            esp.OutlineColor = player.TeamColor.Color
                        else
                            esp.OutlineColor = getgenv().outlinecolor
                        end
                        esp.FillTransparency = getgenv().filltrans
                        esp.OutlineTransparency = getgenv().outlinetrans
                        esp.Adornee = chr
                        esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    end
                end
            end
        end)

        game.Players.PlayerRemoving:Connect(function(player)
            if holder:FindFirstChild(player.Name) then
                holder:FindFirstChild(player.Name):Destroy()
            end
        end)

        while getgenv().ESP do
            task.wait()
            for _, player in pairs(game.Players:GetChildren()) do
                if player.Team ~= nil and player.Team.Name == "Raiders" then
                    local chr = player.Character
                    if chr ~= nil then
                        local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                        esp.Name = player.Name
                        if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                            esp.Parent = holder
                            if getgenv().filluseteamcolor then
                                esp.FillColor = player.TeamColor.Color
                            else
                                esp.FillColor = getgenv().fillcolor
                            end
                            if getgenv().outlineuseteamcolor then
                                esp.OutlineColor = player.TeamColor.Color
                            else
                                esp.OutlineColor = getgenv().outlinecolor
                            end
                            esp.FillTransparency = getgenv().filltrans
                            esp.OutlineTransparency = getgenv().outlinetrans
                            esp.Adornee = chr
                            esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESP = true == state
    end
}


Tab:Toggle{
    Name = "Civilians ESP",
    StartingState = false,
    Description = "It will show the location of all Civilian members.",
    Callback = function(state)
        getgenv().ESPCivilians = true
        getgenv().ESPCivilians = state

        local ESPCivilian_UPDATE_INTERVAL = 2

        local function updateESPCivilian()
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                if player.Team and player.Team.Name == "Civilians" then
                    local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPCivilian")
                    if not existingBillboardGui then
                        local billboardGui = Instance.new("BillboardGui")
                        billboardGui.Name = "ESPCivilian"
                        billboardGui.Size = UDim2.new(0, 100, 0, 100)
                        billboardGui.AlwaysOnTop = true
                        billboardGui.LightInfluence = 0
                        billboardGui.MaxDistance = math.huge
                        billboardGui.Parent = player.Character or player.CharacterAdded:Wait()

                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Parent = billboardGui
                        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
                        nameLabel.Position = UDim2.new(0, 0, 0, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                        nameLabel.TextColor3 = Color3.new(1, 1, 1)
                        nameLabel.FontSize = Enum.FontSize.Size18
                        nameLabel.Font = Enum.Font.SourceSansBold
                    else
                        existingBillboardGui.Enabled = true
                        existingBillboardGui.NameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                    end
                end
            end
        end

        if getgenv().ESPCivilians == true then
            while true do
                if getgenv().ESPCivilians then
                    updateESPCivilian()
                end
                wait(ESPCivilian_UPDATE_INTERVAL)
            end
        else
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPCivilian")
                if existingBillboardGui then
                    existingBillboardGui.Enabled = false
                end
            end
        end

        local holder = game.CoreGui:FindFirstChild("ESPCivilianHolder") or Instance.new("Folder")
        if ESPCivilian == false then
            holder:Destroy()
        end

        if holder.Name == "Folder" then
            holder.Name = "ESPCivilianHolder"
            holder.Parent = game.CoreGui
        end

        if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
            holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
        end

        if getgenv().ESPCivilian == true then
            getgenv().ESPCivilian = false
            getgenv().ESPCivilian = true
        end

        while getgenv().ESPCivilian do
            task.wait()
            for _, v in pairs(game.Players:GetChildren()) do
                if v.Team ~= nil and v.Team.Name == "Civilians" then
                    local chr = v.Character
                    if chr ~= nil then
                        local ESPCivilian = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
                        ESPCivilian.Name = v.Name
                        if uselocalplayer == false and ESPCivilian.Name == game.Players.LocalPlayer.Name then
                        else
                            ESPCivilian.Parent = holder
                            if filluseteamcolor then
                                ESPCivilian.FillColor = v.TeamColor.Color
                            else
                                ESPCivilian.FillColor = fillcolor
                            end
                            if outlineuseteamcolor then
                                ESPCivilian.OutlineColor = v.TeamColor.Color
                            else
                                ESPCivilian.OutlineColor = outlinecolor
                            end
                            ESPCivilian.FillTransparency = filltrans
                            ESPCivilian.OutlineTransparency = outlinetrans
                            ESPCivilian.Adornee = chr
                            ESPCivilian.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESPCivilian = true == state
    end
}

Tab:Toggle{
    Name = "Civilians HIGHLIGHT ESP",
    StartingState = false,
    Description = "Highlights all Civilian members. Note: This does not work at far distance.",
    Callback = function(state)
        getgenv().ESP = true
        getgenv().ESP = state
        getgenv().uselocalplayer = false
        getgenv().filluseteamcolor = true
        getgenv().outlineuseteamcolor = false
        getgenv().fillcolor = Color3.new(0, 0, 0)
        getgenv().outlinecolor = Color3.new(1, 1, 1)
        getgenv().filltrans = 0.5
        getgenv().outlinetrans = 0

        local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
        if not getgenv().ESP then
            holder:Destroy()
        else
            if holder.Name == "Folder" then
                holder.Name = "ESPHolder"
                holder.Parent = game.CoreGui
            end
            if not getgenv().uselocalplayer and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
                holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
            end
        end

        game.Players.PlayerAdded:Connect(function(player)
            if player.Team ~= nil and player.Team.Name == "Civilians" then
                local chr = player.Character
                if chr ~= nil then
                    local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                    esp.Name = player.Name
                    if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                        esp.Parent = holder
                        if getgenv().filluseteamcolor then
                            esp.FillColor = player.TeamColor.Color
                        else
                            esp.FillColor = getgenv().fillcolor
                        end
                        if getgenv().outlineuseteamcolor then
                            esp.OutlineColor = player.TeamColor.Color
                        else
                            esp.OutlineColor = getgenv().outlinecolor
                        end
                        esp.FillTransparency = getgenv().filltrans
                        esp.OutlineTransparency = getgenv().outlinetrans
                        esp.Adornee = chr
                        esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    end
                end
            end
        end)

        game.Players.PlayerRemoving:Connect(function(player)
            if holder:FindFirstChild(player.Name) then
                holder:FindFirstChild(player.Name):Destroy()
            end
        end)

        while getgenv().ESP do
            task.wait()
            for _, player in pairs(game.Players:GetChildren()) do
                if player.Team ~= nil and player.Team.Name == "Civilians" then
                    local chr = player.Character
                    if chr ~= nil then
                        local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                        esp.Name = player.Name
                        if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                            esp.Parent = holder
                            if getgenv().filluseteamcolor then
                                esp.FillColor = player.TeamColor.Color
                            else
                                esp.FillColor = getgenv().fillcolor
                            end
                            if getgenv().outlineuseteamcolor then
                                esp.OutlineColor = player.TeamColor.Color
                            else
                                esp.OutlineColor = getgenv().outlinecolor
                            end
                            esp.FillTransparency = getgenv().filltrans
                            esp.OutlineTransparency = getgenv().outlinetrans
                            esp.Adornee = chr
                            esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESP = true == state
    end
}



Tab:Toggle{
    Name = "BCT ESP",
    StartingState = false,
    Description = "It will show the location of all BCT members.",
    Callback = function(state)
        getgenv().ESPBCT = true
        getgenv().ESPBCT = state

        local ESPBCT_UPDATE_INTERVAL = 2

        local function updateESPBCT()
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                if player.Team and player.Team.Name == "BCT" then
                    local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPBCT")
                    if not existingBillboardGui then
                        local billboardGui = Instance.new("BillboardGui")
                        billboardGui.Name = "ESPBCT"
                        billboardGui.Size = UDim2.new(0, 100, 0, 100)
                        billboardGui.AlwaysOnTop = true
                        billboardGui.LightInfluence = 0
                        billboardGui.MaxDistance = math.huge
                        billboardGui.Parent = player.Character or player.CharacterAdded:Wait()

                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Parent = billboardGui
                        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
                        nameLabel.Position = UDim2.new(0, 0, 0, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                        nameLabel.TextColor3 = Color3.new(1, 1, 1)
                        nameLabel.FontSize = Enum.FontSize.Size18
                        nameLabel.Font = Enum.Font.SourceSansBold
                    else
                        existingBillboardGui.Enabled = true
                        existingBillboardGui.NameLabel.Text = player.Name .. " (" .. tostring(math.floor((player.Character and player.Character:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude or 0) + 0.5)) .. " studs)"
                    end
                end
            end
        end

        if getgenv().ESPBCT == true then
            while true do
                if getgenv().ESPBCT then
                    updateESPBCT()
                end
                wait(ESPBCT_UPDATE_INTERVAL)
            end
        else
            for _, player in pairs(game:GetService("Players"):GetChildren()) do
                local existingBillboardGui = player.Character and player.Character:FindFirstChild("ESPBCT")
                if existingBillboardGui then
                    existingBillboardGui.Enabled = false
                end
            end
        end

        local holder = game.CoreGui:FindFirstChild("ESPBCTHolder") or Instance.new("Folder")
        if ESPBCT == false then
            holder:Destroy()
        end

        if holder.Name == "Folder" then
            holder.Name = "ESPBCTHolder"
            holder.Parent = game.CoreGui
        end

        if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
            holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
        end

        if getgenv().ESPBCT == true then
            getgenv().ESPBCT = false
            getgenv().ESPBCT = true
        end

        while getgenv().ESPBCT do
            task.wait()
            for _, v in pairs(game.Players:GetChildren()) do
                if v.Team ~= nil and v.Team.Name == "BCT" then
                    local chr = v.Character
                    if chr ~= nil then
                        local ESPBCT = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
                        ESPBCT.Name = v.Name
                        if uselocalplayer == false and ESPBCT.Name == game.Players.LocalPlayer.Name then
                        else
                            ESPBCT.Parent = holder
                            if filluseteamcolor then
                                ESPBCT.FillColor = v.TeamColor.Color
                            else
                                ESPBCT.FillColor = fillcolor
                            end
                            if outlineuseteamcolor then
                                ESPBCT.OutlineColor = v.TeamColor.Color
                            else
                                ESPBCT.OutlineColor = outlinecolor
                            end
                            ESPBCT.FillTransparency = filltrans
                            ESPBCT.OutlineTransparency = outlinetrans
                            ESPBCT.Adornee = chr
                            ESPBCT.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESPBCT = true == state
    end
}

Tab:Toggle{
    Name = "BCT HIGHLIGHT ESP",
    StartingState = false,
    Description = "Highlights all BCT members. Note: This does not work at far distance.",
    Callback = function(state)
        getgenv().ESP = true
        getgenv().ESP = state
        getgenv().uselocalplayer = false
        getgenv().filluseteamcolor = true
        getgenv().outlineuseteamcolor = false
        getgenv().fillcolor = Color3.new(0, 0, 0)
        getgenv().outlinecolor = Color3.new(1, 1, 1)
        getgenv().filltrans = 0.5
        getgenv().outlinetrans = 0

        local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
        if not getgenv().ESP then
            holder:Destroy()
        else
            if holder.Name == "Folder" then
                holder.Name = "ESPHolder"
                holder.Parent = game.CoreGui
            end
            if not getgenv().uselocalplayer and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
                holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
            end
        end

        game.Players.PlayerAdded:Connect(function(player)
            if player.Team ~= nil and player.Team.Name == "BCT" then
                local chr = player.Character
                if chr ~= nil then
                    local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                    esp.Name = player.Name
                    if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                        esp.Parent = holder
                        if getgenv().filluseteamcolor then
                            esp.FillColor = player.TeamColor.Color
                        else
                            esp.FillColor = getgenv().fillcolor
                        end
                        if getgenv().outlineuseteamcolor then
                            esp.OutlineColor = player.TeamColor.Color
                        else
                            esp.OutlineColor = getgenv().outlinecolor
                        end
                        esp.FillTransparency = getgenv().filltrans
                        esp.OutlineTransparency = getgenv().outlinetrans
                        esp.Adornee = chr
                        esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    end
                end
            end
        end)

        game.Players.PlayerRemoving:Connect(function(player)
            if holder:FindFirstChild(player.Name) then
                holder:FindFirstChild(player.Name):Destroy()
            end
        end)

        while getgenv().ESP do
            task.wait()
            for _, player in pairs(game.Players:GetChildren()) do
                if player.Team ~= nil and player.Team.Name == "BCT" then
                    local chr = player.Character
                    if chr ~= nil then
                        local esp = holder:FindFirstChild(player.Name) or Instance.new("Highlight")
                        esp.Name = player.Name
                        if not getgenv().uselocalplayer or esp.Name ~= game.Players.LocalPlayer.Name then
                            esp.Parent = holder
                            if getgenv().filluseteamcolor then
                                esp.FillColor = player.TeamColor.Color
                            else
                                esp.FillColor = getgenv().fillcolor
                            end
                            if getgenv().outlineuseteamcolor then
                                esp.OutlineColor = player.TeamColor.Color
                            else
                                esp.OutlineColor = getgenv().outlinecolor
                            end
                            esp.FillTransparency = getgenv().filltrans
                            esp.OutlineTransparency = getgenv().outlinetrans
                            esp.Adornee = chr
                            esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
        getgenv().ESP = true == state
    end
}



local Tab = GUI:Tab{
	Name = "Trolling",
	Icon = "rbxassetid://14161931343",
}

Tab:Button{
	Name = "Take Damage",
	Description = "If at full health you can click the *Take damage* 6 times without dying.",
	Callback = function() 
	    local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Damaging...",
	Duration = 8,
	Callback = function() end
}
local args = {
    [1] = 0.2
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.SkydivingService.RF.FallDamage:InvokeServer(unpack(args))
end}

Tab:Button{
	Name = "Icon Mobile",
	Description = "This is FE, everyone can see your icon on your name as Mobile.",
	Callback = function() 
	    local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "You are now Mobile.",
	Duration = 8,
	Callback = function() end
}

local args = {
    [1] = "Mobile"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.PlayerHandler.RF.SetPlatform:InvokeServer(unpack(args))

end}

Tab:Button{
	Name = "Icon Desktop/PC",
	Description = "This is FE, everyone can see your icon on your name as Desktop/PC.",
	Callback = function() 
	    local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "You are now Desktop/PC.",
	Duration = 8,
	Callback = function() end
}

local args = {
    [1] = "PC"
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.PlayerHandler.RF.SetPlatform:InvokeServer(unpack(args))

end}

Tab:Button{
	Name = "Normal outfit",
	Description = nil,
	Callback = function() 
	    local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Changing...",
	Duration = 8,
	Callback = function() end
}

local args = {
    [1] = {
        ["Headgear"] = "C982750C-74A9-4730-8AB2-8181EF24FD64",
        ["Accessory"] = "377F6631-CD34-4970-AC7A-99A7DED948B0",
        ["Shirt"] = "426584EE-4444-4487-97A9-4858AAE5C236",
        ["Pants"] = "8BFFA37F-D026-4A04-A422-DCD5367A1C31",
    }
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.ApplyData:InvokeServer(unpack(args))
end}

Tab:Button{
	Name = "Chef",
	Description = nil,
	Callback = function() 
	    local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Changing...",
	Duration = 8,
	Callback = function() end
}

local args = {
    [1] = {
        ["Headgear"] = "2C3FDC19-B38F-44AB-AA57-CD0235543107",
        ["Accessory"] = "377F6631-CD34-4970-AC7A-99A7DED948B0",
        ["Shirt"] = "A4691125-2102-4F8A-BBF2-1C409EC0D4B7",
        ["Pants"] = "8784806C-838D-4DE4-9730-405B7833B0D0",
        ["Body Gear"] = false
    }
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.ApplyData:InvokeServer(unpack(args))

end}

Tab:Button{
	Name = "Hot day out",
	Description = nil,
	Callback = function() 
	    local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Changing...",
	Duration = 8,
	Callback = function() end
}



local args = {
    [1] = {
        ["Headgear"] = "A7E98E4D-2355-47A0-9C41-7B85B563883F",
        ["Accessory"] = "516CFA51-746E-4983-8C52-5822F0134DE5",
        ["Shirt"] = "CE964BCE-321D-43B3-867F-FE21B296BBF4",
        ["Pants"] = "86EAD503-8C7D-4370-9F83-73B8E9B61811",
        ["Body Gear"] = "16E6DAC8-2721-4504-90E6-FEC891BF3A7D"
    }
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.ApplyData:InvokeServer(unpack(args))


end}

Tab:Button{
	Name = "BCT outfit",
	Description = nil,
	Callback = function() 
	    local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Changing...",
	Duration = 8,
	Callback = function() end
}



local args = {
    [1] = {
        ["Headgear"] = "C982750C-74A9-4730-8AB2-8181EF24FD64",
        ["Accessory"] = false,
        ["Shirt"] = "45259522-246A-4ED6-8426-641080A1E9C6",
        ["Pants"] = "8BFFA37F-D026-4A04-A422-DCD5367A1C31",
        ["Body Gear"] = "Apply"
    }
}

game:GetService("ReplicatedStorage").Packages.Knit.Services.CharacterService.RF.ApplyData:InvokeServer(unpack(args))

end}

local Tab = GUI:Tab{
	Name = "Script hub",
	Icon = "rbxassetid://14161946892"
}

Tab:Button{
	Name = "Infinite Yield",
	Description = "Credits: Edge, Moon, Zwolf, Toon.",
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Loading...",
	Duration = 2,
	Callback = function() end 
                
            }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",true))()
end}

Tab:Button{
	Name = "CMD-X",
	Description = "Credits: pigeon#8951, fini#7057, Curvn#2002.",
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Loading...",
	Duration = 2,
	Callback = function() end 
                
            }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end}

Tab:Button{
	Name = "Fates-Admin",
	Description = "Credits: fate#5647, Iaying#6564, misrepresenting#4917, Shawn#2000, dsf#2711.",
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Loading...",
	Duration = 2,
	Callback = function() end 
                
            }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end}

Tab:Button{
	Name = "Owl-Hub",
	Description = "Credits: Google Chrome and CriShoux.",
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Loading...",
	Duration = 2,
	Callback = function() end 
                
            }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end}


local Tab = GUI:Tab{
	Name = "Other fetures",
	Icon = "rbxassetid://14161623694"
}


	Tab:_theme_selector()


Tab:credit{Name = "Support Server", Description = "Click the Discord button to copy the discord server to get support.", Discord = "http://discord.gg/wUbAAhypTH", V3rmillion = "http://discord.gg/wUbAAhypTH"}

Tab:Button{
	Name = "Serverhop",
	Description = "Join's a diffrent server.",
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Serverhoping...",
	Duration = 2,
	Callback = function() end 
                
            }
    local m = {} for _, v in ipairs(game:GetService("\72\116\116\112\83\101\114\118\105\99\101"):JSONDecode(game:HttpGetAsync("\104\116\116\112\115\58\47\47\103\97\109\101\115\46\114\111\98\108\111\120\46\99\111\109\47\118\49\47\103\97\109\101\115\47" .. game.PlaceId .. "\47\115\101\114\118\101\114\115\47\80\117\98\108\105\99\63\115\111\114\116\79\114\100\101\114\61\65\115\99\38\108\105\109\105\116\61\49\48\48")).data) do if type(v) == "\116\97\98\108\101" and v.maxPlayers > v.playing and v.id ~= game.JobId then m[#m + 1] = v.id end end if #m > 0 then game:GetService("\84\101\108\101\112\111\114\116\83\101\114\118\105\99\101"):TeleportToPlaceInstance(game.PlaceId, m[math.random(1, #m)]) else return notify("\83\101\114\118\101\114\104\111\112","\67\111\117\108\100\110\39\116\32\102\105\110\100\32\97\32\115\101\114\118\101\114\46") end
end}

Tab:Button{
	Name = "Rejoin",
	Description = "It will rejoin the game in the current server you are in.",
	Callback = function() local CoreGui = game:GetService("StarterGui")

            GUI:Notification{
	Title = "Alert",
	Text = "Rejoing...",
	Duration = 2,
	Callback = function() end 
                
            }
    local m = game:GetService("\84\101\108\101\112\111\114\116\83\101\114\118\105\99\101") local n = game:GetService("\80\108\97\121\101\114\115").LocalPlayer m:Teleport(game.PlaceId, n)
end}

if _G == "2J7rttPAgtYqC0PZi1kRCf9BUFj2en6uNRZQc0ywCAZq0WqNH4V5AbWY0wjk75tWJ3yH9DiMkGy7Aibb3Reo6M6cGUzoxdGo5nKE" or _G == "im4e2x9LQDUXFV20UmNen4r9dhuppo55aGUyYjHsdjkTZ9nag2qrcihKojePGGDXVZmDBmKyvbd9ybCHQJgEc403J6zRMjzFa35p" then
local Tab = GUI:Tab{
	Name = "Admin stuff",
	Icon = "rbxassetid://6031075938"
}

local username = ""

-- Function to find the player with a matching partial username
local function findPlayerByUsername(partialUsername)
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name:lower():find(partialUsername:lower()) then
            return player
        end
    end
    return nil
end

Tab:Textbox{
    Name = "Kill Personnel Username",
    Callback = function(text)
        username = text -- Update the 'username' variable with the entered text
    end
}

Tab:Button{
    Name = "Kill Personnel Button",
    Description = "This works only on non-team members and BCT (TRADOC exempt).",
    Callback = function()
        if username ~= "" then
            local targetPlayer = findPlayerByUsername(username)
            if targetPlayer then
                local args = {
                    [1] = targetPlayer.Character.Head,
                    [2] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Main,
                    [3] = targetPlayer.Character.Head.Position, 
                    [4] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.FireSound,
                    [5] = Vector3.new(0, 0, -1)
                }
                game:GetService("ReplicatedStorage").Stratarches.RepRayEvent:FireServer(unpack(args))
            else
                GUI:Notification{
                    Title = "Alert",
                    Text = "Player with the provided username not found.",
                    Duration = 3,
                    Callback = function() end
                }
            end
        else
            GUI:Notification{
                Title = "Alert",
                Text = "Please enter a valid username in the text box.",
                Duration = 3,
                Callback = function() end
            }
        end
    end
}

end

GUI:Notification{
    Title = "Alert",
    Text = "Script fully loaded!",
    Duration = 3,
    Callback = function() end
}
end