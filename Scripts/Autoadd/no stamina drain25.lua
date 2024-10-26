local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    -- Check if the method is "FireServer" and if it's the "Running" remote
    if method == "FireServer" and tostring(self) == "Ban" then
        if args[1] == "Running" and args[2] == true then
            -- Block the remote event by returning before it fires
            return
        end
    end

    -- Call the original method if it's not the targeted remote
    return oldNamecall(self, unpack(args))
end)

setreadonly(mt, true)
