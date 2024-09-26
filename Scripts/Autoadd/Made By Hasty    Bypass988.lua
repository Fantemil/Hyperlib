
--<< Services >>--
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--<< Variables >>--
local Handshake = ReplicatedStorage.Remotes.CharacterSoundEvent
local Hooks = {}
local HandshakeInts = {}

for i, v in getgc() do
    if typeof(v) == "function" and islclosure(v) then
        if (#getprotos(v) == 1) and table.find(getconstants(getproto(v, 1)), 4000001) then
            hookfunction(v, function() end)
        end
    end
end

Hooks.__namecall = hookmetamethod(game, "__namecall", function(self, ...)
    local Method = getnamecallmethod()
    local Args = {...}

    if not checkcaller() and (self == Handshake) and (Method == "fireServer") and (string.find(Args[1], "AC")) then
        if (#HandshakeInts == 0) then
            HandshakeInts = {table.unpack(Args[2], 2, 18)}
        else
            for i, v in HandshakeInts do
                Args[2][i + 1] = v
            end
        end
    end

    return Hooks.__namecall(self, ...)
end)

warn("")