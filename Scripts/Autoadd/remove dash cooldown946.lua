local script = require(game:GetService("Players").LocalPlayer.PlayerScripts.DashClient.DashHandler).OnDash

while task.wait() do
    local upvalues = debug.getupvalues(script)
    for i, value in pairs(upvalues) do
        if type(value) == "boolean" and debug.getupvalue(script, i) == true then
            debug.setupvalue(script, i, false)
        end
    end
end