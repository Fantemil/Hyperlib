--[[

 ââââââââââââââââââââââââââââââââ       âââââââââââââââââââââââââ       ââââââââââââââââââââââââââ ââââââââââââ       
âââââââ      ââââââââââââââââââââ      âââââââââââââââââââââââââââ      ââââââââââââââââââââââââââââââââââââââââ      
âââââââ      ââââââââââââââââââââ      âââââââââââââââââââââââââââ      âââââââââââââââââââââââââââââââââ             
 ââââââââââââââââââââââââââââââââ      âââââââââââââââââââââââââââ      âââââââââââââââââââââââââââââââââ             
       ââââââââââââââââââââââââââ      âââââââââââââââââââââââââââ      âââââââââââââââââââââââââââââââââ             
       ââââââââââââââââââââââââââ      âââââââââââââââââââââââââââ      ââââââââââââââââââââââââââââââââââââââââ      
âââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââââ        ââââââââââââââââââââââââââââââââââââââ       
                                                                                                                      
   Made for Nova API by insaladarel on discord 
   discord.gg/saladexploits or discord.gg/eB6tyr9R
]]


local suc, rec = pcall(function()
	getgenv().getscripts = function() 
		local scripts = {}
		for _, scriptt in game:GetDescendants() do
			if scriptt:isA("LocalScript") or scriptt:isA("ModuleScript") then
				table.insert(scripts, scriptt)
			end
		end
		return scripts
	end 
end) 
if not suc then warn("[ SALAD ]: getscripts failed: "..tostring(rec)) end 

local suc, rec = pcall(function()
    getgenv().getloadedmodules = function()
        local modulescripts = {}
        for _, obj in pairs(game:GetDescendants()) do
            if typeof(obj) == "Instance" and obj:IsA("ModuleScript") then table.insert(modulescripts, obj) end
        end
        return modulescripts
    end 
end) 
if not suc then warn("[ SALAD ]: getloadedmodules failed: "..tostring(rec)) end 

local suc, rec = pcall(function()
    getgenv().getrunningscripts = function()
        local runningScripts = {}
    
        for _, obj in pairs(game:GetDescendants()) do
            if typeof(obj) == "Instance" and obj:IsA("ModuleScript") then
                table.insert(runningScripts, obj)
            elseif typeof(obj) == "Instance" and obj:IsA("LocalScript") then
                if obj.Enabled == true then
                    table.insert(runningScripts, obj)
                end
            end
        end
    
        return runningScripts
    end
end)
if not suc then warn("[ SALAD ]: getrunningscripts failed: "..tostring(rec)) end 

local suc, rec = pcall(function()
    getgenv().hookfunction = function(original, hook) 
        if type(original) ~= "function" then
            error("The first arg must be a function (original func).")
        end
        if type(hook) ~= "function" then
            error("The second arg must be a function (hook).")
        end
        local hooked = function(...)
            return hook(original, ...)
        end
        local info = debug.getinfo(original)
        if info and info.name then
            getgenv()[info.name] = hooked
        else
            error("Failed to get function name")
        end
    
        return original
    end
end) 
if not suc then warn("[ SALAD ]: hookfunction failed: "..tostring(rec)) end

local suc, rec = pcall(function()
    getgenv().loadfile = function(file)
        return loadstring(readfile(file))  -- oh come on, not even that nova? 
    end 
end)
if not suc then warn("[ SALAD ]: loadfile failed: "..tostring(rec)) end 

local hiddenpropr = {}
local suc, rec = pcall(function()
    getgenv().gethiddenproperty = function(instance, property) 
        local instancepropr = hiddenpropr[instance]
        if instancepropr and instancepropr[property] then
            return instancepropr[property], true
        end
        return nil, false
    end
end)
if not suc then warn("[ SALAD ]: gethiddenproperty failed: "..tostring(rec)) end 

local suc, rec = pcall(function()
    getgenv().sethiddenproperty = function(instance, property, value)
        local instancepropr = hiddenpropr[instance]
        if not instancepropr then
            instancepropr = {}
            hiddenpropr[instance] = instancepropr
        end
        instancepropr[property] = value
        return true
    end
end) 
if not suc then warn("[ SALAD ]: sethiddenproperty failed: "..tostring(rec)) end 

local suc, rec = pcall(function()
    getgenv().WebSocket = {} -- yes this isnt exactly how it works, what do you expect me to make in lua? 
    getgenv().WebSocket.connect = function(url)
        local onmsgws = Instance.new("BindableEvent")
        local onclosews = Instance.new("BindableEvent")
        local connected = true
        local websocket = {}
        function websocket:Send(message)
            if connected then
                onmsgws:Fire(message)
            else
                error("WebSocket is closed")
            end
        end
        function websocket:Close()
            if connected then
                connected = false
                onclosews:Fire()
            else
                error("WebSocket is already closed")
            end
        end
        websocket.OnMessage = onmsgws.Event
        websocket.OnClose = onclosews.Event
    
        return websocket
    end
end) 
if not suc then warn("[ SALAD ]: websocket failed: "..tostring(rec)) end 

