local genv = getgenv()
local renv = getrenv()

local clonefunction = genv and genv.clonefunction or function(...) return ... end
local cloneref = genv and genv.cloneref or function(...) return ... end
local hook = genv and genv.hookfunction or function(...) return ... end

local realtype = clonefunction(renv.typeof)
local rawget = clonefunction(renv.rawget)
local game = cloneref(renv.game)
local select = clonefunction(renv.select)
local IsA = clonefunction(game.IsA)

local getgc = clonefunction(genv.getgc or function() return {} end)
local getmethod = clonefunction(genv.getnamecallmethod or function() return "InvokeServer" end)

local Index = clonefunction(getrawmetatable(game).__index)

local Players = cloneref(game:GetService("Players"))
local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
local Player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
local Mailbox = ReplicatedStorage:WaitForChild("Network"):WaitForChild("Mailbox: Send", 9e9)

local Kick = clonefunction(Player.Kick)

local Client = {}

for _, v in getgc(true) do
    if realtype(v) == "table" and rawget(v, "PetCmds") and rawget(v, "BreakableCmds") then
        Client = v
    end
end

if not Client and Index(game, "PlaceId") == 8737899170 then
    Kick(Player, "Couldn't find the BIG GAMES Library!")
end

local SlaveFunc = cloneref(Instance.new("RemoteFunction"))
local Invoke = SlaveFunc.InvokeServer

local OldInvoke
OldInvoke = hook(Invoke, newcclosure(function(...)
    local Self, Args = ..., {select(2, ...)}

    if realtype(Self) == "Instance" and IsA(Self, "RemoteFunction") then
        if Self == Mailbox or Index(Self, "Name") == "Mailbox: Send" then
            return "err"
        end
    end

    return OldInvoke(...)
end))


local OldNamecall
OldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
    local Self, Args = ..., {select(2, ...)}
    local Method = getmethod()

    if realtype(Self) == "Instance" and IsA(Self, "RemoteFunction") then
        if Self == Mailbox or Index(Self, "Name") == "Mailbox: Send" and (Method == "InvokeServer" or Method == "invokeServer") then
            return "err"
        end
    end

    return OldNamecall(...)
end))