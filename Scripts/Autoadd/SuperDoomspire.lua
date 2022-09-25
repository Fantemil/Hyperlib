--if game.CoreGui:FindFirstChild("FinityUI") then game.CoreGui.FinityUI:Destroy() end
local function getfunc(...)
    return loadstring([[
        local oldfunc = "oldfunc_placeholder"
        local newfunc = "newfunc_placeholder"
        return newfunc(oldfunc, ...)
    ]])
end

local function nhook(funcH, funcN)
    local func = getfunc()
    local oldfunc = hookfunction(funcH, func)
    for i,v in next, debug.getconstants(func) do
        if v == "oldfunc_placeholder" then
            debug.setconstant(func, i, oldfunc)
        elseif v == "newfunc_placeholder" then
            debug.setconstant(func, i, funcN)
        end
    end
    return oldfunc
end

local function GetFirstFunctionFromGC(name, short_src)
    for _,v in next, getgc() do
        local info = typeof(v) == "function" and debug.getinfo(v)
        if info and info.name == name and (not short_src and true or info.short_src == short_src) then
            return v
        end
    end
end

local src = game:HttpGet("https://gist.githubusercontent.com/yafyz/425c2cbcd0ce95cc8cdc70c42e3a922c/raw/9495476ef1ffc25bf9e0ce8afacd5c5812571ffc/finity_lib.lua")--("http://finity.vip/scripts/finity_lib.lua")
src = src:gsub("self2.container = self:Create","syn.protect_gui(self2.userinterface); self2.container = self:Create")
local FW = loadstring(src)().new(true)