local suc, rec = pcall(function()
    getgenv().firesignal = function(instance: Instance, signalname: string, args: any)
        if instance and signalname then
            local signal = instance[signalname]
            if signal then
                for _, connection in ipairs(getconnections(signal)) do
                    if args then
                        connection:Fire(args)
                    else
                        connection:Fire()
                    end
                end
            end
        end
    end
end)
if not suc then warn("[ SALAD ]: firesignal failed: "..tostring(rec)) end 
local suc, rec = pcall(function()
    getgenv().firetouchinterest = function(part: Instance, touched: boolean)
        firesignal(part, touched and "Touched" or touched == false and "TouchEnded" or "Touched")
    end
end)
if not suc then warn("[ SALAD ]: firetouchinterest failed: "..tostring(rec)) end 
local suc, rec = pcall(function()
    getgenv().fireproximityprompt = function(prompt: Instance, triggered: boolean, hold: boolean)
        firesignal(prompt, hold and (triggered and "PromptButtonHoldBegan" or "PromptButtonHoldEnded") or (triggered and "Triggered" or triggered == false and "TriggerEnded" or "Triggered"))
    end
end)
if not suc then warn("[ SALAD ]: fireproximityprompt failed: "..tostring(rec)) end 
local suc, rec = pcall(function()
    getgenv().setreadonly = function(t, readonly)
        if not getmetatable(t) then
            local proxy = {}
            local mt = {
                __index = t, 
                __newindex = function(_, key, value)
                    if readonly then
                        error("Attempt to modify a readonly table", 2)
                    else
                        rawset(t, key, value) 
                    end
                end,
                __pairs = function() return pairs(t) end, 
                __ipairs = function() return ipairs(t) end,
                __len = function() return #t end
            }
            setmetatable(proxy, mt)
            return proxy 
        else
            local mt = getmetatable(t)
            mt.__newindex = function(_, key, value)
                if readonly then
                    error("Attempt to modify a readonly table", 2)
                else
                    rawset(t, key, value)
                end
            end
        end
    end
end)
if not suc then warn("[ SALAD ]: setreadonly failed: " .. tostring(rec)) end

local suc, rec = pcall(function()
    getgenv().saveinstance = function() -- https://scriptblox.com/script/Universal-Script-Universal-Syn-Saveinstance-14624
        local Params = {
            RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/", 
            SSI = "saveinstance",
        }
        local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
        local SaveOptions = {
            ReadMe = true,
            IsolatePlayers = true,
            FilePath = string.format("%d", tick())
        }
        synsaveinstance(SaveOptions)
    end
end) 
if not suc then warn("[ SALAD ]: saveinstance failed: " .. tostring(rec)) end

-- Credits @w-a-e .
local decompsrc = game:HttpGet("https://raw.githubusercontent.com/w-a-e/Advanced-Decompiler-V3/main/init.lua", true)
local function loaddecomp(decomptimeout)
    local CONSTANTS = [[
    local ENABLED_REMARKS = {
    NATIVE_REMARK = true,
    INLINE_REMARK = true
    }
    local DECOMPILER_TIMEOUT = ]] .. decomptimeout .. [[
    
    local READER_FLOAT_PRECISION = 99 
    local SHOW_INSTRUCTION_LINES = false
    local SHOW_REFERENCES = true
    local SHOW_OPERATION_NAMES = false
    local SHOW_MISC_OPERATIONS = true
    local LIST_USED_GLOBALS = true
    local RETURN_ELAPSED_TIME = false
]]
    loadstring(string.gsub(decompsrc, ";;CONSTANTS HERE;;", CONSTANTS), "Advanced-Decompiler-V3")()
end
loaddecomp(10)

getgenv().getnamecallmethod = nil -- fake func
getgenv().getcustomasset = nil -- fake func 

-- moREnc because yes: https://scriptblox.com/script/Universal-Script-moREnc-16894 im the dev so no credits lmao, also like it fr

-- the test functions are ass lol, too lazy to fix :pray:
-- this was made for Wave btw but it can be used on other exploits too

local addedfuncs = 0
local totalfuncs = 0

function check(funcName: string, func, testfunc)
    local success, err = pcall(function()
        getgenv()[funcName] = func
    end)
end

check("getdevice", function()
    return tostring(game:GetService("UserInputService"):GetPlatform()):split(".")[3]
end, function()
    assert(getgenv().getdevice() == tostring(game:GetService("UserInputService"):GetPlatform()):split(".")[3], "getdevice function test failed")
end)

