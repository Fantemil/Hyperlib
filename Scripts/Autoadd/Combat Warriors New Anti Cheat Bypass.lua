for _, Connection in next, getconnections(game:GetService("ScriptContext").Error) do
    Connection:Disable()
end

for _, Connection in next, getconnections(game:GetService("LogService").MessageOut) do
    Connection:Disable()
end

for _, Value in next, getgc(true) do
    if typeof(Value) == "table" and typeof(rawget(Value, "punish")) == "function" then
        Hook = hookfunction(Value.punish, function(Self, ...)
            local Arguments     = {...}

            Arguments[2]        = "FondraOnTop / https://discord.gg/vZpc2gv679"

            return Hook(Self, table.unpack(Arguments))
        end)
    end

    if type(Value) == "table" and rawget(Value, "Remote") then
        Value.Remote.Name = Value.Name
    end
end

-- 2022/25/12