do -- Main scope
    do -- Tool mods
        local TM = FW:Category("Tool mods")
        do -- Rocket mods
            local S = TM:Sector("Rocket mods")
            do -- 1s rocket cooldown
                local old_func
                local switch_state
                local hook = function(self)
                    if switch_state then
                        self.lastFire = self.lastFire - (self.RELOAD_TIME > 2 and self.RELOAD_TIME - 1 or self.RELOAD_TIME - 0.25)--self.lastFire - (self.RELOAD_TIME - 1)
                    end
                    return old_func(self)
                end
                S:Cheat("Checkbox", "Faster rocket cooldown", function(s)
                    if not old_func then
                        old_func = hookfunc(GetFirstFunctionFromGC("Reload"), hook)
                    end
                    switch_state = s
                end)
            end
            do -- Insta max charge on fire
                local rl = require(game.StarterPlayer.StarterPlayerScripts.ToolBehaviors["Rocket Launcher"]) -- for anyone wondering why i dont just require the module anywhere else and instead use GC, its cause in the other modules the function gets duplicated for some reason
                local old_func
                local switch_state
                local hook = function(self, charged)
                    if switch_state and self.maxCharge then
                        self.startFire = 0
                        charged = true
                    end
                    return old_func(self, charged)
                end
                S:Cheat("Checkbox","Max charge on fire (for charging launchers)", function(state)
                    if not old_func then
                        old_func = hookfunc(rl.fire, hook)
                    end
                    switch_state = state
                end)
            end
            do -- Rocket speed
                local msg = require(game:GetService("ReplicatedStorage").Shared.Utils.Messages)
                local sendServerHooked = false
                local sendHooked = false
                local vars = {switch_state_speed = false, speed = 5000, switch_state_damage = false, damage = 500} -- not true now -- Upvalue limit of 1, need to keep variables inside a table which is gonna be the only upvalue
                local hook_sendServer = function(oldfunc, self, action, ...) -- not true now -- cant hook the client version of this function due to it having no upvalues
                    if (vars.switch_state_speed or vars.switch_state_damage) and action == "CreateProjectileOnServer" and typeof(({...})[#{...}]) == "table" and ({...})[#{...}].speed then
                        local args = {...}
                        if vars.switch_state_speed then
                            args[#args].speed = vars.speed
                        end
                        if vars.switch_state_damage and args[#args].damage then
                            args[#args].damage = vars.damage
                        end
                        return oldfunc(self, action, unpack(args))
                    end
                    return oldfunc(self, action, ...)
                end
                local hook_send = function (oldfunc, self, action, ...)
                    if vars.switch_state_speed and action == "CreateProjectile" then
                        local args = {...}
                        args[#args].speed = vars.speed
                    end
                    return oldfunc(self, action, ...)
                end
                S:Cheat("Checkbox", "Rocket speed", function(state)
                    if not sendServerHooked then
                        nhook(msg.sendServer, hook_sendServer)
                    end
                    if not sendHooked then
                        nhook(msg.send, hook_send)
                    end
                    vars.switch_state_speed = state
                end)
                S:Cheat("Slider", "Speed", function(n)
                    vars.speed = n
                end, {min = 0, max = 10000})
                S:Cheat("Checkbox", "Rocket damage (Arm cannon only)", function(state)
                    if not sendServerHooked then
                        nhook(msg.sendServer, hook_sendServer)
                    end
                    vars.switch_state_damage = state
                end)
                S:Cheat("Slider", "Damage", function(n)
                    vars.damage = n
                end, {min = 0, max = 1000})
            end
        end
        do -- Throwable mods
            local S = TM:Sector("Ball mods")
            local onReleaseIsHooked
            local canThrowIsHooked
            local charge_switch_state = false
            local cooldown_switch_state = false
            local canThrowHook = function (oldfunc, self) -- no cooldown
                if cooldown_switch_state then
                    return true
                end
                return oldfunc(self)
            end
            local onReleaseHook = function(oldfunc, self) -- instant charge
                if charge_switch_state then
                    self.startFire = 0
                end
                return oldfunc(self)
            end
            S:Cheat("Checkbox", "No cooldown", function(state)
                if not canThrowIsHooked then
                    nhook(GetFirstFunctionFromGC("canThrow", "StarterPlayer.StarterPlayerScripts.ToolBehaviors.Ball"), canThrowHook)
                    canThrowIsHooked = true
                end
                cooldown_switch_state = state
            end)
            S:Cheat("Checkbox", "Instant charge", function(state)
                if not onReleaseIsHooked then
                    nhook(GetFirstFunctionFromGC("onRelease", "StarterPlayer.StarterPlayerScripts.ToolBehaviors.Ball"), onReleaseHook)
                    onReleaseIsHooked = true
                end
                charge_switch_state = state
            end)
        end
        do -- Sword mods
            local S = TM:Sector("Sword mods")

            do -- No lunge cooldown
                local switch_state = false
                local old_func
                local hook = function(self)
                    if switch_state then
                        self.lastLunge = 0
                        self.lastSpin = 0
                        self.lastSwing = 0
                    end
                    old_func(self)
                    if switch_state then
                        self.lastLunge = 0
                    end
                end
                S:Cheat("Checkbox", "No lunge cooldown", function(state)
                    if not old_func then
                        old_func = hookfunc(GetFirstFunctionFromGC("lunge"), hook)
                    end
                    switch_state = state
                end)
            end
            do -- No strike cooldown
                local switch_state = false
                local old_func
                local hook = function(self)
                    if switch_state then
                        self.lastLunge = 0
                        self.lastSpin = 0
                        self.lastSwing = 0
                    end
                    old_func(self)
                    if switch_state then
                        self.lastLunge = 0
                    end
                end
                S:Cheat("Checkbox", "No strike cooldown", function(state)
                    if not old_func then
                        old_func = hookfunc(GetFirstFunctionFromGC("strike"), hook)
                    end
                    switch_state = state
                end)
            end
        end
    end
end


do -- Credits scope
    local TM = FW:Category("Credits")
    do
        local S = TM:Sector("Script")
        S:Cheat("Label","Made by fyz#7690")
        S:Cheat("Button","Copy V3rmillion thread link", function() syn_clipboard_set("https://v3rmillion.net/showthread.php?tid=1087324") end)
    end
    do
        local S = TM:Sector("Finity UI Library")
        S:Cheat("Label","Made by detourious")
        S:Cheat("Button","Copy V3rmillion thread link", function() syn_clipboard_set("https://v3rmillion.net/showthread.php?tid=922755") end)
    end
end