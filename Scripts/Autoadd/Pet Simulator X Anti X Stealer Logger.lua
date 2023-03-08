--[[
    Since these are tricky to find I do not vouch that it will "Prevent" every single stealer but I did on those I tested.
    Reason for this is cause I am not allowed to post obfuscated scripts so yh.
    If your game randomly shuts down || crashes || freezes check your "workspace" folder for "anti pet sim x stealer.txt".
    Additionally dm an Administrator if you got this from the #scripts-channel or a moderator | admin of the server | website you got it from.
    If you find a stealer that bypasses it feel free to dm me at sufi#1337
]]

local oldInvoke = Instance.new'RemoteFunction'.InvokeServer
local Players   = game:GetService'Players'
local function crash() return 1+1 end
local uwu = {}
uwu[1] = clonefunction(hookmetamethod)
uwu[2] = clonefunction(writefile)
uwu[3] = clonefunction(hookfunction)

local oldIndex
oldIndex = uwu[1](game, "__index", newcclosure(function(k,v)
    if v == 'InvokeServer' and checkcaller() then
        return function (self, ...)
            local args = {...}
            if #args == 2 then
                if Players:GetNameFromUserIdAsync(args[2]) ~= nil then
                    uwu[2]("anti pet sim x stealer.txt", string.format('The script you just executed is a bank stealer. If you got this from synapse x #scripts-channel please contact an administrator.\n\nUser invited to your bank: %s', tostring(Players:GetNameFromUserIdAsync(args[2]))))
                    game:Shutdown()
                    coroutine.wrap(function()
                        task.wait(0.5)
                        while true do end
                        for i = 1, math.huge do 
                            uwu[3](crash, function()
                                return 1+2
                            end)
                        end
                    end)()
                    return 'gotchu monke >.< '..tostring(math.random(1, 69))
                end
            end
            return oldInvoke(self, ...)
        end
    else
        return oldIndex(k ,v)
    end
end))