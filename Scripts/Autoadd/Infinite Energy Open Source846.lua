--Argon Hub dev Team (https://dsc.gg/argon-hub)

local remote = game:GetService("ReplicatedStorage").Remotes
local CommE = remote.CommE

local function blockDodgeCall()
    local mt = getrawmetatable(CommE)
    local oldNamecall = mt.__namecall

    setreadonly(mt, false)

    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        local args = {...}
        
        if self == CommE and method == "FireServer" and args[1] == "Dodge" then
            warn("Blocked Doge remote with args:", args[1], args[3], args[4], args[5])
            return
        end
        
        return oldNamecall(self, ...)
    end)

    setreadonly(mt, true)
end

local function blockDoubleJumpCall()
    local remote = game:GetService("ReplicatedStorage").Remotes.CommE

    local mt = getrawmetatable(remote)
    local originalNamecall = mt.__namecall

    setreadonly(mt, false)

    mt.__namecall = newcclosure(function(self, ...)
        local args = {...}
        if getnamecallmethod() == "FireServer" and args[1] == "DoubleJump" then
            warn("Blocked Jump remote call")
            return
        end
        return originalNamecall(self, ...)
    end)

    setreadonly(mt, true)
end

blockDodgeCall()
blockDoubleJumpCall()