local old = getfenv; old = hookfunction(getfenv, newcclosure(function(...)
    local args = {...}
    if args.script == nil then
        args["script"] = (function()
            for i,v in next, game:GetService("Players").LocalPlayer:GetDescendants() do
                if v:IsA("LocalScript") then
                    return v
                end
            end
        end)()
        return args
    end
    return old(...)
end))