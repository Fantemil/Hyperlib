local closure = is_synapse_function or isexecutorclosure or isourclosure or iskrnlclosure

local contextactionservice = game:GetService("ContextActionService")

contextactionservice.LocalToolEquipped:Connect(function(tool)
    for _, f in pairs(debug.getregistry()) do
        if typeof(f) == "function" and not closure(f) then
            local script = rawget(getfenv(f), "script")
            if typeof(script) == "Instance" and script.Name == "GunScript" then
                local t = getsenv(script)
                t.auto = true
                t.waittime = 0.025
                t.scatter = 75
                
                t.Projectiles = 10000
                t.AimScatterMultiplyer = 1
                t.ReloadSpeed = 0.1
                t.GunRecoil = 0
                
                table.foreach(t, print)
            end
        end
    end
end)