check("getping", function(suffix: boolean)
    local rawping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local pingstr = rawping:sub(1, #rawping - 7)
    local pingnum = tonumber(pingstr)
    local ping = tostring(math.round(pingnum))
    return not suffix and ping or ping .. " ms"
end, function()
    local ping = getgenv().getping()
    assert(tonumber(ping) ~= nil, "getping function test failed")
end)

check("getscriptclosure", function(module)
    local env = getrenv()
    local constants = env.require(module)
    return function()
        local copy = {}
        for k, v in pairs(constants) do
            copy[k] = v
        end
        return copy
    end
end)

check("getfps", function(): number
    local RunService = game:GetService("RunService")
    local FPS: number
    local TimeFunction = RunService:IsRunning() and time or os.clock

    local LastIteration: number, Start: number
    local FrameUpdateTable = {}

    local function HeartbeatUpdate()
        LastIteration = TimeFunction()
        for Index = #FrameUpdateTable, 1, -1 do
            FrameUpdateTable[Index + 1] = FrameUpdateTable[Index] >= LastIteration - 1 and FrameUpdateTable[Index] or nil
        end

        FrameUpdateTable[1] = LastIteration
        FPS = TimeFunction() - Start >= 1 and #FrameUpdateTable or #FrameUpdateTable / (TimeFunction() - Start)
    end

    Start = TimeFunction()
    RunService.Heartbeat:Connect(HeartbeatUpdate)
    task.wait(1.1)
    return FPS
end, function()
    local fps = getgenv().getfps()
    assert(fps ~= nil and fps >= 0, "getfps function test failed")
end)

check("getaffiliateid", function()
    return "moREnc"
end, function()
    assert(getgenv().getaffiliateid() == "moREnc", "getaffiliateid function test failed")
end)

check("getplayer", function(name: string)
    return not name and getgenv().getplayers()["LocalPlayer"] or getgenv().getplayers()[name]
end)

check("getplayers", function()
    local players = {}
    for _, x in pairs(game:GetService("Players"):GetPlayers()) do
        players[x.Name] = x
    end
    players["LocalPlayer"] = game:GetService("Players").LocalPlayer
    return players
end, function()
    assert(getgenv().getplayers()["LocalPlayer"] == game:GetService("Players").LocalPlayer, "getplayers function test failed")
end)

check("getlocalplayer", function(): Player
    return getgenv().getplayer()
end, function()
    assert(getgenv().getlocalplayer() == game:GetService("Players").LocalPlayer, "getlocalplayer function test failed")
end)

check("customprint", function(text: string, properties: table, imageId: rbxasset)
    print(text)
    task.wait(0.025)
    local clientLog = game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.ClientLog
    local childrenCount = #clientLog:GetChildren()
    local msgIndex = childrenCount > 0 and childrenCount - 1 or 0
    local msg = clientLog:FindFirstChild(tostring(msgIndex))

    if msg then
        for i, x in pairs(properties) do
            msg[i] = x
        end
        if imageId then
            msg.Parent.image.Image = imageId
        end
    end
end)

check("join", function(placeID: number, jobID: string)
    game:GetService("TeleportService"):TeleportToPlaceInstance(placeID, jobID, getplayer())
end)

check("firesignal", function(instance: Instance, signalName: string, args: any)
    if instance and signalName then
        local signal = instance[signalName]
        if signal then
            for _, connection in ipairs(getconnections(signal)) do
                if args then
                    connection:Fire(args)
                else
                    connection:Fire()
                end
            end
        end
    end
end, function()
    local button = Instance.new("TextButton")
    local new = true
    button.MouseButton1Click:Connect(function() new = false end) 
    firesignal(button.MouseButton1Click)
    assert(new, "Uses old standard")
    firesignal(button, "MouseButton1Click")
end)

check("firetouchinterest", function(part: Instance, touched: boolean)
    firesignal(part, touched and "Touched" or touched == false and "TouchEnded" or "Touched")
end)

check("fireproximityprompt", function(prompt: Instance, triggered: boolean, hold: boolean)
    firesignal(prompt, hold and (triggered and "PromptButtonHoldBegan" or "PromptButtonHoldEnded") or (triggered and "Triggered" or triggered == false and "TriggerEnded" or "Triggered"))
end)

check("runanimation", function(animationId: any, player: Player)
    local plr: Player = player or getgenv().getplayer()
    local humanoid: Humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://" .. tostring(animationId)
        humanoid:LoadAnimation(animation):Play()
    end
end)

check("round", function()
    getgenv().round = math.round
end)

check("joingame", function()
    getgenv().joingame = join
end)

check("joinserver", function()
    getgenv().joinserver = join
end)

check("firetouchtransmitter", function()
    getgenv().firetouchtransmitter = firetouchinterest
end)

check("getplatform", function()
    getgenv().getplatform = getdevice
end)

check("getos", function()
    getgenv().getos = getdevice
end)

check("playanimation", function()
    getgenv().playanimation = runanimation
end)

check("setrbxclipboard", function()
    getgenv().setrbxclipboard = setclipboard
end)

print(("Salad UNC for Nova loaded | Roblox version: "..version()))
warn("[ IMPORTANT ]: Nova is an incognito paste, i do not reccomend using it as its very unstable and shit, instead go use something like celery or solara.")